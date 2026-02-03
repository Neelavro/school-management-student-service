package com.example.student_service.service;

import com.example.student_service.entity.GroupSubject;
import java.util.List;

public interface GroupSubjectService {

    GroupSubject createGroupSubject(GroupSubject groupSubject);

    List<GroupSubject> getAllGroupSubjects();

    GroupSubject getGroupSubjectById(Integer id);

    GroupSubject updateGroupSubject(Integer id, GroupSubject groupSubject);

    void deleteGroupSubject(Integer id);
}
