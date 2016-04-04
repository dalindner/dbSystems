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
public class Disaster {
    private int disaster_id;
    private String date_created;
    private String zip;
    private int duration_days;
    private String transportation_needed;
    private String name;
    
    public Disaster(int disaster_id, int duration_days, String date_created, String transportation_needed,String zip, String name) {
        this.disaster_id = disaster_id;
        this.date_created = date_created;
        this.zip = zip;
        this.duration_days = duration_days;
        this.transportation_needed =transportation_needed;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getdisaster_id() {
        return disaster_id;
    }

    public void setdisaster_id(int disaster_id) {
        this.disaster_id = disaster_id;
    }

    public String getdate_created() {
        return date_created;
    }

    public void setdate_created(String date_created) {
        this.date_created = date_created;
    }
    public String getzip() {
        return zip;
    }

    public void setzip(String zip) {
        this.zip = zip;
    }
    public int getduration_days() {
        return duration_days;
    }

    public void setduration_days(int duration_days) {
        this.duration_days = duration_days;
    }
    public String gettransportation_needed() {
        return transportation_needed;
    }

    public void settransportation_needed(String transportation_needed) {
        this.transportation_needed = transportation_needed;
    
}
}
