package com.example.services;

import com.example.dto.StudentDto;
import com.example.entity.Student;
import com.example.forms.StudentForm;
import com.example.repository.StudentRepository;
import com.example.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import org.apache.commons.lang3.RandomUtils;
import java.util.List;

@Service
public class StudentService {
    @Autowired
    StudentRepository studentRepository;

    public Student createStudent (StudentForm studentForm){
        Student student = new Student();
            student.setName(studentForm.getName());
            student.setEmail(studentForm.getEmail());
            student.setPassword(RandomUtils.nextInt() + "ABCD");
            student.setDepartmentId(studentForm.getDepartmentId());
            student.setSubjects(studentForm.getSubjects());
            student.setDateOfBirth(DateUtil.convertStringToLocalDateTime(studentForm.getDateOfBirth(),studentForm.getTimeZone()));
            student.setDateOfJoining(DateUtil.convertStringToLocalDateTime(studentForm.getDateOfJoining(),studentForm.getTimeZone()));
            student.setTimeZone(studentForm.getTimeZone());
        studentRepository.save(student);
        return student;
    }

    public StudentDto getStudentById (String id){
        Student student = studentRepository.findById(id).get();
        StudentDto dto = new StudentDto();
            dto.setName(student.getName());
            dto.setEmail(student.getEmail());
            dto.setDateOfJoining(student.getDateOfJoining().toString());
            dto.setTimeZone(student.getTimeZone());
        return dto;
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

//    public List<Student> getDepartmentNameSubField(String deptName){
//        return studentRepository.findByDepartmentDepartmentName(deptName);
//    }

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
