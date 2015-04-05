package com.andy.controller;

import com.andy.model.Airport;
import com.andy.model.Search;
import com.andy.model.SpaceType;
import com.andy.repo.AirportRepo;
import com.andy.repo.SpaceTypeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping({"/", "/homepage"})
@SessionAttributes("search")
public class BookController {

    @Autowired
    AirportRepo airportRepo;

    @Autowired
    SpaceTypeRepo spaceTypeRepo;




    @RequestMapping(value = "bookthis/{spaceId}", method = RequestMethod.GET)
    public String book(ModelMap model, @PathVariable("spaceId")Long spaceId) {

        List<Airport> airportList = airportRepo.findAll();
        List<SpaceType> spaceTypeList = spaceTypeRepo.findAll();
        model.addAttribute("airportEntityList", airportList);
        model.addAttribute("spaceTypeList", spaceTypeList);

        return "homepage";
    }


}