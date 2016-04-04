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
import model.News;
import model.MaxId;
import model.callcenter;

/**
 *
 * @author Thang
 */
public class CCDataAccess {
    public void addCC(callcenter n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into call_center values(NULL,?,?,?,?,?,?)");
            
            ps.setString(1, n.getcc_name());
            ps.setString(2, n.getcc_zip());
            ps.setString(3, n.getcc_phone());
            ps.setString(4, n.getcc_address());
            ps.setInt(5, n.getactive());
            ps.setInt(6, n.getevent_id());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
   
    
    public static List<callcenter> getAllCC(){
        List<callcenter> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from call_center").executeQuery();
            while(rs.next()){
                callcenter n = new callcenter(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getInt(6),rs.getInt(7));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    
    public static List<callcenter> getCCById(int cc_id){
        List<callcenter> ls = new LinkedList<>();
        String sql = "select * from call_center where cc_id = " +cc_id;
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                callcenter n = new callcenter(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getInt(6),rs.getInt(7));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    public void editNotActive(int cc_id){
        try {
            String sql = "UPDATE call_center SET active = 0 WHERE cc_id = ?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            
            ps.setInt(1, cc_id);
            
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public static List<MaxId> getCCWorkedFor(int userId){
        List<MaxId> ls = new LinkedList<>();
        String sql = "SELECT cc_id_fk from call_center_emp where id_fk = " + userId;
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                MaxId n = new MaxId(rs.getInt(1));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    public void deleteCC(int cc_id){
        try {
            String sql = "delete from call_center where cc_id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, cc_id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
