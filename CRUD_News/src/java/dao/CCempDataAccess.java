/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import db.DBUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.callcenteremp;

/**
 *
 * @author Thang
 */
public class CCempDataAccess {

    public void addCC(callcenteremp n) {

        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into call_center_emp values(?,?,?,NULL)");
            
            ps.setInt(1, n.getcc_id());
            ps.setInt(2, n.getid_fk());
            ps.setInt(3, n.getavailable());
            ps.executeUpdate();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static List<callcenteremp> getAllCCemp() {
        List<callcenteremp> ls = new LinkedList<>();

        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from call_center_emp").executeQuery();
            while (rs.next()) {
                callcenteremp n = new callcenteremp(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ls;
    }

    public static List<callcenteremp> getCCempById(int cc_emp_id) {
        List<callcenteremp> ls = new LinkedList<>();
        String sql = "select * from call_center_emp where cc_emp_id = " + cc_emp_id;
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while (rs.next()) {
                callcenteremp n = new callcenteremp(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ls;
    }

    public void deleteCCemp(int cc_emp_id) {
        try {
            String sql = "delete from call_center_emp where cc_emp_id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, cc_emp_id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void editCCemp(int cc_id,int id_fk,int cc_emp_id,int available){
        try {
            String sql = "update call_center_emp SET cc_id_fk = ?, id_fk = ?, available = ? WHERE cc_emp_id=?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            ps.setInt(4, cc_emp_id);
            ps.setInt(1, cc_id);
            ps.setInt(2, id_fk);
            ps.setInt(3, available);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
