package com.andy.repo;


import com.andy.model.Carpark;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Transactional
public interface CarparkRepository extends JpaRepository<Carpark, Long>{
    List<Carpark> findByAirport_IdAndSpaceListSpaceType_SpaceTypeSpaceTypeIdAndSpaceListBooked(Long airportId, Long spaceTypeId, boolean booked);
    List<Carpark> findByAirport_Id(Long airportId);

    int countByAirport_IdAndSpaceListSpaceType_SpaceTypeSpaceTypeIdAndSpaceListBooked(Long airportId, Long spaceTypeId, boolean booked);
}
