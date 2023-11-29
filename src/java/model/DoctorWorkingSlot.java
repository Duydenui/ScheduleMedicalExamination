package model;

import java.sql.Date;

public class DoctorWorkingSlot {

    private int id;

    private int doctorId;

    private int slot;

    private Date date;

    private boolean isFree;

    public DoctorWorkingSlot(int id, int doctorId, int slot, Date date, boolean isFree) {
        this.id = id;
        this.doctorId = doctorId;
        this.slot = slot;
        this.date = date;
        this.isFree = isFree;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isIsFree() {
        return isFree;
    }

    public void setIsFree(boolean isFree) {
        this.isFree = isFree;
    }

}
