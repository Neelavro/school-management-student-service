package com.example.student_service.controller;

import com.example.student_service.entity.Student;
import com.example.student_service.service.IdCardService;
import com.example.student_service.service.StudentService;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/id-card")
public class IdCardController {

    private final StudentService studentService;
    private final IdCardService idCardService;

    public IdCardController(StudentService studentService, IdCardService idCardService) {
        this.studentService = studentService;
        this.idCardService = idCardService;
    }

    @GetMapping("/download")
    public void downloadIdCards(
            @RequestParam(required = false) Long academicYearId,
            @RequestParam(required = false) Long shiftId,
            @RequestParam(required = false) Long classId,
            @RequestParam(required = false) Long genderSectionId,
            @RequestParam(required = false) Long sectionId,
            @RequestParam(required = false) Long groupId,
            @RequestParam(required = false) Integer fromRoll,
            @RequestParam(required = false) Integer toRoll,
            HttpServletResponse response
    ) throws Exception {

        List<Student> students = studentService.getFilteredStudents(
                academicYearId, shiftId, classId, genderSectionId, sectionId, groupId
        );

        if (fromRoll != null || toRoll != null) {
            students = students.stream()
                    .filter(s -> {
                        int roll = s.getClassRoll() != null ? s.getClassRoll() : 0;
                        boolean afterFrom = fromRoll == null || roll >= fromRoll;
                        boolean beforeTo = toRoll == null || roll <= toRoll;
                        return afterFrom && beforeTo;
                    })
                    .collect(Collectors.toList());
        }

        byte[] pdfBytes = idCardService.generatePdf(students);

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=student_id_cards.pdf");
        response.getOutputStream().write(pdfBytes);
        response.getOutputStream().flush();
    }

    @GetMapping("/download-back")
    public void downloadIdCardBack(HttpServletResponse response) throws Exception {

        byte[] pdfBytes = idCardService.generateBackPdf();

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=student_id_card_back.pdf");
        response.getOutputStream().write(pdfBytes);
        response.getOutputStream().flush();
    }
}