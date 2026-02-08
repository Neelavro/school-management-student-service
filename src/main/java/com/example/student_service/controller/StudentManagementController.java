package com.example.student_service.controller;

import com.example.student_service.entity.Class;
import com.example.student_service.entity.Section;
import com.example.student_service.entity.Shift;
import com.example.student_service.entity.StudentGroup;
import com.example.student_service.service.ClassService;
import com.example.student_service.service.SectionService;
import com.example.student_service.service.ShiftService;
import com.example.student_service.service.StudentGroupService;
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

    public StudentManagementController(
            ClassService classService,
            SectionService sectionService,
            ShiftService shiftService,
            StudentGroupService studentGroupService
    ) {
        this.classService = classService;
        this.sectionService = sectionService;
        this.shiftService = shiftService;
        this.studentGroupService = studentGroupService;
    }

    @GetMapping("/init")
    public ResponseEntity<StudentManagementInitResponse> getInitialData() {

        List<Class> classes = classService.getAllClasses();
        List<Section> sections = sectionService.getAllActiveSections();
        List<Shift> shifts = shiftService.getAllActiveShifts();
        List<StudentGroup> studentGroups = studentGroupService.getAllActiveGroups();

        StudentManagementInitResponse response = new StudentManagementInitResponse(
                classes,
                sections,
                shifts,
                studentGroups
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
    }
}
