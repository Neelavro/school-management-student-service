package com.example.student_service.controller;

import com.example.student_service.entity.GroupSubject;
import com.example.student_service.service.GroupSubjectService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/group-subjects")
public class GroupSubjectController {

    private final GroupSubjectService groupSubjectService;

    public GroupSubjectController(GroupSubjectService groupSubjectService) {
        this.groupSubjectService = groupSubjectService;
    }

    // Create
    @PostMapping
    public ResponseEntity<GroupSubject> create(@RequestBody GroupSubject groupSubject) {
        return ResponseEntity.ok(groupSubjectService.createGroupSubject(groupSubject));
    }

    // Read all
    @GetMapping
    public ResponseEntity<List<GroupSubject>> getAll() {
        return ResponseEntity.ok(groupSubjectService.getAllGroupSubjects());
    }

    // Read by ID
    @GetMapping("/{id}")
    public ResponseEntity<GroupSubject> getById(@PathVariable Integer id) {
        GroupSubject groupSubject = groupSubjectService.getGroupSubjectById(id);
        if (groupSubject == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(groupSubject);
    }

    // Update
    @PutMapping("/{id}")
    public ResponseEntity<GroupSubject> update(
            @PathVariable Integer id,
            @RequestBody GroupSubject groupSubject
    ) {
        GroupSubject updated = groupSubjectService.updateGroupSubject(id, groupSubject);
        if (updated == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(updated);
    }

    // Delete
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Integer id) {
        groupSubjectService.deleteGroupSubject(id);
        return ResponseEntity.noContent().build();
    }
}
