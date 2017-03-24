package com.nitro.Controller;

import com.nitro.Entity.User;
import com.nitro.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public String getHome(){
        return "home";
    }

    @RequestMapping(value = "registrate", method = RequestMethod.GET)
    public String showRegistrationForm(){
        return "registrate";
    }

    @RequestMapping(value = "registrate", method = RequestMethod.POST)
    public String processRegistration(User user){

        userService.addUser(user);

        return "home";
    }

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public String getUsers(Model model){

        model.addAttribute("user", userService.getUsers());

        return "users";
    }

    @RequestMapping(value = "user/{id}",method = RequestMethod.GET)
    public String getUser(@PathVariable long id, Model model){

        model.addAttribute("user", userService.getUserForId(id));

        return "user";
    }
}
