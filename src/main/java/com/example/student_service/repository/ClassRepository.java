package com.example.student_service.repository;

import com.example.student_service.entity.Class;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ClassRepository extends JpaRepository<Class, Integer> {

    List<Class> findAllByShiftIdAndIsActiveTrue(Integer shiftId);
    // In ClassRepository - replace the old method
    List<Class> findAllByShiftIdAndIsActiveTrueOrderByOrderIndex(Integer shiftId);
}
