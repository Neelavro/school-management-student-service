package com.example.student_service.service;

import com.example.student_service.entity.Section;
import java.util.List;

public interface SectionService {

    Section createSection(Section section);

    Section updateSection(Long id, Section section);

    Section getSectionById(Long id);

    List<Section> getAllActiveSections();

    List<Section> getSectionsByClassId(Integer classId); // ✅ NEW

    void deleteSection(Long id); // soft delete
}
