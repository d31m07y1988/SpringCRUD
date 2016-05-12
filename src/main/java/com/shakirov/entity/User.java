package com.shakirov.entity;

import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;

import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "User")
public class User implements Serializable {
	
	private static final long serialVersionUID = -7988799579036225137L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
	
    @Column
    private String name;
    
    @Column
    private int age;
    
    @Column
    private boolean isAdmin = Boolean.FALSE;

    @Temporal(TemporalType.TIMESTAMP)
    @CreationTimestamp
    /*@Generated(GenerationTime.INSERT)*/
    @Column(insertable = false, updatable = false)
    private Date createdDate;


    public User() {
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
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }

    public boolean isAdmin() {
        return isAdmin;
    }
    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }
    public boolean getIsAdmin() {
        return isAdmin();
    }
    public void setIsAdmin(boolean admin) {
        setAdmin(admin);
    }

    public Date getCreatedDate() {
        return createdDate;
    }
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", isAdmin=" + isAdmin +
                ", createdDate=" + createdDate +
                '}';
    }
}