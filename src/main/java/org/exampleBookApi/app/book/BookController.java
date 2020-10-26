package org.exampleBookApi.app.book;

import org.exampleBookApi.app.exceptions.ErrorControllerAdvaice;
import org.exampleBookApi.app.model.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/books")
public class BookController {

    private final JpaBookService jpaBookService;
    private final ErrorControllerAdvaice errorControllerAdvaice;

    protected BookController(JpaBookService jpaBookService, ErrorControllerAdvaice errorControllerAdvaice) {
        this.jpaBookService = jpaBookService;
        this.errorControllerAdvaice = errorControllerAdvaice;
    }

    @RequestMapping
    protected String showAllBooks(Model model){
        List<Book> allBooks = jpaBookService.getAllBooks();
        model.addAttribute("books", allBooks);
        return "index";
    }

    @RequestMapping("/add")
    protected String addNewBookForm(Model model){
        model.addAttribute("book", new Book());
        return "addBookForm";
    }

    @PostMapping("/add")
    protected  String addNewBook(@Valid Book book, BindingResult result){
        if(result.hasErrors()){
            return "addBookForm";
        }
        jpaBookService.addBook(book);
        return "redirect:/books";
    }
    @RequestMapping("/edit/{id}")
    protected String editBookForm(@PathVariable long id, Model model){
        Book book = (Book) jpaBookService.get(id).orElseThrow(EntityNotFoundException::new);
        model.addAttribute("book", book);
        return "addBookForm";
    }
    @RequestMapping("/delete/{id}")
    protected String deleteBook(@PathVariable long id){
        jpaBookService.deleteBook(id);
        return "redirect:/books";
    }

    @GetMapping("/show/{id}")
    public String showBook(Model model, @PathVariable long id) {
        model.addAttribute("book", jpaBookService.get(id).orElseThrow(EntityNotFoundException::new));
        return "bookDetails";
    }






}
