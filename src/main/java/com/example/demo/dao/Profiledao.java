package com.example.demo.dao;

import com.example.demo.entity.BasicInformation;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

@Transactional
public interface Profiledao extends CrudRepository<BasicInformation,Integer> {
}
