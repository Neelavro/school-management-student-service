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

    private final ClassService classService;
    private final SectionService sectionService;
    private final ShiftService shiftService;
    private final StudentGroupService studentGroupService;
    private final GenderService genderService;

    public StudentManagementController(
            ClassService classService,
            SectionService sectionService,
            ShiftService shiftService,
            StudentGroupService studentGroupService,
            GenderService genderService
    ) {
        this.classService = classService;
        this.sectionService = sectionService;
        this.shiftService = shiftService;
        this.studentGroupService = studentGroupService;
        this.genderService = genderService;
    }

    @GetMapping("/init")
    public ResponseEntity<StudentManagementInitResponse> getInitialData() {

        List<Class> classes = classService.getAllClasses();
        List<Section> sections = sectionService.getAllActiveSections();
        List<Shift> shifts = shiftService.getAllActiveShifts();
        List<StudentGroup> studentGroups = studentGroupService.getAllActiveGroups();
        List<Gender> genders = genderService.getAllGenders();

        StudentManagementInitResponse response = new StudentManagementInitResponse(
                classes,
                sections,
                shifts,
                studentGroups,
                genders
        );

        return ResponseEntity.ok(response);
    }

    // ---------------- DTOs ----------------

    @Getter
    @Setter
    @AllArgsConstructor
    public static class StudentManagementInitResponse {
        private List<Class> classes;
        private List<Section> sections;
        private List<Shift> shifts;
        private List<StudentGroup> studentGroups;
        private List<Gender> genders;
    }
}
