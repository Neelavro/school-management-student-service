package com.example.student_service.service;

import com.example.student_service.entity.AcademicYear;
import java.util.List;

public interface AcademicYearService {

    AcademicYear createAcademicYear(AcademicYear academicYear);

    List<AcademicYear> getAllAcademicYears();

    AcademicYear getAcademicYearById(Integer id);

    AcademicYear updateAcademicYear(Integer id, AcademicYear academicYear);

    void deleteAcademicYear(Integer id);
}
