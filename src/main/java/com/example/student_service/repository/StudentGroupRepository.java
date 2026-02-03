package com.example.student_service.repository;

import com.example.student_service.entity.StudentGroup;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface StudentGroupRepository extends JpaRepository<StudentGroup, Integer> {

    List<StudentGroup> findAllByIsActiveTrue();

    Optional<StudentGroup> findByIdAndIsActiveTrue(Integer id);
}
