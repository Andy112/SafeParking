package com.andy.repo;

import com.andy.model.Airport;
import org.springframework.data.jpa.repository.JpaRepository;


public interface AirportRepo extends JpaRepository<Airport, Long> {

}
