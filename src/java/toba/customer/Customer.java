package toba.customer;

import java.io.Serializable;

public class Customer implements Serializable {

    private String first;
    private String last;
    private String phone;
    private String address;
    private String state;
    private String city;
    private String zip;
    private String email;

    public Customer() {
        first = "";
        last = "";
        phone = "";
        address = "";
        state = "";
        city = "";
        zip = "";
        email = "";
        
    }

    public Customer(String first, String last, String phone, String address, String state, String city, String zip, String email) {
        this.first = first;
        this.last = last;
        this.phone = phone;
        this.address = address;
        this.state = state;
        this.city = city;
        this.zip = zip;
        this.email = email;
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

}
