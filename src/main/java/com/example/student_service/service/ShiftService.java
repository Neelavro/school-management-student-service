package com.example.student_service.service;

import com.example.student_service.entity.Shift;

import java.util.List;

public interface ShiftService {

    Shift createShift(Shift shift);

    Shift updateShift(Long id, Shift shift);

    Shift getShiftById(Long id);

    List<Shift> getAllActiveShifts();

    void deleteShift(Long id); // soft delete
}
