package com.example.repository;

import com.example.entity.Department;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DepartmentRepo extends MongoRepository<Department,String> {
}
