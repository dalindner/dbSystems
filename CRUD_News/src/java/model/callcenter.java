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
public class callcenter {
    private int cc_id;
    private int active;
    private String cc_name;
    private String cc_zip;
    private String cc_phone;
    private String cc_address;
    private int event_id;
    public callcenter(int cc_id,String cc_name,String cc_zip, String cc_phone,String cc_address,int active,int event_id) {
        this.cc_id = cc_id;
        this.active = active;
        this.cc_name = cc_name;
        this.cc_zip = cc_zip;
        this.cc_phone = cc_phone;
        this.cc_address = cc_address;
        this.event_id =event_id;
    }

    public int getevent_id() {
        return event_id;
    }

    public void setevent_id(int event_id) {
        this.event_id = event_id;
    }
    public int getcc_id() {
        return cc_id;
    }

    public void setcc_id(int cc_id) {
        this.cc_id = cc_id;
    }

    public int getactive() {
        return active;
    }

    public void setactive(int active) {
        this.active = active;
    }
    public String getcc_name() {
        return cc_name;
    }

    public void setcc_name(String cc_name) {
        this.cc_name = cc_name;
    }
    public String getcc_zip() {
        return cc_zip;
    }

    public void setcc_zip(String cc_zip) {
        this.cc_zip = cc_zip;
    }
    public String getcc_phone() {
        return cc_phone;
    }

    public void setcc_phone(String cc_phone) {
        this.cc_phone = cc_phone;
    }    
    public String getcc_address() {
        return cc_address;
    }

    public void setcc_address(String cc_address) {
        this.cc_address = cc_address;
    }
    
}
