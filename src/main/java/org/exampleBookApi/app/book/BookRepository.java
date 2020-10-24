package org.exampleBookApi.app.book;

import org.exampleBookApi.app.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface BookRepository extends JpaRepository<Book, Long> {

    @Modifying
    @Transactional
    @Query("UPDATE Book b set b.author=:author, b.title=:title, b.publisher=:publisher," +
            "b.isbn=:isbn, b.type=:type where b.id=:id")
    void updateBook(@Param("author") String author,
                    @Param("title") String title,
                    @Param("publisher") String publisher,
                    @Param("isbn") String isbn,
                    @Param("type") String type,
                    @Param("id") long id);
}
