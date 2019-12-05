package com.example.demo.controller;

import com.example.demo.dao.StudentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by MD PIYAL HASAN on 10/25/2019.
 */
@Controller
public class Admin {

    @Autowired
    private StudentDao studentDao;
    @GetMapping("/admin-dashboard")
    public String dashboard(){
        return "dashboard";
    }
}
