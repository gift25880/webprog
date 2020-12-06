/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int202.classicmodel.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import sit.int202.classicmodel.entity.Products;
import sit.int202.classicmodel.entity.controller.ProductsJpaController;

/**
 *
 * @author Khaitong Lim
 */
public class TestCart {

    public static void main(String[] args) {
        //testUpdateCart();
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("sit.int202_ClassicModelWebProjecct_war_1.0-SNAPSHOTPU");
        Cart cart = new Cart();
        System.out.println(cart.getSize());
        ProductsJpaController pJpaCtrl = new ProductsJpaController(emf);
        Products p = pJpaCtrl.findProducts("S10_1678");
        cart.add(p);
        cart.add(p);
        p = pJpaCtrl.findProducts("S10_1949");
        cart.add(p, 5);
        p = pJpaCtrl.findProducts("S10_2016");
        cart.add(p, 13);

//        Map<String, Integer> up = new HashMap();
//        up.put("S10_1678", 20);
//        up.put("S10_2016", 0);
//        up.put("S10_1949", 19);

//        cart.update(up);

        List<Cart.LineItem> list = cart.getLineItems();
        for (Cart.LineItem lineItem : list) {
            p = lineItem.getProduct();
            System.out.println(p.getProductCode() + ", " + p.getProductName() + ", "
                    + lineItem.getQuantity() + ", " + lineItem.getTotalPrice() + " ,  " + p.getMsrp());
        }
    }

}
