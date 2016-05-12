package com.shakirov.dao;

import java.util.List;

import com.shakirov.entity.User;

public interface UserDAO {
	public int createUser(User user);
    public User updateUser(User user);
    public void deleteUser(int id);
    public List<User> getAllUsers(Integer offset, Integer maxResults);
    public User getUser(int id);
	public List<User> getAllUsers(String userName, Integer offset, Integer maxResults);
    public Long count();
    public Long count(String userName);
}
