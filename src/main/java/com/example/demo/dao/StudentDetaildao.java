package com.example.demo.dao;

import com.example.demo.entity.Studentdetail;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

@Transactional
public interface StudentDetaildao extends CrudRepository<Studentdetail,Integer> {
}
