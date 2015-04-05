/*
package com.andy.controller;

import com.andy.model.Account;
import com.andy.model.BookingEntity;
import com.andy.model.CarParkEntity;
import com.andy.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


@Controller
public class AdminController {

    @Autowired
    private AccountRepository accountRepository;

    @Autowired
    AccountService accountService;

    @Autowired
    private CarParkRepository carParkRepository;

    @Autowired
    private AirportRepository airportRepository;

    @Autowired
    private BookingRepository bookingRepository;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String dashBoard(ModelMap model) {


        return "dashboard";
    }



    ////////////////////////////////////////////////////////////////////////
    ///////////////    Employees  Management   ////////////////////////////////////


    @RequestMapping(value = "/allAccount", method = RequestMethod.GET)
    public String listAccount(@ModelAttribute("account") Account account, BindingResult result, ModelMap model) {

        model.addAttribute("accountsList", accountRepository.findByRole_Id(new Long(2)));


        return "allAccount";
    }

    @RequestMapping(value = "/addAccount", method = RequestMethod.POST)
    public String addAccount(@ModelAttribute("account") Account account, BindingResult result, HttpServletRequest request) {


        if(result.hasErrors()){
            String header = request.getHeader("Referer");
            return "redirect:"+ header;
        }else{
            accountRepository.save(account);
            String header = request.getHeader("Referer");
            return "redirect:"+ header;
        }



    }

    @RequestMapping(value = "/editAccount/{id}", method = RequestMethod.GET)
    public ModelAndView editAccount(ModelAndView model, @PathVariable("id")Long id, @ModelAttribute("account") Account employee, BindingResult result) {

        employee = accountRepository.findOne(id);

        model.addObject("account", employee);
        model.setViewName("editAccount");
        return model;
    }

    @RequestMapping(value = "/editAccount/{id}", method = RequestMethod.POST)
    public String updateAccount(@PathVariable("id")Long id, @Valid @ModelAttribute("account")Account account, HttpServletRequest request) {



            accountService.updateAccount(id, account);
            String header = request.getHeader("Referer");
            return "redirect:"+ header;


    }

    @RequestMapping("/deleteEmployee/{employeeId}")
    public String deleteEmployee(@PathVariable("employeeId") Long userId, HttpServletRequest request) {

        accountRepository.delete(accountRepository.findOne(userId));

        String header = request.getHeader("Referer");
        return "redirect:"+ header;
    }



    ////////////////////////////////////////////////////////////////////////
    ///////////////    Car Park Management ////////////////////////////////////


 @RequestMapping(value = "/addCarPark", method = RequestMethod.POST)
    public String addCarPark(@ModelAttribute("carPark") CarParkEntity carPark, BindingResult result, HttpServletRequest request) {

        carParkRepository.save(carPark);

        String header = request.getHeader("Referer");
        return "redirect:"+ header;
    }

    @RequestMapping(value = "/editCarPark/{id}", method = RequestMethod.GET)
    public String editCarPark(@PathVariable("id")Long id, @ModelAttribute("carPark") CarParkEntity carPark, BindingResult result) {

        carPark = carParkRepository.findOne(id);



        return "manageCarPark";
    }


    @RequestMapping(value = "/updateCarPark", method = RequestMethod.POST)
    public String updateCarPark(@ModelAttribute("carPark") CarParkEntity carPark, BindingResult result) {

        carParkRepository.save(carPark);

        return "manageCarPark";
    }

    @RequestMapping("/deleteCarPark/{carParkId}")
    public String deleteCarPark(@PathVariable("carParkId") Long productId,HttpServletRequest request ) {

        carParkRepository.delete(carParkRepository.findOne(productId));

        String header = request.getHeader("Referer");
        return "redirect:"+ header;
    }

        @RequestMapping(value = "/allCarParks", method = RequestMethod.GET)
        public String listProducts(@ModelAttribute("carPark") CarParkEntity carPark, BindingResult result, ModelMap model) {

            model.addAttribute("carParkList", carParkRepository.findAll());

            return "manageCarPark";


    }


    ////////////////////////////////////////////////////////////////////////
    ///////////////    Booking Management ////////////////////////////////////

    @RequestMapping(value = "/allBooking", method = RequestMethod.GET)
    public String listBooking(@ModelAttribute("booking") BookingEntity booking, BindingResult result, ModelMap model) {

        model.addAttribute("bookingList", bookingRepository.findAll());

        return "manageBooking";
    }

    @RequestMapping("/deleteOrder/{orderId}")
    public String deleteOrder(@PathVariable("orderId") Long orderId, HttpServletRequest request) {

        bookingRepository.delete(bookingRepository.findOne(orderId));

        String header = request.getHeader("Referer");
        return "redirect:"+ header;
    }



    ////////////////////////////////////////////////////////////////////////
    ///////////////    Airport Management ////////////////////////////////////
}*/
