/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int202.classicmodel.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sit.int202.classicmodel.entity.Products;

/**
 *
 * @author Khaitong Lim
 */
public class Cart implements Serializable {

    Map<String, LineItem> cartItems;

    public Cart() {
        cartItems = new HashMap();
    }

    public void add(Products product) {
        add(product, 1);
    }

    public void add(Products product, int amount) {
        LineItem line = cartItems.get(product.getProductCode());
        if (line == null) {
            line = new LineItem(product, amount);
            cartItems.put(product.getProductCode(), line);
        } else {
            line.setQuantity(amount + line.getQuantity());
        }
    }

    public void update(Map<String, Integer> updateValues) {
        for (Map.Entry<String, Integer> entry : updateValues.entrySet()) {
            LineItem line = cartItems.get(entry.getKey());
            if (line != null) {
                if (entry.getValue() <= 0) {
                    cartItems.remove(entry.getKey());
                } else {
                    line.setQuantity(entry.getValue());
                }
            }
        }
    }

    public double getNetPrice() {
        double netPrice = 0;
        for (LineItem line : getLineItems()) {
            netPrice += line.getTotalPrice();
        }
        return netPrice;
    }

    public List<LineItem> getLineItems() {
        Collection c = cartItems.values();
        return new ArrayList(c);
    }

    public int getSize() {
        return cartItems.size();
    }

    public static class LineItem {

        private Products product;
        private int quantity;

        public LineItem(Products product) {
            this(product, 1);
        }

        public LineItem(Products product, int quantity) {
            this.product = product;
            this.quantity = quantity;
        }

        public Products getProduct() {
            return product;
        }

        public void setProducts(Products product) {
            this.product = product;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
        }

        public double getTotalPrice() {
            return product.getMsrp().doubleValue() * quantity;
        }
    }
}
