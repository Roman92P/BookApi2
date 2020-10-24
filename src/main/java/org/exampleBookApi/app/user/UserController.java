package org.exampleBookApi.app.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class UserController {

    @RequestMapping("/")
    public String autorizationOfUser(){
        return "home.html";
    }

}
