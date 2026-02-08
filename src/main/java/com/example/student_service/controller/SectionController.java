package com.example.student_service.controller;

import com.example.student_service.entity.Section;
import com.example.student_service.service.SectionService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/sections")
public class SectionController {

    private final SectionService sectionService;

    public SectionController(SectionService sectionService) {
        this.sectionService = sectionService;
    }

    @PostMapping
    public ResponseEntity<Section> create(@RequestBody Section section) {
        if (section.getClassEntity() == null || section.getClassEntity().getId() == null) {
            return ResponseEntity
                    .badRequest()
                    .body(null);  // Or throw a proper exception
        }
        return new ResponseEntity<>(
                sectionService.createSection(section),
                HttpStatus.CREATED
        );
    }
    @GetMapping("/class/{classId}")
    public ResponseEntity<List<Section>> getAllByClass(@PathVariable Integer classId) {
        List<Section> sections = sectionService.getSectionsByClassId(classId);
        return ResponseEntity.ok(sections);
    }


    @PutMapping("/{id}")
    public ResponseEntity<Section> update(
            @PathVariable Long id,
            @RequestBody Section section
    ) {
        return ResponseEntity.ok(
                sectionService.updateSection(id, section)
        );
    }

    @GetMapping("/{id}")
    public ResponseEntity<Section> getById(@PathVariable Long id) {
        return ResponseEntity.ok(
                sectionService.getSectionById(id)
        );
    }

    @GetMapping
    public ResponseEntity<List<Section>> getAll() {
        return ResponseEntity.ok(
                sectionService.getAllActiveSections()
        );
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        sectionService.deleteSection(id);
        return ResponseEntity.noContent().build();
    }
}
