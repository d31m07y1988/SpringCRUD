package com.shakirov.service.impl;
import com.shakirov.dao.UserDAO;
import com.shakirov.entity.User;
import com.shakirov.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	public UserServiceImpl() {
		System.out.println("UserServiceImpl()");
	}
	
    @Autowired
    private UserDAO userDAO;

    @Override
    public int createUser(User user) {
        return userDAO.createUser(user);
    }
    @Override
    public User updateUser(User user) {
        return userDAO.updateUser(user);
    }
    @Override
    public void deleteUser(int id) {
        userDAO.deleteUser(id);
    }
    @Override
    public List<User> getAllUsers(Integer offset, Integer maxResults) {
        return userDAO.getAllUsers(offset, maxResults);
    }
    @Override
    public User getUser(int id) {
        return userDAO.getUser(id);
    }    
    @Override
    public List<User> getAllUsers(String userName, Integer offset, Integer maxResults) {
    	return userDAO.getAllUsers(userName, offset, maxResults);
    }

    @Override
    public Long count(){
        return userDAO.count();
    }

    @Override
    public Long count(String userName) {
        return userDAO.count(userName);
    }
}
