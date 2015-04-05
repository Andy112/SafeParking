package com.andy.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;


@Entity(name = "account")
@Table(name = "account")
public class Account {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Basic
    @Column(name = "firstName")
    @NotNull(message = "Please enter first name")
    @Size(min = 1, max = 50, message = "Please enter a minimum of one character for firstname")
    @NotEmpty (message = "Please enter first name")
    private String firstName;

    @Basic
    @Column(name = "username")
    private String username;

    @Basic
    @Column(name = "lastName")
    private String lastName;

    @Basic
    @Column(name = "email")
    private String email;

    @Basic
    @Column(name = "password")
    private String password;

    @Basic
    @Column(name = "gender")
    private String gender;

    @Basic
    @Column(name = "DOB")
    private Date dob;

    @Basic
    @Column(name = "telephone")
    private String telephone;

    @Basic
    @Column(name = "address")
    private String address;


    @OneToOne
    private Role role;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }


    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode(password);
        this.password = hashedPassword;
    }


    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }


    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }


    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @PrePersist
    void presetUsername(){

        this.username = this.getEmail();
    }

}
