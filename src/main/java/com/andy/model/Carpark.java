package com.andy.model;


import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;


@Entity(name = "car_park")
@Table(name = "car_park", schema = "", catalog = "airportparkingsystem")
public class Carpark {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "carParkId")
    private Long carparkId;

    @Basic
    @Column(name = "carParkName")
    @NotNull(message = "Name cannot be Empty")
    private String carparkName;

    @Basic
    @Column(name = "carParkAddress")
    @NotNull(message = "Address cannot be Empty")
    @NotEmpty(message = "Please enter Address")
    private String carparkAddress;

    @Basic
    @Column(name = "carParkTelephone")
    @NotNull(message = "Telephone cannot be Empty")
    @NotEmpty(message = "Please enter Telephone")
    private String carparkTelephone;

    @Basic
    @Column(name = "capacity")
    private int capacity;


    @Basic
    @Column
    @NotNull(message = "Family Capacity cannot be Empty")
    private int family;

    @Basic
    @Column
    @NotNull(message = "Regular Capacity cannot be Empty")
    private int regular;

    @Basic
    @Column
    @NotNull(message = "Disabled Capacity cannot be Empty")
    private int disabled;



    @OneToMany(mappedBy = "carpark", cascade = CascadeType.ALL)
    private List<Space> spaceList;

    @OneToOne
    Airport airport;

    public Long getCarparkId() {
        return carparkId;
    }

    public void setCarparkId(Long carParkId) {
        this.carparkId = carParkId;
    }


    public String getCarparkName() {
        return carparkName;
    }

    public void setCarparkName(String carParkName) {
        this.carparkName = carParkName;
    }


    public String getCarparkAddress() {
        return carparkAddress;
    }

    public void setCarparkAddress(String carParkAddress) {
        this.carparkAddress = carParkAddress;
    }


    public String getCarparkTelephone() {
        return carparkTelephone;
    }

    public void setCarparkTelephone(String carParkTelephone) {
        this.carparkTelephone = carParkTelephone;
    }


    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }


    public Airport getAirport() {
        return airport;
    }

    public void setAirport(Airport airport) {
        this.airport = airport;
    }

    public int getFamily() {
        return family;
    }

    public void setFamily(int family) {
        this.family = family;
    }

    public int getRegular() {
        return regular;
    }

    public void setRegular(int regular) {
        this.regular = regular;
    }

    public int getDisabled() {
        return disabled;
    }

    public void setDisabled(int disabled) {
        this.disabled = disabled;
    }

    public List<Space> getSpaceList() {
        return spaceList;
    }

    public void setSpaceList(List<Space> spaceList) {
        this.spaceList = spaceList;
    }
}
