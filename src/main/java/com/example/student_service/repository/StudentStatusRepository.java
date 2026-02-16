package com.example.student_service.repository;

import com.example.student_service.entity.StudentStatus;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface StudentStatusRepository extends JpaRepository<StudentStatus, Integer> {


}
