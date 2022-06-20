package com.example.controller;

import com.example.entity.Department;
import com.example.forms.DepartmentForm;
import com.example.services.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/department")
public class DepartmentController {
    @Autowired
    DepartmentService departmentService;

    @PostMapping("/create")
    public Department createDepartment (@RequestBody DepartmentForm departmentForm){
        return departmentService.createDepartment(departmentForm);
    }

}
