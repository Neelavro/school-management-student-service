package com.example.student_service.service.impl;

import com.example.student_service.entity.AcademicYear;
import com.example.student_service.repository.AcademicYearRepository;
import com.example.student_service.service.AcademicYearService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AcademicYearServiceImpl implements AcademicYearService {

    private final AcademicYearRepository academicYearRepository;

    public AcademicYearServiceImpl(AcademicYearRepository academicYearRepository) {
        this.academicYearRepository = academicYearRepository;
    }

    @Override
    public AcademicYear createAcademicYear(AcademicYear academicYear) {
        return academicYearRepository.save(academicYear);
    }

    @Override
    public List<AcademicYear> getAllAcademicYears() {
        return academicYearRepository.findByIsActiveTrue();
    }

    @Override
    public AcademicYear getAcademicYearById(Integer id) {
        Optional<AcademicYear> year = academicYearRepository.findById(id);
        return year.orElse(null); // or throw custom exception
    }

    @Override
    public AcademicYear updateAcademicYear(Integer id, AcademicYear academicYear) {
        AcademicYear existing = getAcademicYearById(id);
        if (existing != null) {
            existing.setYearName(academicYear.getYearName());
            existing.setIsActive(academicYear.getIsActive());
            return academicYearRepository.save(existing);
        }
        return null; // or throw custom exception
    }

    @Override
    public void deleteAcademicYear(Integer id) {
        AcademicYear academicYear = academicYearRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Academic year not found"));

        academicYear.setIsActive(false);
        academicYearRepository.save(academicYear);
    }}
