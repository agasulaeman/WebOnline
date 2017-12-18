/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/welcome")
public class Welcome {
    @RequestMapping()
    public String welcome(Model model){
        model.addAttribute("msg", "Welcome, bro");
        return "welcome";
    }
    
    @RequestMapping("/drink")
    public String drink(Model model){
        model.addAttribute("msg", "Silahkan dilihat lihat dulu kaka");
        return "welcome";
    }
}
