package com.example.student_service.service.impl;

import com.example.student_service.entity.*;
import com.example.student_service.entity.Class;
import com.example.student_service.repository.*;
import com.example.student_service.service.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;

@Service
@RequiredArgsConstructor
public class StudentServiceImpl implements StudentService {

    private final StudentRepository studentRepository;
    private  final ClassRepository classRepository;
    private  final GenderSectionRepository genderSectionRepository;
    private  final SectionRepository sectionRepository;
    private  final ShiftRepository shiftRepository;
    private  final StudentGroupRepository studentGroupRepository;
    private  final GenderRepository genderRepository;
    private  final StudentStatusRepository studentStatusRepository;

    // Generate unique 8-digit student_system_id
    private String generateStudentSystemId() {
        String yearPrefix = String.valueOf(java.time.Year.now().getValue()); // e.g. "2026"

        // Find the highest existing ID for the current year
        String maxId = studentRepository.findMaxStudentSystemIdByYear(yearPrefix);

        int nextNumber;
        if (maxId == null || maxId.isEmpty()) {
            // First student of this year
            nextNumber = 1;
        } else {
            // Extract the last 4 digits and increment
            String lastFourDigits = maxId.substring(4); // Get digits after year
            nextNumber = Integer.parseInt(lastFourDigits) + 1;
        }

        // Format as 8 digits: 4-digit year + 4-digit sequential number
        return yearPrefix + String.format("%04d", nextNumber);
    }
    private void assignOrUpdateStudentSystemId(Student student, Student existing) {
        String newId = student.getStudentSystemId();

        if (newId == null || newId.isBlank()) {
            // generate if missing
            existing.setStudentSystemId(generateStudentSystemId());
        } else if (!newId.equals(existing.getStudentSystemId())) {
            // only update if different
            if (studentRepository.existsByStudentSystemId(newId)) {
                throw new IllegalArgumentException("studentSystemId already exists: " + newId);
            }
            existing.setStudentSystemId(newId);
        }
    }


    @Override
    public Student createStudent(Student student) {

        student.setIsActive(true);
        assignOrUpdateStudentSystemId(student,student);
        // Shift
        if (student.getShift() != null) {
            Integer shiftId = student.getShift().getId();
            Shift shiftEntity = shiftRepository.getReferenceById(shiftId);
            student.setShift(shiftEntity);
        }
        // Class
        if (student.getStudentClass() != null) {
            Integer classId = student.getStudentClass().getId();
            Class classEntity = classRepository.getById(classId);
            student.setStudentClass(classEntity);
        }

        if (student.getGenderSection() != null) {
            Integer genderSectionId = student.getGenderSection().getId();
            GenderSection genderSection = genderSectionRepository.getById(genderSectionId);
            student.setGenderSection(genderSection);
        }


        if (student.getGender() != null) {
            Integer genderId = student.getGender().getId();
            Gender gender = genderRepository.getById(genderId);
            student.setGender(gender);
        }

        // Section
        if (student.getSection() != null) {
            Integer sectionId = Math.toIntExact(student.getSection().getId());
            Section section = sectionRepository.getById(sectionId);
            student.setSection(section);
        }

        // Group Subject
        if (student.getStudentGroup() != null) {
            Integer groupId = student.getStudentGroup().getId();
            StudentGroup groupEntity =
                    studentGroupRepository.getById(groupId);
            student.setStudentGroup(groupEntity);
        }

        if (student.getStudentStatus() != null) {
            Integer studentStatusId = student.getStudentStatus().getId();
            StudentStatus studentStatus = studentStatusRepository.getById(studentStatusId);
            student.setStudentStatus(studentStatus);
        }

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
        boolean x = studentRepository.existsById(id);
        System.out.println("STUDENT FOUND : "+x);
        return studentRepository.findById(id)
                .map(existing -> {
                    // Update all simple fields
                    existing.setClassRoll(student.getClassRoll());
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

                    // 🔹 Reattach managed entities for relations

                    // Shift
                    if (student.getShift() != null) {
                        Integer shiftId = student.getShift().getId();
                        existing.setShift(shiftRepository.getReferenceById(shiftId));
                    }

                    // Class
                    if (student.getStudentClass() != null) {
                        Integer classId = student.getStudentClass().getId();
                        existing.setStudentClass(classRepository.getReferenceById(classId));
                    }

                    if (student.getGenderSection() != null) {
                        Integer genderSectionId =student.getGenderSection().getId();
                        existing.setGenderSection(genderSectionRepository.getReferenceById(genderSectionId));
                    }

                    if (student.getGender() != null) {
                        Integer genderId = student.getGender().getId();
                        existing.setGender(genderRepository.getReferenceById(genderId));
                    }
                    if (student.getSection() != null) {
                        Integer sectionId = Math.toIntExact(student.getSection().getId());
                        existing.setSection(sectionRepository.getReferenceById(sectionId));
                    }


                    // Student Group
                    if (student.getStudentGroup() != null) {
                        Integer groupId = student.getStudentGroup().getId();
                        existing.setStudentGroup(studentGroupRepository.getReferenceById(groupId));
                    }

                    if (student.getStudentStatus() != null) {
                        Integer studentStatusId = student.getStudentStatus().getId();
                        existing.setStudentStatus(studentStatusRepository.getReferenceById(studentStatusId));
                    }

                    assignOrUpdateStudentSystemId(student, existing);
                    return studentRepository.save(existing);
                })
                .orElse(null);
    }

    @Override
    public List<StudentStatus> getStudentStatus(){
        return studentStatusRepository.findAll();
    }


    @Override
    public void deleteStudent(Long id) {
        studentRepository.findById(id).ifPresent(student -> {
            student.setIsActive(false); // soft delete
            studentRepository.delete(student);
        });
    }
}
