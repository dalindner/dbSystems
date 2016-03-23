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
public class Items_of_request {
    private int item_id;
    private int SupportType_id_fk;
    private int quantity;
    private boolean completed;
    private String requestedItem;

    public Items_of_request(int item_id, int SupportType_id_fk, int quantity, boolean completed, String requestedItem) {
        this.item_id = item_id;
        this.SupportType_id_fk = SupportType_id_fk;
        this.quantity = quantity;
        this.completed = completed;
        this.requestedItem = requestedItem;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public int getSupportType_id_fk() {
        return SupportType_id_fk;
    }

    public void setSupportType_id_fk(int SupportType_id_fk) {
        this.SupportType_id_fk = SupportType_id_fk;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isCompleted() {
        return completed;
    }

    public void setCompleted(boolean completed) {
        this.completed = completed;
    }

    public String getRequestedItem() {
        return requestedItem;
    }

    public void setRequestedItem(String requestedItem) {
        this.requestedItem = requestedItem;
    }
    
    
}
