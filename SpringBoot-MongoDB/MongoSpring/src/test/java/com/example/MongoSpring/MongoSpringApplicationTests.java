package com.example.MongoSpring;

import com.example.entity.Department;
import com.example.entity.Student;
import com.example.entity.Subject;
import com.example.repository.StudentRepository;
import com.example.utils.DateUtil;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.apache.commons.lang3.RandomUtils;

import static org.junit.Assert.*;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class MongoSpringApplicationTests {

	@Autowired
	StudentRepository studReop;

	@Test
	@Order(1)
	public void testCreate (){
		Student s = new Student();
		Department d = new Department();
		d.setDepartmentName("Math");
		d.setLocation("chennai");
		Subject su = new Subject();
		su.setSubjectName("addion");
		su.setMarksObtained(40);

		s.setId("003");
		s.setName("TestUser");
		s.setEmail("junit@gmail.com");
		s.setPassword(RandomUtils.nextInt() + "ABCD");
		s.setDepartment(d);
		//s.setSubjects();
		s.setDateOfBirth(DateUtil.convertStringToLocalDateTime("2022-01-21T11:30:00.000Z","Asia/Calcutta"));
		s.setDateOfJoining(DateUtil.convertStringToLocalDateTime("2022-01-21T11:30:00.000Z","Asia/Calcutta"));
		s.setTimeZone("Asia/Calcutta");
		studReop.save(s);
		assertNotNull(studReop.findById("003").get());
	}

	@Test
	@Order(2)
	public void testgetId(){
		Student student = studReop.findById("003").get();
		assertEquals("TestUser" ,student.getName());
	}

	@Test
	@Order(3)
	public void testUpdate(){
		Student student = studReop.findById("003").get();
		student.setEmail("junit@g.com");
		studReop.save(student);
		assertNotEquals("junit@gmail.com", studReop.findById("003").get().getEmail());
	}

	@Test
	@Order(4)
	public void testDelete(){
		studReop.deleteById("003");
		boolean student = studReop.findById("003").isEmpty();
		assertFalse(!student);
	}
}
