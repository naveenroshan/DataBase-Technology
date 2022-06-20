package com.example.controller;

import com.example.dto.StudentDto;
import com.example.entity.Student;
import com.example.forms.StudentForm;
import com.example.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/student")
public class StudentController {

    @Autowired
    StudentService studentService;

    @PostMapping("/create")
    public Student createStudent (@RequestBody StudentForm student){
        return studentService.createStudent(student);
    }

    @GetMapping("/getById/{id}")
    public StudentDto getStudentById (@PathVariable String id){
        return studentService.getStudentById(id);
    }

    @GetMapping("/all")
    public List<Student> getAllStudents (){
        return studentService.getAllStudents();
    }

    @PutMapping("/update")
    public Student updateStudent(@RequestBody Student student){
        return studentService.updateStudent(student);
    }

    @DeleteMapping("/delete/{id}")
    public String deleteStudent(@PathVariable String id){
        return studentService.deleteStudent(id);
    }

    @GetMapping("/studentByName/{name}")
    public List<Student> studentsByName(@PathVariable String name){
        return studentService.getStudentsByName(name);
    }

    @GetMapping("/studentByNameAndMail")
    public List<Student> studentByNameAndMail(@RequestParam String name , @RequestParam String email){
        return studentService.studentByNameAndMail(name, email);
    }

    @GetMapping("/studentByNameOrMail")
    public List<Student> studentByNameOrMail(@RequestParam String name , @RequestParam String email){
        return studentService.studentByNameOrMail(name, email);
    }

    @GetMapping("/allWithPagination")
    public List<Student> getAllWithPagination(@RequestParam int pageNo , @RequestParam int pageSize){
        return studentService.getAllWithPagination(pageNo, pageSize);
    }

    @GetMapping("/allWithSorting")
    public List<Student> getAllWithSorting(){
        return studentService.getAllWithSorting();
    }

//    @GetMapping("/byDepartmentNameSubDocumentField")
//    public List<Student> getDepartmentNameSubDocumentField(@RequestParam String deptName){
//        return studentService.getDepartmentNameSubField(deptName);
//    }

    @GetMapping("/bySubjectNameArrayValue")
    public List<Student> getSubjectNameArrayValue(@RequestParam String subName){
        return studentService.getSubjectNameArrayValue(subName);
    }

    @GetMapping("/byEmailLike")
    public List<Student> getbyEmailLike(@RequestParam String email){
        return studentService.getbyEmailLike(email);
    }

    @GetMapping("/byNameStartWith")
    public List<Student> getbyNameStartWith(@RequestParam String name){
        return studentService.getbyNameStartWith(name);
    }

}
