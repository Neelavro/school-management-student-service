package com.example.student_service.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Table(name = "student")
@Getter
@Setter
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // internal DB ID

    @Column(name = "student_system_id", nullable = false, unique = true, length = 8)
    private String studentSystemId; // 8-digit system-generated ID

    // Student Name
    @Column(name = "name_bangla", nullable = false)
    private String nameBangla;

    @Column(name = "name_english", nullable = false)
    private String nameEnglish;

    // Father's Info (required)
    @Column(name = "father_name_bangla", nullable = false)
    private String fatherNameBangla;

    @Column(name = "father_name_english", nullable = false)
    private String fatherNameEnglish;

    @Column(name = "father_occupation")
    private String fatherOccupation;

    @Column(name = "father_phone")
    private String fatherPhone;

    @Column(name = "father_monthly_salary")
    private String fatherMonthlySalary;

    // Mother's Info
    @Column(name = "mother_name_bangla")
    private String motherNameBangla;

    @Column(name = "mother_name_english")
    private String motherNameEnglish;

    @Column(name = "mother_occupation")
    private String motherOccupation;

    @Column(name = "mother_phone")
    private String motherPhone;

    @Column(name = "mother_monthly_salary")
    private String motherMonthlySalary;

    // Local Guardian Info
    @Column(name = "guardian_name_bangla")
    private String guardianNameBangla;

    @Column(name = "guardian_name_english")
    private String guardianNameEnglish;

    @Column(name = "guardian_occupation")
    private String guardianOccupation;

    @Column(name = "guardian_phone")
    private String guardianPhone;

    @Column(name = "guardian_monthly_salary")
    private String guardianMonthlySalary;

    // Current Address
    @Column(name = "current_holding_no")
    private String currentHoldingNo;

    @Column(name = "current_road_or_village")
    private String currentRoadOrVillage;

    @Column(name = "current_district")
    private String currentDistrict;

    @Column(name = "current_thana")
    private String currentThana;

    // Permanent Address
    @Column(name = "permanent_holding_no")
    private String permanentHoldingNo;

    @Column(name = "permanent_road_or_village")
    private String permanentRoadOrVillage;

    @Column(name = "permanent_district")
    private String permanentDistrict;

    @Column(name = "permanent_thana")
    private String permanentThana;

    // Other Info
    @Column(name = "dob")
    private LocalDate dob;

    @Column(name = "nationality")
    private String nationality;

    // Relations
    @ManyToOne
    @JoinColumn(name = "class_id", nullable = false)
    private Class studentClass; // renamed Class -> ClassEntity to avoid Java keyword conflict

    @ManyToOne
    @JoinColumn(name = "section_id")
    private Section section; // nullable, assigned later

    @ManyToOne
    @JoinColumn(name = "shift_id")
    private Shift shift; // nullable, assigned later

    @ManyToOne
    @JoinColumn(name = "student_group_id")
    private StudentGroup studentGroup; // nullable, assigned later

    // Status
    @Column(name = "is_active")
    private Boolean isActive = true;
}
