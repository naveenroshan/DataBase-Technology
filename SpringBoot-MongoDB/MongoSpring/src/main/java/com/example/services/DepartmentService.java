package com.example.services;

import com.example.entity.Department;
import com.example.forms.DepartmentForm;
import com.example.repository.DepartmentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentService {
    @Autowired
    DepartmentRepo departmentRepo;

    public Department createDepartment (DepartmentForm departmentForm){
        Department department = new Department();
            department.setName(departmentForm.getName());
            department.setLocation(departmentForm.getLocation());
        departmentRepo.save(department);
        return department;
    }
}
