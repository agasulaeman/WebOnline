/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agas.controller;

import com.agas.DAO.CustomerService;
import com.agas.bean.LoginFormBean;
import com.agas.entity.Customer;
import javax.servlet.http.HttpSession;
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
@RequestMapping("/login")

public class LoginController {

    @Autowired
    CustomerService cs;

    @RequestMapping()
    public String goToLogin(Model model) {
        LoginFormBean loginBean = new LoginFormBean();
        model.addAttribute("loginBean", loginBean);
        return "login";
    }

    @RequestMapping(value = "/check")
    public String checkLogin(HttpSession session, @ModelAttribute("loginBean") LoginFormBean loginBean, Model model) {
        Customer customer = cs.findByName(loginBean.getUsername());
        if (customer.getName() == null) {
            model.addAttribute("errMsg", "Username Salah");
            return "login";
        }
        session.setAttribute("user", customer);

        return "Barang";

    }
}
