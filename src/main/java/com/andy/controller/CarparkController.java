package com.andy.controller;

import com.andy.model.Airport;
import com.andy.model.Carpark;
import com.andy.model.Space;
import com.andy.model.SpaceType;
import com.andy.repo.AirportRepo;
import com.andy.repo.CarparkRepository;
import com.andy.repo.SpaceRepository;
import com.andy.repo.SpaceTypeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/backend")
public class CarparkController {

    @Autowired
    AirportRepo airportRepo;

    @Autowired
    CarparkRepository carparkRepository;

    @Autowired
    SpaceTypeRepo spaceTypeRepo;

    @Autowired
    SpaceRepository spaceRepository;


    @RequestMapping(value = "managecarparks")
    public ModelAndView listAllCarparks(ModelAndView model,
                                        @ModelAttribute("carpark") Carpark carpark,
                                        @ModelAttribute("airport") Airport airport,
                                        BindingResult result) {

        List<Carpark> allCarparksList = carparkRepository.findAll();
        model.addObject("allCarparks", allCarparksList);

        List<SpaceType> allSpaceTypes = spaceTypeRepo.findAll();
        model.addObject("allSpaceTypes", allSpaceTypes);

        List<Airport> allAirports = airportRepo.findAll();
        model.addObject("allAirports", allAirports);


        model.setViewName("managecarparks");

        return model;
    }


    @RequestMapping(value = "managecarparks/{airportId}")
    public ModelAndView listAirportsCarparks(ModelAndView model,
                                             @PathVariable("airportId") Long airportId,
                                             @ModelAttribute("carpark") Carpark carpark,
                                             @ModelAttribute("airport") Airport airport,
                                             BindingResult result) {

        List<Carpark> allCarparksList = carparkRepository.findByAirport_Id(airportId);
        model.addObject("allCarparks", allCarparksList);

        List<SpaceType> allSpaceTypes = spaceTypeRepo.findAll();
        model.addObject("allSpaceTypes", allSpaceTypes);

        List<Airport> allAirports = airportRepo.findAll();
        model.addObject("allAirports", allAirports);

        model.setViewName("filteredcarparks");

        return model;
    }

    @RequestMapping(value = "addCarpark", method =  RequestMethod.GET)
    public String addCarparkPage(ModelAndView model){

        return "managecarparks";
    }

    @RequestMapping(value = "addCarpark", method =  RequestMethod.POST)
    public ModelAndView addCarparks(ModelAndView model,
                                    @Valid @ModelAttribute("carpark")Carpark carpark,
                                    BindingResult result, @ModelAttribute("airport") Airport airport
                                   ) {
        if (result.hasErrors()) {


            List<Carpark> allCarparksList = carparkRepository.findAll();
            model.addObject("allCarparks", allCarparksList);

            List<SpaceType> allSpaceTypes = spaceTypeRepo.findAll();
            model.addObject("allSpaceTypes", allSpaceTypes);

            List<Airport> allAirports = airportRepo.findAll();
            model.addObject("allAirports", allAirports);

            model.setViewName("redirect:managecarparks");

            return model;

        } else {

            //return "redirect:" + referrer;
            carpark.setCapacity(carpark.getDisabled()+carpark.getRegular()+carpark.getFamily());
            carparkRepository.save(carpark);

            List<SpaceType> allSpaceTypes = spaceTypeRepo.findAll();

            for(int i=0; i<carpark.getDisabled()-1; i++){
                Space space = new Space();
                space.setCarpark(carpark);
                space.setSpaceType(spaceTypeRepo.findOne(allSpaceTypes.get(2).getSpaceTypeId()));
                space.setBooked(false);
                spaceRepository.save(space);

            }

            for(int i=0; i<carpark.getFamily()-1; i++){
                Space space = new Space();
                space.setCarpark(carpark);
                space.setSpaceType(spaceTypeRepo.findOne(allSpaceTypes.get(1).getSpaceTypeId()));
                space.setBooked(false);
                spaceRepository.save(space);

            }

            for(int i=0; i<carpark.getRegular()-1; i++){
                Space space = new Space();
                space.setCarpark(carpark);
                space.setSpaceType(spaceTypeRepo.findOne(allSpaceTypes.get(0).getSpaceTypeId()));
                space.setBooked(false);
                spaceRepository.save(space);
            }

            //return "redirect:/backend/managecarparks";
            model.setViewName("managecarparks");
            return model;
        }


    }





   /* @RequestMapping(value = "addCarpark", method =  RequestMethod.POST)
    public String addCarparks(ModelAndView model,
                              @Valid @ModelAttribute("carpark")Carpark carpark, Airport airport,
                              BindingResult result, HttpServletRequest request) {
        String referrer = request.getHeader("referer");
        if (result.hasErrors()) {

            System.out.println("--------------------------");
            System.out.println("--------------------------");
            System.out.println("--------------------------");
            System.out.println("--------------------------");

            //return "redirect:" + referrer;
            return "redirect:/backend/managecarparks";
        }
        //return "redirect:" + referrer;
        carpark.setCapacity(carpark.getDisabled()+carpark.getRegular()+carpark.getFamily());
        carparkRepository.save(carpark);

        List<SpaceType> allSpaceTypes = spaceTypeRepo.findAll();

        for(int i=0; i<carpark.getDisabled()-1; i++){
            Space space = new Space();
            space.setCarpark(carpark);
            space.setSpaceType(spaceTypeRepo.findOne(allSpaceTypes.get(2).getSpaceTypeId()));
            space.setBooked(false);
            spaceRepository.save(space);

        }

        for(int i=0; i<carpark.getFamily()-1; i++){
            Space space = new Space();
            space.setCarpark(carpark);
            space.setSpaceType(spaceTypeRepo.findOne(allSpaceTypes.get(1).getSpaceTypeId()));
            space.setBooked(false);
            spaceRepository.save(space);

        }

        for(int i=0; i<carpark.getRegular()-1; i++){
            Space space = new Space();
            space.setCarpark(carpark);
            space.setSpaceType(spaceTypeRepo.findOne(allSpaceTypes.get(0).getSpaceTypeId()));
            space.setBooked(false);
            spaceRepository.save(space);
        }

        return "redirect:/backend/managecarparks";
    }*/


    @RequestMapping(value = "deletecarpark/{carparkId}", method =  RequestMethod.POST)
    public String deleteCarparks(ModelAndView model,@PathVariable("carparkId")Long carparkId, HttpServletRequest request) {
        carparkRepository.delete(carparkId);
        String referrer = request.getHeader("referer");
        return "redirect:" + referrer;
    }


}