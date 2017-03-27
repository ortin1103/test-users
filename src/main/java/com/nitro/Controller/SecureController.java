package com.nitro.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class SecureController {
    @RequestMapping(method = RequestMethod.GET,value = "login")
    public String loginPage(){
        return "login";
    }

}
