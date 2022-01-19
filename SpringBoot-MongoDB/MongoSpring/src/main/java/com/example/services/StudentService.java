package com.example.services;

import com.example.entity.Student;
import com.example.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    StudentRepository studentRepository;

    public Student createStudent (Student student){
        studentRepository.save(student);
        return student;
    }

    public Student getStudentById (String id){
    return studentRepository.findById(id).get();
    }

    public List<Student> getAllStudents (){
        return studentRepository.findAll();
    }

    public Student updateStudent (Student student){
        return studentRepository.save(student);
    }

    public String deleteStudent (String id){
        studentRepository.deleteById(id);
        return "Student Deleted with ID";
    }

    public List<Student> getStudentsByName (String name){
        return studentRepository.findByName(name);
    }

    public List<Student> studentByNameAndMail(String name, String email){
        return studentRepository.findByNameAndEmail(name, email);
    }

    public List<Student> studentByNameOrMail(String name, String email){
        return studentRepository.findByNameOrEmail(name, email);
    }

    public List<Student> getAllWithPagination(int pageNo, int pageSize){
        Pageable pageable = PageRequest.of(pageNo-1, pageSize );
        return studentRepository.findAll(pageable).getContent();
    }

    public List<Student> getAllWithSorting(){
        Sort sort = Sort.by(Sort.Direction.ASC, "name");
        return studentRepository.findAll(sort);
    }

    public List<Student> getDepartmentNameSubField(String deptName){
        return studentRepository.findByDepartmentDepartmentName(deptName);
    }

    public List<Student> getSubjectNameArrayValue(String subName){
        return studentRepository.findBySubjectsSubjectName(subName);
    }

    public List<Student> getbyEmailLike(String email){
        return studentRepository.findByEmailIsLike(email);
    }

    public List<Student> getbyNameStartWith(String name){
        return studentRepository.findByNameStartsWith(name);
    }


}
