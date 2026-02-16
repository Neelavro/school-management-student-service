package com.example.student_service.service.impl;

import com.example.student_service.entity.Class;
import com.example.student_service.repository.ClassRepository;
import com.example.student_service.service.ClassService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ClassServiceImpl implements ClassService {

    private final ClassRepository classRepository;

    public ClassServiceImpl(ClassRepository classRepository) {
        this.classRepository = classRepository;
    }

    @Override
    public Class createClass(Class clazz) {
        return classRepository.save(clazz);
    }

    @Override
    public List<Class> getAllClassesById(Integer shiftId) {
        return classRepository.findAllByShiftId(shiftId);
    }
    @Override
    public List<Class> getAllClasses() {
        return classRepository.findAll();
    }

    @Override
    public Class getClassById(Integer id) {
        Optional<Class> clazz = classRepository.findById(id);
        return clazz.orElse(null);
    }

    @Override
    public Class updateClass(Integer id, Class clazz) {
        Class existing = getClassById(id);
        if (existing != null) {
            existing.setName(clazz.getName());
            existing.setShift(clazz.getShift());
            existing.setIsActive(clazz.getIsActive());
            return classRepository.save(existing);
        }
        return null;
    }

    @Override
    public void deleteClass(Integer id) {
        classRepository.deleteById(id);
    }
}
