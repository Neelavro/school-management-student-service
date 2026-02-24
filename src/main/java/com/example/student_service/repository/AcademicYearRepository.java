package com.example.student_service.repository;

import com.example.student_service.entity.AcademicYear;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AcademicYearRepository extends JpaRepository<AcademicYear, Integer> {
    List<AcademicYear> findByIsActiveTrue();
}
