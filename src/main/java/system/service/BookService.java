package system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import system.dao.BookDao;
import system.model.Book;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class BookService {

    @Autowired
    private BookDao bookDao;

    public void addBook(Book book){
        bookDao.addBook(book);
    }

    public void updateBook(Book book){
        bookDao.updateBook(book);
    }

    public void deleteBook(int id){
        bookDao.deleteBook(id);
    }

    public List getBooksList(){
        return bookDao.getBooksList();
    }

    public List getBooksList(boolean isReadAlready){
        List list = new ArrayList();
        for (Book book : bookDao.getBooksList()){
            if(book.isReadAlready() == isReadAlready){
                list.add(book);
            }
        }

        return list;
    }

    public List getBookList(int year){
        List list = new ArrayList();
        for(Book book : bookDao.getBooksList()){
            if (book.getPrintYear() >= year){
                list.add(book);
            }
        }
        return list;
    }

    public List getBookList(String lookFor){
        lookFor = lookFor.toLowerCase();
        List list = new ArrayList();
        for (Book book : bookDao.getBooksList()){
            if(book.getAuthor().toLowerCase().contains(lookFor) || book.getTitle().toLowerCase().contains(lookFor)
                    || book.getDescription().toLowerCase().contains(lookFor)){
                list.add(book);
            }
        }

        return list;
    }

    public Book getBook(Integer id){
        return bookDao.getBook(id);
    }

}
