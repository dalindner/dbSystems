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
public class callcenteremp {
    private int cc_id;
    private int available;
    private int cc_emp_id;
    private int id_fk;
    public callcenteremp(int cc_id,int id_fk,int available,int cc_emp_id) {
        this.cc_id = cc_id;
        this.available = available;
        this.cc_emp_id = cc_emp_id;
        this.id_fk = id_fk;
    }

    public int getcc_id() {
        return cc_id;
    }

    public void setcc_id(int cc_id) {
        this.cc_id = cc_id;
    }

    public int getavailable() {
        return available;
    }

    public void setavailable(int available) {
        this.available = available;
    }
    public int getcc_emp_id() {
        return cc_emp_id;
    }

    public void setcc_emp_id(int cc_emp_id) {
        this.cc_emp_id = cc_emp_id;
    }

    
    public int getid_fk() {
        return id_fk;
    }

    public void setid_fk(int id_fk) {
        this.id_fk = id_fk;
    }    

}
