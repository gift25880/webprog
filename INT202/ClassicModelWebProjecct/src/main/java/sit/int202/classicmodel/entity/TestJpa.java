/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int202.classicmodel.entity;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Student
 */
public class TestJpa {
    //tooRLQSyM  (MYSQL password)
    //driver: C:\Program Files\NetBeans-12.0\netbeans\ide\modules\ext
    public static void main(String[] args) {
        EntityManagerFactory emf
                = Persistence.createEntityManagerFactory("sit.int202_ClassicModelWebProjecct_war_1.0-SNAPSHOTPU");
        //System.out.println(emf);
        EntityManager em = emf.createEntityManager();
        System.out.println("---------\n");
        //System.out.println(em);
//
//        Products p = em.find(Products.class, "S12_1099");
//        System.out.println(p);
//        Customers c = em.find(Customers.class, 119);
//        System.out.println(c);
//        System.out.println("\n---------");
        //testJPQuery(em);
        testJPQueryWithParameter(em);
        em.close();
        emf.close();
    }
    private static void testJPQueryWithParameter(EntityManager em) {
        String param = "Atelier graphique";
        Query q = em.createNamedQuery("Customers.findByCustomerName");
        q.setParameter("customerName", param);
        List<Customers> customers = q.getResultList();
        for (Customers c : customers) {
            System.out.println(c.getCustomerName()+ ": "+ c.getPhone());
            List<Orders> orders = c.getOrdersList();
            for (Orders order : orders) {
                System.out.println("  "+ order.getOrderDate() + ": "+ 
                        order.getStatus());
                for (Orderdetails od : order.getOrderdetailsList()) {
                    System.out.println("    "+ od.getOrderLineNumber()+
                            " "+ od.getProducts().getProductName()+ ", "+
                            od.getPriceEach());
                }
            }
        }
    }
   
    private static void testJPQuery(EntityManager em) {
        //Query q = em.createQuery("select o from Offices o");
        Query q = em.createNamedQuery("Offices.findAll");
        List<Offices> offices = q.getResultList();
        for (Offices office : offices) {
            System.out.println(office.getCity() + " : "+ office.getCountry());
            List<Employees> employees = office.getEmployeesList();
            for (Employees e : employees) {
                System.out.printf("    %-20s %s\n", 
                        e.getFirstName() + " "+ e.getLastName(), e.getJobTitle());
            }
            System.out.println("--------------------------");
        }
    }


}
