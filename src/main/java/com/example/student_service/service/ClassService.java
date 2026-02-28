package com.example.student_service.service;

import com.example.student_service.dto.ReorderClassesRequest;
import com.example.student_service.entity.Class;
import java.util.List;

public interface ClassService {

    Class createClass(Class classEntity);

    List<Class> getAllClassesById(Integer shiftId);
    List<Class> getAllClasses();

    Class getClassById(Integer id);

    Class updateClass(Integer id, Class classEntity);

    void deleteClass(Integer id);
    List<Class> reorderClasses(ReorderClassesRequest request);
}
