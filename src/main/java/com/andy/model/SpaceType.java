package com.andy.model;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "space_type", schema = "", catalog = "airportparkingsystem")
public class SpaceType {

    @Id
    @Column(name = "spaceTypeId")
    private Long spaceTypeId;

    @Basic
    @Column(name = "spaceDescription")
    private String spaceDescription;

    @Basic
    @Column(name = "availableSpace")
    private int availableSpace;

    @Basic
    @Column(name = "price")
    private int price;


    @OneToMany (mappedBy = "spaceType")
    private List<Space> spaces;



    public Long getSpaceTypeId() {
        return spaceTypeId;
    }

    public void setSpaceTypeId(Long spaceTypeId) {
        this.spaceTypeId = spaceTypeId;
    }


    public String getSpaceDescription() {
        return spaceDescription;
    }

    public void setSpaceDescription(String spaceDescription) {
        this.spaceDescription = spaceDescription;
    }


    public int getAvailableSpace() {
        return availableSpace;
    }

    public void setAvailableSpace(int availableSpace) {
        this.availableSpace = availableSpace;
    }


    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }


}
