package com.example.demo.controller;

import com.example.demo.dao.Profiledao;
import com.example.demo.entity.BasicInformation;

import com.example.demo.entity.Student;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;
import java.util.Optional;

import static org.hibernate.validator.internal.util.Contracts.assertNotNull;

@Controller
public class ProfileController {
    @Autowired
    private Profiledao profiledao;
    @GetMapping("/admin-profile")
    public String index(){
        return "profile";
    }

    @PostMapping("/admin-profile-add")
    public  @ResponseBody
    String add(@RequestParam String data){
        Gson g = new Gson();
        BasicInformation p = g.fromJson(data, BasicInformation.class);
        profiledao.save(p);
        return "1";
    }
    @PostMapping("/admin-profile-getdata")
    public  @ResponseBody
    List<BasicInformation> get(){
        List<BasicInformation> info= (List<BasicInformation>) profiledao.findAll();
        return info;
    }

    @PostMapping("/admin-profile-delete")
    public  @ResponseBody
    Boolean delete(@RequestParam Integer id){
        Optional<BasicInformation> info = profiledao.findById(id);
        profiledao.delete(info.get());
        return true;
    }
}
