package com.andy.controller;

import com.andy.model.Airport;
import com.andy.model.Search;
import com.andy.model.SpaceType;
import com.andy.repo.AirportRepo;
import com.andy.repo.SpaceTypeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping({"/", "/homepage"})
@SessionAttributes("search")
public class LoginController {

    @Autowired
    AirportRepo airportRepo;

    @Autowired
    SpaceTypeRepo spaceTypeRepo;


    @ModelAttribute("search")
    public Search newSearch() {

        return new Search();
    }


    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(ModelMap model, @ModelAttribute("searchterm") Search search) {


        return "login";
    }


    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String Logout(ModelMap model, @ModelAttribute("searchterm") Search search) {


        return "login";
    }


}