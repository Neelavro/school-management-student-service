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
    private final ShiftService shiftService;

    private final StudentGroupService studentGroupService;

    public StudentManagementController(
            ClassService classService,
            ShiftService shiftService,
            StudentGroupService studentGroupService
    ) {
        this.classService = classService;
        this.shiftService = shiftService;

        this.studentGroupService = studentGroupService;
    }

    @GetMapping("/init")
    public ResponseEntity<StudentManagementInitResponse> getInitialData() {

        StudentManagementInitResponse response =
                new StudentManagementInitResponse(
                        classService.getAllClasses(),
                        shiftService.getAllActiveShifts(),

                        studentGroupService.getAllActiveGroups()
                );

        return ResponseEntity.ok(response);
    }

    @Getter
    @Setter
    @AllArgsConstructor
    public class StudentManagementInitResponse {
        private List<Class> classes;
        private List<Shift> shifts;
        private List<StudentGroup> studentGroups;
    }
}
