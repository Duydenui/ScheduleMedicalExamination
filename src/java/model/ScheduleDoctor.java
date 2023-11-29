/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author _DELL_
 */
public class ScheduleDoctor {
    private String doctorName;
    private Date date;
    private int slot;

    public ScheduleDoctor() {
    }

    public ScheduleDoctor(String doctorName, Date date, int slot) {
        this.doctorName = doctorName;
        this.date = date;
        this.slot = slot;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }
    
}
