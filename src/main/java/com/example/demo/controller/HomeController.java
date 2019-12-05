package com.example.demo.controller;

import com.example.demo.dao.StudentDao;
import com.example.demo.dao.StudentDetaildao;
import com.example.demo.entity.Student;
import com.example.demo.entity.Studentdetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLOutput;
import java.util.List;
import java.util.Optional;

@Controller
public class HomeController {

    @Autowired
    private StudentDao studentDao;
    @Autowired
    private StudentDetaildao studentDetaildao;

    @GetMapping("/student")
    public String getHome(){
        Student st=new Student("piyal","Student");
        studentDao.save(st);
        return "test";
    }
    @GetMapping("/stdlist")
    public String Studentlist(Model model){
        model.addAttribute("std",studentDao.findAll());
        return "home";
    }
    @PostMapping("/add")
    public  @ResponseBody String add(@RequestParam String name, @RequestParam String email){
        Student st=new Student(name,email);
        studentDao.save(st);
        Studentdetail studentdetail=new Studentdetail();
        studentdetail.setDescription(name);
        studentDetaildao.save(studentdetail);
        System.out.println(name+email);
        return "success";
    }



    @PostMapping("/get")
    public  @ResponseBody
    List<Student> get(){
        List<Student> st= (List<Student>) studentDao.findAll();

        System.out.println(new Student());
      ;
        return st;
    }

    @PostMapping("/delete")
    public  @ResponseBody
    Boolean delete(@RequestParam Integer id){
//        System.out.println(id);
        Optional<Student> student = studentDao.findById(id);
        studentDao.delete(student.get());
        return true;
    }

    @PostMapping("/edit")
    public  @ResponseBody
    Optional<Student> edit(@RequestParam Integer id){
//        System.out.println(id);
        Optional<Student> student = studentDao.findById(id);
        Optional<Student> edit= student;
        return edit;
    }

    @PostMapping("/update")
    public  @ResponseBody
    boolean update(@RequestParam String name,@RequestParam String email,@RequestParam Integer id){
//        System.out.println(id);
        Optional<Student> studentOptional = studentDao.findById(id);
        Student student = studentOptional.get();
        student.setName(name);
        student.setDescription(email);

        studentDao.save(student);
        return true;
    }


}
