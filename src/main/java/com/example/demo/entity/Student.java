package com.example.demo.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by MD PIYAL HASAN on 10/25/2019.
 */
@Entity
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String description;
    @Transient
    private List<Studentdetail> studentdetails;

    public List<Studentdetail> getStudentdetails() {
        return studentdetails;
    }

    public void setStudentdetails(List<Studentdetail> studentdetails) {
        this.studentdetails = studentdetails;
    }

    public Student() {
    }

    public Student(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", studentdetails=" + studentdetails +
                '}';
    }
}
