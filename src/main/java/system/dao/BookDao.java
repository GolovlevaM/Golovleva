package system.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import system.model.Book;

import java.util.List;

@Repository
public class BookDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addBook(Book book){
        sessionFactory.getCurrentSession().saveOrUpdate(book);
    }

    public Book updateBook(Book book){
        sessionFactory.getCurrentSession().update(book);
        return book;
    }

    public Book getBook(int id){
        return sessionFactory.getCurrentSession().get(Book.class, new Integer(id));
    }

    public void deleteBook(int id){
        Session session = sessionFactory.getCurrentSession();
        Book book = session.get(Book.class, new Integer(id));
        if(book != null){
            session.delete(book);
        }
    }

    @SuppressWarnings("unchecked")
    public List<Book> getBooksList(){

        List<Book> list = sessionFactory.getCurrentSession().createQuery("From Book").list();

        return list;
    }
}
