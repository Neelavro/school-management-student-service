package com.example.student_service.service;

import com.example.student_service.entity.Gender;
import java.util.List;

public interface GenderService {
    Gender createGender(Gender gender);
    List<Gender> getAllGenders();
    Gender getGenderById(Integer id);
    Gender updateGender(Integer id, Gender gender);
    void deleteGender(Integer id);
}
