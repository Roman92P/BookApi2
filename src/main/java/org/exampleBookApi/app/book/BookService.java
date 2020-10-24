package org.exampleBookApi.app.book;

import org.exampleBookApi.app.model.Book;

import java.util.List;

public interface BookService {

    List<Book> getAllBooks();

    Book get(Long id);

    void addBook(Book book);

    void updateBooks(Book book);

    void deleteBook(long id);

}
