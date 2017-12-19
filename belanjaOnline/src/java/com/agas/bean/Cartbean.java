/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agas.bean;

import com.agas.entity.Barang;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author user
 */
public class Cartbean {
    private Map<Integer, Barang> carts;

    public Cartbean() {
        carts = new HashMap<>();
    }

    
    /**
     * @return the carts
     */
    public Map<Integer, Barang> getCarts() {
        return carts;
    }

    /**
     * @param carts the carts to set
     */
    public void setCarts(Map<Integer, Barang> carts) {
        this.carts = carts;
    }

    public Cartbean(Map<Integer, Barang> carts) {
        this.carts=carts;
        
    }

   
   
}
