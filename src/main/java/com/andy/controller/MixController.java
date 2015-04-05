package com.andy.controller;



import com.andy.model.Account;
import com.andy.repo.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


@Controller
public class MixController {

    @Autowired
    private AccountRepository accountRepository;


    @RequestMapping(value = "/manageairport", method = RequestMethod.GET)
        public String manageAirport(ModelMap model) {

            return "manageairport";
    }


    @RequestMapping(value = "/manageBooking", method = RequestMethod.GET)
    public String manageBooking(ModelMap model) {


        return "managebooking";
    }
    @RequestMapping(value = "/adminManager", method = RequestMethod.GET)
    public String adminManager(ModelMap model) {


        return "adminmanager";

    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
        return "login";

    }


}