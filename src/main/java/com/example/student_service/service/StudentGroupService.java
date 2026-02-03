package com.example.student_service.service;

import com.example.student_service.entity.StudentGroup;

import java.util.List;

public interface StudentGroupService {

    StudentGroup createGroup(StudentGroup group);

    StudentGroup updateGroup(Integer id, StudentGroup group);

    StudentGroup getGroupById(Integer id);

    List<StudentGroup> getAllActiveGroups();

    void deleteGroup(Integer id); // soft delete
}
