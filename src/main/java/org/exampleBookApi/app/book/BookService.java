package org.exampleBookApi.app.book;

import org.exampleBookApi.app.model.Book;

import java.util.List;
import java.util.Optional;

public interface BookService {

    List<Book> getAllBooks();

    Optional get(Long id);

    void addBook(Book book);

    void updateBooks(Book book);

    void deleteBook(long id);

}
