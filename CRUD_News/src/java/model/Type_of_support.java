/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Douglas
 */
public class Type_of_support {
    private int supportType_id;
    private String item_category;

    public Type_of_support(int supportType_id, String item_category) {
        this.supportType_id = supportType_id;
        this.item_category = item_category;

    }

    public int getSupportType_id() {
        return supportType_id;
    }

    public void setSupportType_id(int supportType_id) {
        this.supportType_id = supportType_id;
    }

    public String getItem_category() {
        return item_category;
    }

    public void setItem_category(String item_category) {
        this.item_category = item_category;
    }
    
    
}
