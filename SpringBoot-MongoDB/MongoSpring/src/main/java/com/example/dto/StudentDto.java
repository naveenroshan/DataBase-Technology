package com.example.dto;

import com.example.entity.Subject;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class StudentDto {
    private String id;
    private String name;
    private String email;
    private String departmentId;
    private String departmentName;
    private List<Subject> subjects;
    private String dateOfBirth;
    private String timeZone;
    private String dateOfJoining;
}
