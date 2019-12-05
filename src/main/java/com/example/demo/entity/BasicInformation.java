package com.example.demo.entity;

import org.hibernate.validator.constraints.URL;
import org.hibernate.validator.constraints.UniqueElements;

import javax.persistence.*;
import javax.validation.constraints.AssertFalse;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Size;

@Entity
public class BasicInformation {
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String fullname;

    private String email;

    private String contact;

    private String fb;

    private String linkedin;

    private String github;

    private String stractoverflow;

    private String softprofile;

    private String aboutme;

    private String address;

    private String country;

    private String city;

    private String postcode;
    private String imagefilepath;

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getFb() {
        return fb;
    }

    public void setFb(String fb) {
        this.fb = fb;
    }

    public String getLinkedin() {
        return linkedin;
    }

    public void setLinkedin(String linkedin) {
        this.linkedin = linkedin;
    }

    public String getGithub() {
        return github;
    }

    public void setGithub(String github) {
        this.github = github;
    }

    public String getStractoverflow() {
        return stractoverflow;
    }

    public void setStractoverflow(String stractoverflow) {
        this.stractoverflow = stractoverflow;
    }

    public String getSoftprofile() {
        return softprofile;
    }

    public void setSoftprofile(String softprofile) {
        this.softprofile = softprofile;
    }

    public String getAboutme() {
        return aboutme;
    }

    public void setAboutme(String aboutme) {
        this.aboutme = aboutme;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getImagefilepath() {
        return imagefilepath;
    }

    public void setImagefilepath(String imagefilepath) {
        this.imagefilepath = imagefilepath;
    }

    public BasicInformation() {
    }

    @Override
    public String toString() {
        return "BasicInformation{" +
                "id=" + id +
                ", fullname='" + fullname + '\'' +
                ", email='" + email + '\'' +
                ", contact='" + contact + '\'' +
                ", fb='" + fb + '\'' +
                ", linkedin='" + linkedin + '\'' +
                ", github='" + github + '\'' +
                ", stractoverflow='" + stractoverflow + '\'' +
                ", softprofile='" + softprofile + '\'' +
                ", aboutme='" + aboutme + '\'' +
                ", address='" + address + '\'' +
                ", country='" + country + '\'' +
                ", city='" + city + '\'' +
                ", postcode='" + postcode + '\'' +
                ", imagefilepath='" + imagefilepath + '\'' +
                '}';
    }

}
