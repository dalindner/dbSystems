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
import model.Admin;

/**
 *
 * @author Thang
 */
public class AdminDataAccess {
    public void addNew(News n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into news values(NULL,?,?,?,?,?,?)");
            ps.setString(1, n.getTitle());
            ps.setString(2, n.getDate());
            ps.setString(3, n.getDescription());
            ps.setString(4, n.getDetail());
            ps.setString(5, n.getCategory());
            ps.setString(6, n.getImage());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addNewAdmin(Admin n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into admins values(NULL,?)");
            ps.setInt(1, n.getAdminId());
            ps.setInt(2, n.getworkId());
            ps.executeUpdate();
            
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<News> getAll(){
        List<News> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from news").executeQuery();
            while(rs.next()){
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    public static List<Admin> getAllAdmin(){
        List<Admin> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from admins").executeQuery();
            while(rs.next()){
                Admin n = new Admin(rs.getInt(1), rs.getInt(2));
                ls.add(n);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    public static List<Admin> getAdminById(int AdminId){
        List<Admin> ls = new LinkedList<>();
        String sql = "select * from admins where admin_id = " +AdminId;
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                Admin n = new Admin(rs.getInt(1),rs.getInt(2));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    
    public void editAdmin(int WorkId,int AdminId){
        try {
            String sql = "update admins SET user_id_allowed = ?" +"where admin_id = ?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            ps.setInt(1, AdminId);
            ps.setInt(2, WorkId);
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
    
    public void delete(int id){
        try {
            String sql = "delete from news where id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void deleteAdmin(int AdminId){
        try {
            String sql = "delete from admins where admin_id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, AdminId);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
