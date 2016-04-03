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
public class Admin {
    private int AdminId;
    private int workId;
    
    public Admin(int AdminId, int WorkId) {
        this.AdminId = AdminId;
        this.workId = WorkId;
    }

    public int getAdminId() {
        return AdminId;
    }

    public void setAdminId(int AdminId) {
        this.AdminId = AdminId;
    }

    public int getworkId() {
        return workId;
    }

    public void setworkId(int WorkId) {
        this.workId = WorkId;
    }
        
    
}
