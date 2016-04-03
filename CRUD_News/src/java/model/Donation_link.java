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
public class Donation_link {
    private int link_id;
    private int donated_id_fk;
    private int requested_id_fk;
    private String donator_email_fk;
    private String requestor_email_fk;
    
    public Donation_link(int link_id, int donated_id_fk, int requested_id_fk, String donator_email_fk, String requestor_email_fk) {
        this.link_id = link_id;
        this.donated_id_fk = donated_id_fk;
        this.requested_id_fk = requested_id_fk;
        this.donator_email_fk = donator_email_fk;
        this.requestor_email_fk = requestor_email_fk;
    }

    public int getLink_id() {
        return link_id;
    }

    public void setLink_id(int link_id) {
        this.link_id = link_id;
    }

    public int getDonated_id_fk() {
        return donated_id_fk;
    }

    public void setDonated_id_fk(int donated_id_fk) {
        this.donated_id_fk = donated_id_fk;
    }

    public int getRequested_id_fk() {
        return requested_id_fk;
    }

    public void setRequested_id_fk(int requested_id_fk) {
        this.requested_id_fk = requested_id_fk;
    }

    public String getDonator_email_fk() {
        return donator_email_fk;
    }

    public void setDonator_email_fk(String donator_email_fk) {
        this.donator_email_fk = donator_email_fk;
    }

    public String getRequestor_email_fk() {
        return requestor_email_fk;
    }

    public void setRequestor_email_fk(String requestor_email_fk) {
        this.requestor_email_fk = requestor_email_fk;
    }
    
}
