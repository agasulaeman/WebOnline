/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agas.DAO;

import com.agas.entity.Customer;
import java.util.List;
import java.util.logging.Level;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author user
 */
@Repository
@Transactional
public class CustomerService {

   // EntityManager em;
  //  EntityManagerFactory emf;
    
    public CustomerService() {
    }
    
    @PersistenceUnit
    EntityManagerFactory emf;
    
    //@PersistenceContext
    
    
   private  EntityManager em;
    
    public EntityManager getEm(){
        return em;
    }
    public void setEm(EntityManager em){
        this.em=em;
    }
@Transactional
public void register (Customer cus){
    //menyimpan Employee
    this.em.persist(cus);
}
public List <Customer> findAll(){
    List<Customer> customers;
    customers= this.em.createNamedQuery("Customer.findAll").getResultList();
    return customers;
}
public Customer findById(Integer id){
    return em.find(Customer.class, id);
    
}
    public Customer findByName(String username){
        Customer user = new Customer();
        try {
            em = emf.createEntityManager();
            Query query = em.createNamedQuery("Customer.findByName");
            query.setParameter("username",username);
            user=(Customer) query.getSingleResult();
        } catch (Exception e) {
            java.util.logging.Logger.getLogger(username).log(Level.SEVERE,username, e);
        }
            return user;
    }
}
