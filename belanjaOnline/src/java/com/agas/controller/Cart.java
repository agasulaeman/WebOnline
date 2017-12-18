/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agas.controller;

import com.agas.entity.Barang;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author user
 */
public class Cart {
    private Map<Integer, Barang> carts;

    public Cart() {
        carts =  new HashMap<>();
    }

    public Cart(Map<Integer, Barang> carts) {
        this.carts = carts;
    }
    
    public Map<Integer, Barang> getCarts(){
        return carts;
        
    }
    public void setCarts(Map<Integer, Barang> carts){
        this.carts= carts;
    }

}
