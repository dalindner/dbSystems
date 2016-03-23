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
public class Requested_items_link {
    private int item_id;
    private int item_id_fk;
    private int requests_id_fk;

    public Requested_items_link(int item_id, int item_id_fk, int requests_id_fk) {
        this.item_id = item_id;
        this.item_id_fk = item_id_fk;
        this.requests_id_fk = requests_id_fk;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
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
