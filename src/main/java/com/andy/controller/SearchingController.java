package com.andy.controller;

import com.andy.model.Carpark;
import com.andy.model.Search;
import com.andy.model.Space;
import com.andy.repo.AirportRepo;
import com.andy.repo.CarparkRepository;
import com.andy.repo.SpaceRepository;
import com.andy.repo.SpaceTypeRepo;
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.LocalDate;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.convert.JodaTimeConverters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class SearchingController {

    @Autowired
    AirportRepo airportRepo;

    @Autowired
    SpaceTypeRepo spaceTypeRepo;

    @Autowired
    CarparkRepository carparkRepository;

    @Autowired
    SpaceRepository spaceRepository;





    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView search(ModelAndView model,@Valid @ModelAttribute("searchterm")Search search, BindingResult result,
                         @RequestParam(value = "airportid", required = false)Long airportId,
                         @RequestParam(value="spaceTypeid", required = false)Long spaceTypeId,
                         @RequestParam(value = "dateOfEntry", required = false)String dateEntry,
                         @RequestParam(value = "dateOfExit", required = false)String dateExit, HttpSession session) throws ParseException{

        if (result.hasErrors()) {
            model.setViewName("redirect:/");
            return model;
        }else{
        search.setAirportid(airportId);

        search.setSpaceTypeid(spaceTypeId);

        //Date to String
        //http://jdewit.github.io/bootstrap-timepicker/index.html
        //http://www.eyecon.ro/bootstrap-datepicker/

        DateTimeFormatter dtf = DateTimeFormat.forPattern("dd/mm/yyyy");

        SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");

        search.setDateOfEntry(sdf.parse(dateEntry));
        search.setDateOfExit(sdf.parse(dateExit));

        DateTime dateEntryLocal = new DateTime(dtf.parseDateTime(dateEntry));



        DateTime dateExitLocal = new DateTime(dtf.parseDateTime(dateExit));


        int days = Days.daysBetween(dateEntryLocal ,  dateExitLocal).getDays();

        model.addObject("days", days);


        List<Carpark> carparkList = carparkRepository.findByAirport_IdAndSpaceListSpaceType_SpaceTypeSpaceTypeIdAndSpaceListBooked(airportId, spaceTypeId, false);
       model.addObject("carparkList", carparkList);

            int numResult = carparkRepository.countByAirport_IdAndSpaceListSpaceType_SpaceTypeSpaceTypeIdAndSpaceListBooked(airportId, spaceTypeId, false);
            model.addObject("numResult", numResult);

            model.addObject("searchAirport", airportRepo.findOne(airportId));


            session.setAttribute("search", search);


        model.setViewName("searchresult");
        return model;}

    }



}