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
public class View {
    private int event_id_fk;
    private String requestedItem;
    private String item_category;
    private int quantity;
    private String description;
    private String name;
    private String email;
    private int item_id_fk;
    private int requests_id_fk;

    public View(int event_id_fk, String requestedItem, String item_category, int quantity, String description, String name, String email, int item_id_fk, int requests_id_fk) {
        this.event_id_fk = event_id_fk;
        this.requestedItem = requestedItem;
        this.item_category = item_category;
        this.quantity = quantity;
        this.description = description;
        this.name = name;
        this.email = email;
        this.item_id_fk = item_id_fk;
        this.requests_id_fk = requests_id_fk;
    }

    public int getEvent_id_fk() {
        return event_id_fk;
    }

    public void setEvent_id_fk(int event_id_fk) {
        this.event_id_fk = event_id_fk;
    }

    public String getRequestedItem() {
        return requestedItem;
    }

    public void setRequestedItem(String requestedItem) {
        this.requestedItem = requestedItem;
    }

    public String getItem_category() {
        return item_category;
    }

    public void setItem_category(String item_category) {
        this.item_category = item_category;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getItem_id_fk() {
        return item_id_fk;
    }

    public void setItem_id_fk(int item_id_fk) {
        this.item_id_fk = item_id_fk;
    }

    public int getRequests_id_fk() {
        return requests_id_fk;
    }

    public void setRequests_id_fk(int requests_id_fk) {
        this.requests_id_fk = requests_id_fk;
    }
    
    
}
