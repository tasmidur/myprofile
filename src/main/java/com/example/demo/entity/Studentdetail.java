package com.example.demo.entity;

import javax.persistence.*;

@Entity
@Table(name="student_details")
public class Studentdetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;
    private String description;

    public String getDescription() {
        return description;
    }


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="student_id")
    private Student student;

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Studentdetail{" +
                "id=" + id +
                ", description='" + description + '\'' +
                '}';
    }
}
