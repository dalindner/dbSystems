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
public class User {
    private int id;
    private String name;
    private int workId;
    private String dob;
    private String gender;
    private String address;
    private String zip;
    private String phone;
    private String phoneBackup;
    private String email;
    private String emailBackup;
    private String password;
    private int loggedIn;
    
    public User(int id, String name, int workId, String dob, String gender, String address, String zip, String phone, String phoneBackup, String email, String emailBackup, String password, int loggedIn) {
        this.id = id;
        this.name = name;
        this.workId = workId;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
        this.zip = zip;
        this.phone = phone;
        this.phoneBackup = phoneBackup;
        this.email = email;
        this.emailBackup = emailBackup;
        this.password = password;
        this.loggedIn = loggedIn;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getWorkId() {
        return workId;
    }

    public void setWorkId(int workId) {
        this.workId = workId;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhoneBackup() {
        return phoneBackup;
    }

    public void setPhoneBackup(String phoneBackup) {
        this.phoneBackup = phoneBackup;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getEmailBackup() {
        return emailBackup;
    }

    public void setEmailBackup(String emailBackup) {
        this.emailBackup = emailBackup;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public int getLoggedIn() {
        return loggedIn;
    }

    public void setLoggedIn(int loggedIn) {
        this.loggedIn = loggedIn;
    }
        
        
}
