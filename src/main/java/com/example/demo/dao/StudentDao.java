package com.example.demo.dao;

import com.example.demo.entity.Student;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

/**
 * Created by MD PIYAL HASAN on 10/25/2019.
 */
@Transactional
public interface StudentDao extends CrudRepository<Student,Integer> {


}
