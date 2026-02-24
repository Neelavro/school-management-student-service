package com.example.student_service.service.impl;

import com.example.student_service.entity.Student;
import com.example.student_service.entity.StudentImage;
import com.example.student_service.repository.StudentImageRepository;
import com.example.student_service.repository.StudentRepository;
import com.example.student_service.service.StudentImageService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class StudentImageServiceImpl implements StudentImageService {

    private final StudentImageRepository studentImageRepository;
    private final StudentRepository studentRepository;

    private final String IMAGE_FOLDER = "/var/www/student_service/images/";

    @Override
    public StudentImage addImage(Long studentId, MultipartFile file) {
        Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new RuntimeException("Student not found with id: " + studentId));

        // Generate a unique filename
        String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();
        Path filePath = Paths.get(IMAGE_FOLDER + fileName);

        try {
            Files.copy(file.getInputStream(), filePath);
        } catch (IOException e) {
            throw new RuntimeException("Failed to save file", e);
        }

        // Save DB record
        StudentImage image = new StudentImage();
        image.setStudent(student);
        image.setImageUrl("/images/" + fileName); // relative URL
        image.setIsActive(true);

        return studentImageRepository.save(image);
    }

    @Override
    public Optional<StudentImage> getImageByStudent(Long studentId) {
        return studentImageRepository.findByStudentIdAndIsActiveTrue(studentId);
    }

    @Override
    public void softDeleteImage(Long imageId) {
        StudentImage image = studentImageRepository.findById(imageId)
                .orElseThrow(() -> new RuntimeException("Image not found with id: " + imageId));

        image.setIsActive(false);
        studentImageRepository.save(image);
    }

    @Override
    public void detachStudentFromImage(Long imageId) {
        StudentImage image = studentImageRepository.findById(imageId)
                .orElseThrow(() -> new RuntimeException("Image not found with id: " + imageId));

        image.setStudent(null);
        studentImageRepository.save(image);
    }
}