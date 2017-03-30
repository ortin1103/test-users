package com.nitro.Controller;

import com.nitro.Entity.User;
import com.nitro.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value={"/", "/login"}, method = RequestMethod.GET)
    public String login(){
        return"login" ;
    }


    @RequestMapping(value="/registration", method = RequestMethod.GET)
    public String registration(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String createNewUser(User user,Model model) {
        User userExists = userService.findUserByEmail(user.getEmail());
        if (userExists != null) {
           model.addAttribute("error",
                            "There is already a user registered with the email provided");
           return "registration";

        } else {
            userService.saveUser(user);
            model.addAttribute("user", new User());
            return "registration";

        }

    }

    @RequestMapping(value="/home", method = RequestMethod.GET)
    public String home(Model model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findUserByEmail(auth.getName());
       model.addAttribute("userName", "Welcome " + user.getName() + " " + user.getLastName() + " (" + user.getEmail() + ")");
        model.addAttribute("adminMessage","Content Available Only for Users with Admin Role");
       model.addAttribute("admin/home");
        return "home";
    }


}