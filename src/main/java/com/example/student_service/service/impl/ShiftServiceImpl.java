package com.example.student_service.service.impl;

import com.example.student_service.entity.Shift;
import com.example.student_service.repository.ShiftRepository;
import com.example.student_service.service.ShiftService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShiftServiceImpl implements ShiftService {

    private final ShiftRepository shiftRepository;

    public ShiftServiceImpl(ShiftRepository shiftRepository) {
        this.shiftRepository = shiftRepository;
    }

    @Override
    public Shift createShift(Shift shift) {
        shift.setIsActive(true);
        return shiftRepository.save(shift);
    }

    @Override
    public Shift updateShift(Long id, Shift shift) {
        Shift existing = getShiftById(id);
        existing.setName(shift.getName());
        return shiftRepository.save(existing);
    }

    @Override
    public Shift getShiftById(Long id) {
        return shiftRepository.findByIdAndIsActiveTrue(id)
                .orElseThrow(() -> new RuntimeException("Shift not found"));
    }

    @Override
    public List<Shift> getAllActiveShifts() {
        return shiftRepository.findAllByIsActiveTrue();
    }

    @Override
    public void deleteShift(Long id) {
        Shift shift = getShiftById(id);
        shift.setIsActive(false); // soft delete
        shiftRepository.save(shift);
    }
}
