package com.andy.model;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "airport", schema = "", catalog = "airportparkingsystem")
public class Airport {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "airportId")
    private Long id;


    @Basic
    @Column(name = "airportName")
    private String airportName;

    @Basic
    @Column(name = "airportAddress")
    private String airportAddress;



    @OneToMany
    List<Carpark> carpark;


    public Airport() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long airportId) {
        this.id = airportId;
    }

    public String getAirportName() {
        return airportName;
    }

    public void setAirportName(String airportName) {
        this.airportName = airportName;
    }


    public String getAirportAddress() {
        return airportAddress;
    }

    public void setAirportAddress(String airportAddress) {
        this.airportAddress = airportAddress;
    }

    public List<Carpark> getCarpark() {
        return carpark;
    }

    public void setCarpark(List<Carpark> carpark) {
        this.carpark = carpark;
    }
}
