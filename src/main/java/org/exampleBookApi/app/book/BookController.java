package org.exampleBookApi.app.book;

import org.exampleBookApi.app.model.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/books")
public class BookController {

    private final JpaBookService jpaBookService;

    protected BookController(JpaBookService jpaBookService) {
        this.jpaBookService = jpaBookService;
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
        Book book = jpaBookService.get(id);
        model.addAttribute("book", book);
        return "addBookForm";
    }
    @RequestMapping("/delete/{id}")
    protected String deleteBook(@PathVariable long id){
        jpaBookService.deleteBook(id);
        return "redirect:/books";
    }


}
