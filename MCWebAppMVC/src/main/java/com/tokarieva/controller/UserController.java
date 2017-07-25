package com.tokarieva.controller;

import com.tokarieva.domain.User;
import com.tokarieva.service.SecurityService;
import com.tokarieva.service.UserService;
import com.tokarieva.service.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private SecurityService securityService;
    @Autowired
    private UserValidator userValidator;

    @GetMapping("/media_main/newUser")
    public String registration(Model model){
        model.addAttribute("userForm", new User());
        return "NewUserForm";
    }

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        binder.setValidator(userValidator);
    }

    @PostMapping("/media_main/newUser")
    public String registration(@ModelAttribute("userForm") @Validated User userForm, BindingResult bindingResult){

        if (bindingResult.hasErrors()) {
            return "NewUserForm";
        }

        String password = userForm.getPassword();
        userService.save(userForm);
        securityService.autologin(userForm.getLogin(), password);
        return "redirect:/media_main";
    }

    @GetMapping("/media_coll/login")
    public String login(Model model, String error, String logout){
        if (error != null){
            model.addAttribute("error", "Your login and password is invalid");
        }

        if (logout != null){
            model.addAttribute("message", "You have been logged out succsessfully");
        }

        return "LoginForm";
    }

}
