package com.example.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import javax.persistence.Id;
import javax.persistence.Transient;
import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
@Document(collection = "student")
public class Student {

    @Id
    private String id;
    @Field(name="name")
    private String name;
    @Field(name = "email")
    private String email;
    private String password;
    private Department department;
    private List<Subject> subjects;
    private LocalDateTime dateOfBirth;
    private String timeZone;
    private LocalDateTime dateOfJoining;
    @Transient
    private double percentage;

    public double getPercentage() {
        if(subjects != null && subjects.size() > 0){
            int total = 0;
            for(Subject subject : subjects){
                total +=subject.getMarksObtained();
            }
            return total/subjects.size();
        }
        return 0.00;
    };
}
