package com.example.student_service.controller;

import com.example.student_service.entity.*;
import com.example.student_service.entity.Class;
import com.example.student_service.service.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/student-management")
public class StudentManagementController {

    private final GenderSectionService genderSectionService;
    private final ShiftService shiftService;
    private final StudentGroupService studentGroupService;
    private final GenderService genderService;
    private final StudentService studentService;

    public StudentManagementController(
            GenderSectionService genderSectionService,
            ShiftService shiftService,
            StudentGroupService studentGroupService,
            GenderService genderService,
            StudentService studentService
    ) {
        this.genderSectionService = genderSectionService;
        this.shiftService = shiftService;
        this.studentGroupService = studentGroupService;
        this.genderService = genderService;
        this.studentService = studentService;
    }

    @GetMapping("/init")
    public ResponseEntity<StudentManagementInitResponse> getInitialData() {
        List<GenderSection> sections = genderSectionService.getAllGenderSections();
        List<Shift> shifts = shiftService.getAllActiveShifts();
        List<StudentGroup> studentGroups = studentGroupService.getAllActiveGroups();
        List<Gender> genders = genderService.getAllGenders();
        List<StudentStatus> statuses = studentService.getStudentStatus();

        StudentManagementInitResponse response = new StudentManagementInitResponse(
                sections,
                shifts,
                studentGroups,
                genders,
                statuses
        );

        return ResponseEntity.ok(response);
    }

    // ---------------- DTOs ----------------

    @Getter
    @Setter
    @AllArgsConstructor
    public static class StudentManagementInitResponse {
        private List<GenderSection> sections;
        private List<Shift> shifts;
        private List<StudentGroup> studentGroups;
        private List<Gender> genders;
        private List<StudentStatus> statuses;
    }
}
