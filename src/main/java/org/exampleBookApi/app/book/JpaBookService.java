package org.exampleBookApi.app.book;

import org.exampleBookApi.app.model.Book;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class JpaBookService implements BookService {

    private final BookRepository bookRepository;

    protected JpaBookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @Override
    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    @Override
    public Book get(Long id) {
        Optional<Book> byId = bookRepository.findById(id);
        Book book = null;
        if (byId.isPresent()) {
            book = byId.get();
        }
        return book;
    }

    @Override
    public void addBook(Book book) {
        if (book.getId() == null) {
            bookRepository.save(book);
        } else {
            bookRepository.updateBook(book.getAuthor(), book.getTitle(), book.getPublisher(), book.getIsbn(),
                    book.getType(), book.getId());
        }
    }

    @Override
    public void updateBooks(Book book) {
        bookRepository.updateBook(book.getAuthor(), book.getTitle(), book.getPublisher(), book.getIsbn(),
                book.getType(), book.getId());

    }


    @Override
    public void deleteBook(long id) {
        Optional<Book> byId = bookRepository.findById(id);
        if (byId.isPresent()) {
            Book book = byId.get();
            bookRepository.delete(book);
        }
    }
}
