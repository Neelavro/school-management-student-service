package com.example.student_service.service.impl;

import com.example.student_service.entity.GenderSection;
import com.example.student_service.repository.GenderSectionRepository;
import com.example.student_service.service.GenderSectionService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GenderSectionServiceImpl implements GenderSectionService {

    GenderSectionRepository genderSectionRepository;

    GenderSectionServiceImpl(GenderSectionRepository genderSectionRepository){
        this.genderSectionRepository = genderSectionRepository;
    }

    public List<GenderSection> getAllGenderSections(){
        return genderSectionRepository.findAll();
    }

}
