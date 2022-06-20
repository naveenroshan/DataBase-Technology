package com.example.forms;

import com.example.entity.Subject;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class StudentForm {
    private String id;
    private String name;
    private String email;
    private String departmentId;
    private List<Subject> subjects;
    private String dateOfBirth;
    private String timeZone;
    private String dateOfJoining;
}
