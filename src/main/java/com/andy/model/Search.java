package com.andy.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
public class Search {

    @Id
    private Long id;

    Long airportid;

    Long carparkid;

    Long spaceTypeid;

    @Temporal(TemporalType.DATE)
            @NotNull (message = "Enter a Date of Entry")
    Date dateOfEntry;

    @NotNull (message = "Enter a Date of Exit")
    @Temporal(TemporalType.DATE)
    Date dateOfExit;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getAirportid() {
        return airportid;
    }

    public void setAirportid(Long airportid) {
        this.airportid = airportid;
    }

    public Long getCarparkid() {
        return carparkid;
    }

    public void setCarparkid(Long carparkid) {
        this.carparkid = carparkid;
    }

    public Long getSpaceTypeid() {
        return spaceTypeid;
    }

    public void setSpaceTypeid(Long spaceTypeid) {
        this.spaceTypeid = spaceTypeid;
    }

    public Date getDateOfEntry() {
        return dateOfEntry;
    }

    public void setDateOfEntry(Date dateOfEntry) {
        this.dateOfEntry = dateOfEntry;
    }

    public Date getDateOfExit() {
        return dateOfExit;
    }

    public void setDateOfExit(Date dateOfExit) {
        this.dateOfExit = dateOfExit;
    }
}
