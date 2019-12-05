package com.example.demo.controller;

import com.example.demo.dao.StudentDao;
import com.example.demo.entity.Student;
import org.hibernate.annotations.Cache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by MD PIYAL HASAN on 10/27/2019.
 */
@Controller
public class StudentController {
    @Autowired
    private StudentDao studentDao;

    @GetMapping("/studentadd")
    public String getStudentform(@ModelAttribute("std")Student student){
        return "jstlform";
    }


}
