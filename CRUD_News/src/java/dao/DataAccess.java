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
import model.User;
import model.Event_requests;
import model.Items_of_request;
import model.Requested_items_link;
import model.Requests_for_help;
import model.Type_of_support;
import model.IndexTrack;
import model.View;

/**
 *
 * @author Thang
 */
public class DataAccess {
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
    
    public void addNewUser(User n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into user values(NULL,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, n.getName());
            ps.setInt(2, n.getWorkId());
            ps.setString(3, n.getDob());
            ps.setString(4, n.getGender());
            ps.setString(5, n.getAddress());
            ps.setString(6, n.getZip());
            ps.setString(7, n.getPhone());
            ps.setString(8, n.getPhoneBackup());
            ps.setString(9, n.getEmail());
            ps.setString(10, n.getEmailBackup());
            ps.setString(11, n.getPassword());
            ps.setInt(12, n.getLoggedIn());
            ps.executeUpdate();
            
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addNewEventRequest(Event_requests n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into Event_requests values(?,?,?,NULL)");
            ps.setInt(1, n.getEvent_id_fk());
            ps.setInt(2, n.getRequest_id_fk());
            ps.setInt(3, n.getRequest_id_creator_fk());
            ps.executeUpdate();

            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addNewItemOfRequest(Items_of_request n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into Items_of_request values(?, NULL, ?, ?, ?)");
            ps.setInt(1, n.getSupportType_id_fk());
            ps.setInt(2, n.getQuantity());
            ps.setBoolean(3, n.isCompleted());
            ps.setString(4, n.getRequestedItem());
            ps.executeUpdate();
              
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    
    public void addNewRequestedItemsLink(Requested_items_link n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into Requested_items_link values(NULL,?,?)");
            ps.setInt(1, n.getItem_id_fk());
            ps.setInt(2, n.getRequests_id_fk());
            ps.executeUpdate();  
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addNewRequestForHelp(Requests_for_help n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into Requests_for_help values(?,NULL,?)");
            ps.setInt(1, n.getRequestor_id_fk());
            ps.setString(2, n.getDescription());

            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addNewTypeOfSupport(Type_of_support n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into type_of_support values(NULL,?)");
            ps.setString(1, n.getItem_category());
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
    
    public static List<User> getAllUser(){
        List<User> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from user").executeQuery();
            while(rs.next()){
                User n = new User(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getInt(13));
                ls.add(n);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    public static List<View> getAllView(){
        List<View> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from test6").executeQuery();
            while(rs.next()){
                View n = new View(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    public static List<IndexTrack> getIndexTrack(){
        List<IndexTrack> ls = new LinkedList<>();
        String sql = "SELECT * FROM indexTrack a where a.id = 1";
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                IndexTrack n = new IndexTrack(rs.getInt(1), rs.getInt(2), rs.getInt(3));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    
    public void editIndexTrack(int requestNum, int itemNum){
        try {
            String sql = "update indexTrack SET requestNum = ?, itemNum = ?" + " where id = 1";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            
            ps.setInt(1, requestNum);
            ps.setInt(2, itemNum);
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public static List<Type_of_support> getAllSupportTypes(){
        List<Type_of_support> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from type_of_support").executeQuery();
            while(rs.next()){
                Type_of_support n = new Type_of_support(rs.getInt(1), rs.getString(2));
                ls.add(n);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    public static List<News> getNewById(int id){
        List<News> ls = new LinkedList<>();
        String sql = "select * from news where id = " +id;
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    
    
    public void edit(int id, String title, String description, String detail, String category, String image){
        try {
            String sql = "update news SET title = ?, description = ?, detail = ?, category = ?, image = ?" + " where id = ?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            ps.setString(1, title);
            ps.setString(2, description);
            ps.setString(3, detail);
            ps.setString(4, category);
            ps.setString(5, image);
            ps.setInt(6, id);
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
    
    public void dropViews(){
        try {
            String sql = "drop view test, test1, test2, test3, test4, test5";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateViews(){
        try {
            String sql = "drop view if exists test, test1, test2, test3, test4, test5, test6";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.executeUpdate();
            
            sql = "CREATE VIEW test AS select requestedItem, SupportType_id_fk, item_id, quantity from Items_of_request a where a.completed = false";
            ps = DBUtils.getPreparedStatement(sql);
            ps.executeUpdate();
            
            sql = "CREATE VIEW test2 As select requestedItem, SupportType_id_fk, item_id_fk, quantity, requests_id_fk from test a join Requested_Items_Link b on a.item_id = b.item_id_fk";
            ps = DBUtils.getPreparedStatement(sql);
            ps.executeUpdate();
            
            sql = "CREATE VIEW test3 As select requestedItem, SupportType_id_fk, item_id_fk, quantity, requests_id_fk, requestor_id_fk, description from test2 a join Requests_for_help b on a.requests_id_fk = b.requests_id";
            ps = DBUtils.getPreparedStatement(sql);
            ps.executeUpdate();
            
            sql = "CREATE VIEW test4 As select requestedItem, SupportType_id_fk, item_id_fk, quantity, requests_id_fk, description, name, email from test3 a join user b on a.requestor_id_fk = b.id";
            ps = DBUtils.getPreparedStatement(sql);
            ps.executeUpdate();
            
            sql = "CREATE VIEW test5 As select requestedItem, item_category, item_id_fk, quantity, requests_id_fk, description, name, email from test4 a join Type_of_Support b on a.SupportType_id_fk = b.SupportType_id";
            ps = DBUtils.getPreparedStatement(sql);
            ps.executeUpdate();
            
            sql = "CREATE VIEW test6 As select event_id_fk, requestedItem, item_category, quantity, description, name, email, item_id_fk, requests_id_fk from test5 a join event_requests b on a.requests_id_fk = b.request_id_fk";
            ps = DBUtils.getPreparedStatement(sql);
            ps.executeUpdate();
            
            
            
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
