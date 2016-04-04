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
import model.Disaster;

/**
 *
 * @author Thang
 */
public class DisasterDataAccess {
    public void addDisaster(Disaster n){
        
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into disasters values(NULL,?,?,?,?,?)");
            ps.setInt(1, n.getduration_days());
            ps.setString(2, n.getdate_created());
            ps.setString(3, n.gettransportation_needed());
            ps.setString(4,n.getzip());
            ps.setString(5,n.getzip());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
   
    
    public static List<Disaster> getAllDisaster(){
        List<Disaster> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from disasters").executeQuery();
            while(rs.next()){
                Disaster n = new Disaster(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    

    
    public void deleteDisaster(int disaster_id){
        try {
            String sql = "delete from disasters where disaster_id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, disaster_id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
