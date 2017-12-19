/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agas.controller;

import com.agas.DAO.ProductService;
import com.agas.bean.Cartbean;
import com.agas.entity.Barang;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */

@Controller
@RequestMapping("/carts")
public class CartController {

    @Autowired
    ProductService ps;

    Cartbean cart;
    double totalHargaCart;
    int key = 1;
    String tot;

    public CartController() {
        cart = new Cartbean();
    }

    @RequestMapping(value = "/add/{productID}")
    public String addCart(@PathVariable Integer productID, HttpSession session) {
        Barang product = ps.findById(productID);
        try {
            cart.getCarts().put(key++, product);
            int count = cart.getCarts().size();
            double total = totalHargaCart + product.getHarga();
          session.setAttribute("cart", cart);
          session.setAttribute("total", tot);
          session.setAttribute("cart", totalHargaCart);
        } catch (Exception er) {
            er.printStackTrace();
        }
        return "redirect:/product/all";
    }

    @RequestMapping("/show")
    public String showCart(Model model, HttpSession session) {
        Map<Integer, Barang> carts = cart.getCarts();
        Double total = 0.0;
        for (Map.Entry<Integer, Barang> entry : carts.entrySet()) {
            Barang value = entry.getValue();
            total = total + value.getHarga();
        }
        totalHargaCart = total;
        tot = String.format("Rp %,.2f", total);
        model.addAttribute("cartot", tot);
        return "cart";
    }

    @RequestMapping("/{productID}/{value}")
    public String removeCart(@PathVariable Integer productID, @PathVariable Integer value,
            HttpSession totalHarga, Model model) {
        try {
            Barang product = ps.findById(productID);
            if (product == null) {
                model.addAttribute("errMsg", "Please Pick Something");
                return "product";
            }
            cart.getCarts().remove(value, product);

            Map<Integer, Barang> carts = cart.getCarts();
            Double total = 0.0;
            for (Map.Entry<Integer, Barang> entry : carts.entrySet()) {
                Barang val = entry.getValue();
                total = total + val.getHarga();
            }
            int count = cart.getCarts().size();
            tot = String.format("Rp %,.2f", total);
            model.addAttribute("cartot", tot);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "cart";
    }
    
//    @RequestMapping(value = "/re/{prodID}")
//    public String removeOneQuantity(@PathVariable Integer prodID, Model model){
//        
//    }

}
