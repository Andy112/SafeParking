package com.andy.model;

import javax.persistence.*;

/**
 * Created by Andy on 04/04/2015.
 */


@Entity
@Table(name = "space" )
public class Space {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;


    @ManyToOne
    @JoinColumn(name = "carpark_carParkId", referencedColumnName = "carParkId")
    private Carpark carpark;

    @ManyToOne
    @JoinColumn(name = "space_type_spaceTypeId", referencedColumnName = "spaceTypeId")
    private SpaceType spaceType;


    private boolean booked;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Carpark getCarpark() {
        return carpark;
    }

    public void setCarpark(Carpark carpark) {
        this.carpark = carpark;
    }


    public SpaceType getSpaceType() {
        return spaceType;
    }

    public void setSpaceType(SpaceType spaceType) {
        this.spaceType = spaceType;
    }

    public boolean isBooked() {
        return booked;
    }

    public void setBooked(boolean booked) {
        this.booked = booked;
    }
}
