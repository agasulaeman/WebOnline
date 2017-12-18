/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Acer
 */
@Controller
@RequestMapping("/welcome")
public class Welcome {

 List<Produk> keranjang=new ArrayList<>();
    @RequestMapping
    public String tampilkan(Model model, HttpSession session) {
        
        model.addAttribute("Title", "Toko Sederhana");
        List<Produk> list = new ArrayList<>();
        list.add(new Produk("Playstation 3", "Rilisan Ketiga Console game dari Sony", 3500000.0, "console-ps3", 1));
        list.add(new Produk("Playstation 4", "Rilisan Keempat Console game dari Sony", 5500000.0, "console-ps4", 2));
        list.add(new Produk("Playstation 4 Pro", "Rilisan Keempat Console game dari Sony yang ditambahkan fitur baru", 7500000.0, "console-ps4pro", 3));
        list.add(new Produk("Wii", "Console game dari Nintendo", 2500000.0, "console-wii", 4));
        list.add(new Produk("Wii U", "Handled game dari Nintendo", 2500000.0, "handled-wiiu", 5));
        list.add(new Produk("XBOX 360", "Console game rilisan kedua dari Microsoft", 2500000.0, "console-xbox360", 6));
        list.add(new Produk("XBOX One", "Console game rilisan ketiga dari Microsoft", 6750000.0, "console-xboxone", 7));
        session.setAttribute("produk", list);
        session.setAttribute("keranjang", keranjang);
        return "welcome";
    }


}
