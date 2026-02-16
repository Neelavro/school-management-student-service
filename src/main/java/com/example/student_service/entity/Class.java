package com.example.student_service.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "class")
@Getter
@Setter
public class Class {  // Avoid naming conflict with Java 'Class'

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "shift_id", nullable = true)
    private Shift shift;

    @Column(name = "is_active")
    private Boolean isActive = true;
}
