package com.andy.controller;

import com.andy.model.Account;
import com.andy.model.Airport;
import com.andy.model.Search;
import com.andy.model.SpaceType;
import com.andy.repo.AccountRepository;
import com.andy.repo.AirportRepo;
import com.andy.repo.SpaceTypeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping({"/", "/homepage"})
public class RegisterController {

    @Autowired
    AirportRepo airportRepo;

    @Autowired
    SpaceTypeRepo spaceTypeRepo;

    @Autowired
    AccountRepository accountRepository;


    @ModelAttribute("search")
    public Search newSearch() {

        return new Search();
    }


    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String registerPage(ModelMap model, @ModelAttribute("account")Account account) {


        return "registration";
    }


    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String doRegister(ModelMap model,
                             @Valid @ModelAttribute("account")Account account,
                             BindingResult result,
                             @ModelAttribute("searchterm") Search search) {


        if (result.hasErrors()) {
            return "registration";
        } else {
            accountRepository.save(account);
            return "/homepage";
        }

    }



}