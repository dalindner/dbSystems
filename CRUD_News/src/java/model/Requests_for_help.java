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
public class Requests_for_help {
    private int requests_id;
    private int requestor_id_fk;
    private String description;

    public Requests_for_help(int requests_id, int requestor_id_fk, String description) {
        this.requests_id = requests_id;
        this.requestor_id_fk = requestor_id_fk;
        this.description = description;

    }

    public int getRequests_id() {
        return requests_id;
    }

    public int getRequestor_id_fk() {
        return requestor_id_fk;
    }

    public String getDescription() {
        return description;
    }

    public void setRequests_id(int requests_id) {
        this.requests_id = requests_id;
    }

    public void setRequestor_id_fk(int requestor_id_fk) {
        this.requestor_id_fk = requestor_id_fk;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
