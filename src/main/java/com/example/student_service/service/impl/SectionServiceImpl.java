package com.example.student_service.service.impl;

import com.example.student_service.entity.Section;
import com.example.student_service.repository.SectionRepository;
import com.example.student_service.service.SectionService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SectionServiceImpl implements SectionService {

    private final SectionRepository sectionRepository;

    public SectionServiceImpl(SectionRepository sectionRepository) {
        this.sectionRepository = sectionRepository;
    }

    @Override
    public Section createSection(Section section) {
        if (section.getClassEntity() == null) {
            throw new RuntimeException("Class must be set for the section");
        }
        section.setIsActive(true);
        return sectionRepository.save(section);
    }
    @Override
    public List<Section> getSectionsByClassIdAndGenderSectionId(Integer classId, Integer genderSectionId) {
        return sectionRepository.findAllByClassEntityIdAndGenderSectionIdAndIsActiveTrue(classId, genderSectionId);
    }


    @Override
    public Section updateSection(Long id, Section section) {
        Section existing = getSectionById(id);
        existing.setSectionName(section.getSectionName());
        existing.setIsActive(section.getIsActive());

        if (section.getClassEntity() != null) {
            existing.setClassEntity(section.getClassEntity());
        }

        return sectionRepository.save(existing);
    }


    @Override
    public Section getSectionById(Long id) {
        return sectionRepository.findById(Math.toIntExact(id))
                .orElseThrow(() -> new RuntimeException("Section not found"));
    }

    @Override
    public List<Section> getAllActiveSections() {
        return sectionRepository.findAll();
    }

    @Override
    public void deleteSection(Long id) {
        Section section = sectionRepository.findById(Math.toIntExact(id))
                .orElseThrow(() -> new RuntimeException("Section not found"));

        section.setIsActive(false);
        sectionRepository.save(section);
    }
}
