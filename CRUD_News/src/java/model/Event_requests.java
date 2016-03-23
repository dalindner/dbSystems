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
public class Event_requests {
    private int event_emp_id;
    private int request_id_fk;
    private int request_id_creator_fk;
    private int event_id_fk;

    public Event_requests(int event_id_fk, int request_id_fk, int request_id_creator_fk, int event_emp_id) {
        this.event_emp_id = event_emp_id;
        this.request_id_fk = request_id_fk;
        this.request_id_creator_fk = request_id_creator_fk;
        this.event_id_fk = event_id_fk;
    }

    public int getEvent_emp_id() {
        return event_emp_id;
    }

    public void setEvent_emp_id(int event_emp_id) {
        this.event_emp_id = event_emp_id;
    }

    public int getRequest_id_fk() {
        return request_id_fk;
    }

    public void setRequest_id_fk(int request_id_fk) {
        this.request_id_fk = request_id_fk;
    }

    public int getRequest_id_creator_fk() {
        return request_id_creator_fk;
    }

    public void setRequest_id_creator_fk(int request_id_creator_fk) {
        this.request_id_creator_fk = request_id_creator_fk;
    }

    public int getEvent_id_fk() {
        return event_id_fk;
    }

    public void setEvent_id_fk(int event_id_fk) {
        this.event_id_fk = event_id_fk;
    }
    
    
}
