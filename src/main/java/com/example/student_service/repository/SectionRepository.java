package com.example.student_service.repository;

import com.example.student_service.entity.Section;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SectionRepository extends JpaRepository<Section, Integer> {
    List<Section> findAllByClassEntityIdAndGenderSectionId(Integer classId, Integer genderSectionId);
}
