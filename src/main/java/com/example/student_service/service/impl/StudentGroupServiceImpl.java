package com.example.student_service.service.impl;

import com.example.student_service.entity.StudentGroup;
import com.example.student_service.repository.StudentGroupRepository;
import com.example.student_service.service.StudentGroupService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentGroupServiceImpl implements StudentGroupService {

    private final StudentGroupRepository groupRepository;

    public StudentGroupServiceImpl(StudentGroupRepository groupRepository) {
        this.groupRepository = groupRepository;
    }

    @Override
    public StudentGroup createGroup(StudentGroup group) {
        group.setIsActive(true);
        return groupRepository.save(group);
    }

    @Override
    public StudentGroup updateGroup(Integer id, StudentGroup group) {
        StudentGroup existing = getGroupById(id);
        existing.setGroupName(group.getGroupName());
        existing.setIsActive(group.getIsActive());
        return groupRepository.save(existing);
    }

    @Override
    public StudentGroup getGroupById(Integer id) {
        return groupRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Student group not found"));
    }

    @Override
    public List<StudentGroup> getAllActiveGroups() {
        return groupRepository.findAll();
    }

    @Override
    public void deleteGroup(Integer id) {
        StudentGroup group = getGroupById(id);
        group.setIsActive(false); // soft delete
        groupRepository.save(group);
    }
}
