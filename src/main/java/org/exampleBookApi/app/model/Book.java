package org.exampleBookApi.app.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
@AllArgsConstructor
@Setter
@Getter
@Table(name = "book")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank(message = "ISBN can not be empty")
    @Column(name = "ISBN",nullable = false, unique = true)
    private String isbn;
    @NotBlank(message = "title can not be empty")
    @Column(name = "Title",nullable = false,length = 50)
    private String title;
    @NotBlank(message = "author can not be empty ")
    @Column(name = "Author", nullable = false)
    private String author;
    @Column(name = "Publisher")
    private String publisher;
    @Column(name = "Type")
    private String type;

    public Book() {
    }
}
