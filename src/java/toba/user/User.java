package toba.user;

import java.io.Serializable;

public class User implements Serializable {
    private String first;
    private String last;
    private String phone;
    private String address;
    private String state;
    private String city;
    private String zip;
    private String email;
    private String username;
    private String password;

    public User() {
        first = "";
        last = "";
        phone = "";
        address = "";
        state = "";
        city = "";
        zip = "";
        email = "";
        username = "";
        password = "";
        
    }

    public User(String first, String last, String phone, String address, String state, String city, String zip, String email, String username, String password) {
        this.first = first;
        this.last = last;
        this.phone = phone;
        this.address = address;
        this.state = state;
        this.city = city;
        this.zip = zip;
        this.email = email;
        this.username = username;
        this.password = password;
    }

    public String getFirst() {
        return first;
    }

    public String getLast() {
        return last;
    }

    public String getPhone() {
        return phone;
    }
    
    public String getAddress() {
        return address;
    }

    public String getState() {
        return state;
    }
        
    public String getCity() {
        return city;
    }

    public String getZip() {
        return zip;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setFirst(String first) {
        this.first = first;
    }

    public void setLast(String last) {
        this.last = last;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
