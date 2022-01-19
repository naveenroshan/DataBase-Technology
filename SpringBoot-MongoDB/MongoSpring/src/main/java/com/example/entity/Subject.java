package com.example.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.mongodb.core.mapping.Field;
@Data
@NoArgsConstructor
public class Subject {

    @Field(name="subjectName")
    private String subjectName;
    @Field(name="marksObtained")
    private int marksObtained;
}
