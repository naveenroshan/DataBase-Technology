package com.example.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@NoArgsConstructor
@Document(collection = "departments_table")
public class Department {
    @Id
    private String id;
    private String name;
    private String location;
}
