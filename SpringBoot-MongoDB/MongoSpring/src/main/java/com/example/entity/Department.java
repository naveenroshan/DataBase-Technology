package com.example.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.mongodb.core.mapping.Field;

@Data
@NoArgsConstructor
public class Department {
    @Field(name="departmentName")
    private String departmentName;
    @Field(name="location")
    private String location;
}
