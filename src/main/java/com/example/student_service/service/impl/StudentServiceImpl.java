package com.example.student_service.service.impl;

import com.example.student_service.entity.Student;
import com.example.student_service.repository.StudentRepository;
import com.example.student_service.service.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;

@Service
@RequiredArgsConstructor
public class StudentServiceImpl implements StudentService {

    private final StudentRepository studentRepository;

    // Generate unique 8-digit student_system_id
    private String generateStudentSystemId() {
        Random random = new Random();
        String id;
        do {
            id = String.format("%08d", random.nextInt(100_000_000));
        } while (studentRepository.existsByStudentSystemId(id));
        return id;
    }

    @Override
    public Student createStudent(Student student) {
        student.setIsActive(true);
        student.setStudentSystemId(generateStudentSystemId());
        return studentRepository.save(student);
    }

    @Override
    public Student getStudentById(Long id) {
        return studentRepository.findById(id)
                .filter(Student::getIsActive)
                .orElse(null);
    }

    @Override
    public List<Student> getAllStudents() {
        return studentRepository.findAll()
                .stream()
                .filter(Student::getIsActive)
                .toList();
    }

    @Override
    public Student updateStudent(Long id, Student student) {
        return studentRepository.findById(id)
                .map(existing -> {
                    // update all relevant fields
                    existing.setNameBangla(student.getNameBangla());
                    existing.setNameEnglish(student.getNameEnglish());
                    existing.setFatherNameBangla(student.getFatherNameBangla());
                    existing.setFatherNameEnglish(student.getFatherNameEnglish());
                    existing.setFatherOccupation(student.getFatherOccupation());
                    existing.setFatherPhone(student.getFatherPhone());
                    existing.setFatherMonthlySalary(student.getFatherMonthlySalary());
                    existing.setMotherNameBangla(student.getMotherNameBangla());
                    existing.setMotherNameEnglish(student.getMotherNameEnglish());
                    existing.setMotherOccupation(student.getMotherOccupation());
                    existing.setMotherPhone(student.getMotherPhone());
                    existing.setMotherMonthlySalary(student.getMotherMonthlySalary());
                    existing.setGuardianNameBangla(student.getGuardianNameBangla());
                    existing.setGuardianNameEnglish(student.getGuardianNameEnglish());
                    existing.setGuardianOccupation(student.getGuardianOccupation());
                    existing.setGuardianPhone(student.getGuardianPhone());
                    existing.setGuardianMonthlySalary(student.getGuardianMonthlySalary());
                    existing.setCurrentHoldingNo(student.getCurrentHoldingNo());
                    existing.setCurrentRoadOrVillage(student.getCurrentRoadOrVillage());
                    existing.setCurrentDistrict(student.getCurrentDistrict());
                    existing.setCurrentThana(student.getCurrentThana());
                    existing.setPermanentHoldingNo(student.getPermanentHoldingNo());
                    existing.setPermanentRoadOrVillage(student.getPermanentRoadOrVillage());
                    existing.setPermanentDistrict(student.getPermanentDistrict());
                    existing.setPermanentThana(student.getPermanentThana());
                    existing.setDob(student.getDob());
                    existing.setNationality(student.getNationality());
                    existing.setStudentClass(student.getStudentClass());
                    existing.setSection(student.getSection());
                    existing.setShift(student.getShift());
                    existing.setStudentGroup(student.getStudentGroup());
                    return studentRepository.save(existing);
                })
                .orElse(null);
    }

    @Override
    public void deleteStudent(Long id) {
        studentRepository.findById(id).ifPresent(student -> {
            student.setIsActive(false); // soft delete
            studentRepository.save(student);
        });
    }
}
