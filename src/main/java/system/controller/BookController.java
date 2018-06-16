package system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import system.model.Book;
import system.service.BookService;

import java.util.List;

@Controller
public class BookController {

    @Autowired
    BookService bookService;

    public BookController() {
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getBooksList(ModelAndView modelAndView,
                                     @RequestParam(required = false) Integer page,
                                     @RequestParam(required = false, name = "readingFilter") String readAlready,
                                     @RequestParam(required = false, name = "lookFor") String lookFor,
                                     @RequestParam(required = false, name = "year") String year){

        modelAndView.addObject("book", new Book());

        List<Book> list;

        if (readAlready != null && !readAlready.isEmpty()){
            list = bookService.getBooksList(getFilter(readAlready));
        }else {
            if(lookFor != null){
                list = bookService.getBookList(lookFor);
            }else {
                if(year != null){
                    try {
                        int printYear = Integer.parseInt(year);
                        list = bookService.getBookList(printYear);

                    } catch (NumberFormatException e) {
                        list = bookService.getBooksList();
                    }
                }else {
                    list = bookService.getBooksList();
                }
            }
        }

        PagedListHolder<Book> pagedListHolder = new PagedListHolder<>(list);
        pagedListHolder.setPageSize(10);
        modelAndView.addObject("pageCount", pagedListHolder.getPageCount());

        if(page == null || page < 1 || page > pagedListHolder.getPageCount()){
            page = 1;
        }

        modelAndView.addObject("page", page);

        if(page > pagedListHolder.getPageCount()){
            pagedListHolder.setPage(0);
            modelAndView.addObject("booksList", pagedListHolder.getPageList());
        } else {
            pagedListHolder.setPage(page-1);
            modelAndView.addObject("booksList", pagedListHolder.getPageList());
        }


        modelAndView.setViewName("home");
        return modelAndView;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView saveBook(@ModelAttribute Book book){
        book.setReadAlready(false);
        if(book.getId() != 0) {
            bookService.updateBook(book);
        }else {
            bookService.addBook(book);
        }
        ModelAndView modelAndView = new ModelAndView("readbook");
        modelAndView.addObject("book", book);
        return modelAndView;
    }

    @RequestMapping(value = "add", method = RequestMethod.GET)
    public ModelAndView addBook(ModelAndView modelAndView){
        Book book = new Book();
        modelAndView.addObject("book", book);
        System.out.println(book);
        modelAndView.setViewName("bookForm");
        return modelAndView;
    }

    @RequestMapping(value = "/reading", method = RequestMethod.GET)
    public ModelAndView readingBook(@RequestParam Integer id){
        Book book = bookService.getBook(id);
        if(book != null){
            book.setReadAlready(true);
            bookService.updateBook(book);
        }

        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public ModelAndView deleteBook(@RequestParam Integer id){
        bookService.deleteBook(id);

        return new ModelAndView("redirect:/");

    }

    @RequestMapping(value = "/browse", method = RequestMethod.GET)
    public ModelAndView getBook(@RequestParam Integer id){
        ModelAndView modelAndView = new ModelAndView();
        Book book = bookService.getBook(id);

        modelAndView.addObject("book", book);
        modelAndView.setViewName("readbook");

        return modelAndView;

    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView updateBook(@RequestParam Integer id){
        ModelAndView modelAndView = new ModelAndView();
        Book book = bookService.getBook(id);
        modelAndView.setViewName("bookForm");
        modelAndView.addObject("book", book);

        return modelAndView;

    }

    public boolean getFilter(String string){
        if(string.equals("read")){
            return true;
        }else {
            return false;
        }
    }
}
