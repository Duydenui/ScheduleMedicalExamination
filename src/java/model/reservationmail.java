/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author _DELL_
 */
public class reservationmail {
    private int reservation_id;
    private int service_id;
    private float price;
    private int doctor_id;
    private int slot;
    private int user_id;
    private String user_fullname;
    private String service_title;

    public reservationmail() {
    }

    public reservationmail(int reservation_id, int service_id, float price, int doctor_id, int slot, int user_id, String user_fullname, String service_title) {
        this.reservation_id = reservation_id;
        this.service_id = service_id;
        this.price = price;
        this.doctor_id = doctor_id;
        this.slot = slot;
        this.user_id = user_id;
        this.user_fullname = user_fullname;
        this.service_title = service_title;
    }



    public int getReservation_id() {
        return reservation_id;
    }

    public void setReservation_id(int reservation_id) {
        this.reservation_id = reservation_id;
    }

    public int getService_id() {
        return service_id;
    }

    public void setService_id(int service_id) {
        this.service_id = service_id;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(int doctor_id) {
        this.doctor_id = doctor_id;
    }

    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_fullname() {
        return user_fullname;
    }

    public void setUser_fullname(String user_fullname) {
        this.user_fullname = user_fullname;
    }

    public String getService_title() {
        return service_title;
    }

    public void setService_title(String service_title) {
        this.service_title = service_title;
    }
    
    
}
