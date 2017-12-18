/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agas.controller;

import com.agas.DAO.CustomerService;
import com.agas.bean.RegisterFormBean;
import com.agas.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/register")
public class RegistrationController {
    
    @Autowired
    CustomerService cs;
    
    @RequestMapping() 
    public String registerForm(Model model) {
        RegisterFormBean registerBean = new RegisterFormBean();
        //registerBean.setLastName("Smith");
        model.addAttribute("registerBean", registerBean);
        return "registration";
    }
    
    @RequestMapping(value="/save") 
    public String saveRegistration(@ModelAttribute("registerBean") RegisterFormBean registerBean, 
            Model model) {
        Customer customers = new Customer();
        customers.setName(registerBean.getNamaLengkap());
        customers.setAddress(registerBean.getAddress());
        customers.setEmail(registerBean.getEmail());
        customers.setPhone(registerBean.getPhone());
       // customers.set(registerBean.getUsername());
        //customers.set(registerBean.getPassword());
      //  cs.addCustomer(customers);
        model.addAttribute("data", registerBean);
        return "successregistration";
    }
    
}