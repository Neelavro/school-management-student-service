package com.example.student_service.service.impl;

import com.example.student_service.entity.GroupSubject;
import com.example.student_service.repository.GroupSubjectRepository;
import com.example.student_service.service.GroupSubjectService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class GroupSubjectServiceImpl implements GroupSubjectService {

    private final GroupSubjectRepository groupSubjectRepository;

    public GroupSubjectServiceImpl(GroupSubjectRepository groupSubjectRepository) {
        this.groupSubjectRepository = groupSubjectRepository;
    }

    @Override
    public GroupSubject createGroupSubject(GroupSubject groupSubject) {
        return groupSubjectRepository.save(groupSubject);
    }

    @Override
    public List<GroupSubject> getAllGroupSubjects() {
        return groupSubjectRepository.findAll();
    }

    @Override
    public GroupSubject getGroupSubjectById(Integer id) {
        Optional<GroupSubject> groupSubject = groupSubjectRepository.findById(id);

        return groupSubject.orElse(null);
    }

    @Override
    public GroupSubject updateGroupSubject(Integer id, GroupSubject groupSubject) {
        System.out.println("OBJECT: "+ groupSubject.getGroupName());
        System.out.println("OBJECT: "+ groupSubject.getIsActive());
        GroupSubject existing = getGroupSubjectById(id);
        if (existing != null) {

            existing.setGroupName(groupSubject.getGroupName());
            existing.setIsActive(groupSubject.getIsActive());
            return groupSubjectRepository.save(existing);
        }
        return null;
    }

    @Override
    public void deleteGroupSubject(Integer id) {
        groupSubjectRepository.deleteById(id);
    }
}
