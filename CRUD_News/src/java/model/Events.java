/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author LICH
 */
public class Events {
    private int eventId;
    private String eventName;
    private String zip;
    private int event_type_fk;
    
    public Events(int eventId, String eventName, String zip, int event_type_fk) {
        this.eventId = eventId;
        this.eventName = eventName;
        this.zip = zip;
        this.event_type_fk = event_type_fk;
    }

    public int geteventId() {
        return eventId;
    }

    public void seteventId(int eventId) {
        this.eventId = eventId;
    }

    public String geteventName() {
        return eventName;
    }

    public void seteventName(String eventName) {
        this.eventName = eventName;
    }
    public String getzip() {
        return zip;
    }

    public void setzip(String zip) {
        this.zip = zip;
    }
    public int getevent_type_fk() {
        return event_type_fk;
    }

    public void setevent_type_fk(int event_type_fk) {
        this.event_type_fk = event_type_fk;
    }
        
    
}
