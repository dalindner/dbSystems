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
import model.Events;

/**
 *
 * @author Thang
 */
public class EventDataAccess {
    public void addEvent(Events n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into events values(NULL,?,?,?)");
            ps.setString(1, n.geteventName());
            ps.setString(2, n.getzip());
            ps.setInt(3, n.getevent_type_fk());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
   
    
    public static List<Events> getAllEvent(){
        List<Events> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from events").executeQuery();
            while(rs.next()){
                Events n = new Events(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    
    public static List<Events> getEventById(int EventId){
        List<Events> ls = new LinkedList<>();
        String sql = "select * from events where event_id = " +EventId;
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                Events n = new Events(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    public void editEvent(int EventId, String EventName, String Zip, int event_type_fk){
        try {
            String sql = "update events SET event_name = ?, event_zip = ?, event_type_fk = ? WHERE event_id=?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            ps.setInt(4, EventId);
            ps.setString(1, EventName);
            ps.setString(2, Zip);
            ps.setInt(3, event_type_fk);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void editUserSession(String email, int loggedIn){
        try {
            String sql = "update user SET loggedIn = ?" + " where email = ?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            
            ps.setInt(1, loggedIn);
            ps.setString(2, email);
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void deleteEvent(int EventId){
        try {
            String sql = "delete from events where event_id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, EventId);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
