package com.andy.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "booking", schema = "", catalog = "airportparkingsystem")
public class Booking {

    @Id
    @Column(name = "bookingId")
    private Long bookingId;


    @Basic
    @Column(name = "bookingDate")
    @Temporal(TemporalType.DATE)
    private Date bookingDate;




    @Basic
    @Column(name = "flightNumber")
    private String flightNumber;

    @Basic
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "entryDateTime")
    private Date entryDateTime;

    @Basic
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "exitDateTime")
    private Date exitDateTime;

    @Basic
    @Column(name = "carRegNo")
    private String carRegNo;

    @Basic
    @Column(name = "model")
    private String model;


    @Basic
    @Column(name = "type")
    private String type;

    @Basic
    @Column(name = "paymentType")
    private String paymentType;

    @Basic
    @Column(name = "paymentBy")
    private String paymentBy;


    public Long getBookingId() {
        return bookingId;
    }

    public void setBookingId(Long bookingId) {
        this.bookingId = bookingId;
    }


    public Date getBookingDate() {
        return bookingDate;
    }


    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }

    public Date getEntryDateTime() {
        return entryDateTime;
    }

    public void setEntryDateTime(Date entryDateTime) {
        this.entryDateTime = entryDateTime;
    }

    public Date getExitDateTime() {
        return exitDateTime;
    }

    public void setExitDateTime(Date exitDateTime) {
        this.exitDateTime = exitDateTime;
    }

    public String getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(String flightNumber) {
        this.flightNumber = flightNumber;
    }


    public String getCarRegNo() {
        return carRegNo;
    }

    public void setCarRegNo(String carRegNo) {
        this.carRegNo = carRegNo;
    }


    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }


    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }


    public String getPaymentBy() {
        return paymentBy;
    }

    public void setPaymentBy(String paymentBy) {
        this.paymentBy = paymentBy;
    }




}
