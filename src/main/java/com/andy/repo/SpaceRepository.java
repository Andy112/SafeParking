package com.andy.repo;


import com.andy.model.Space;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SpaceRepository extends JpaRepository<Space, Long>{

    List<Space> findByCarpark_CarparkIdAndSpaceType_SpaceTypeIdAndBooked(Long carparkId, Long spaceTypeId, boolean booked);
}
