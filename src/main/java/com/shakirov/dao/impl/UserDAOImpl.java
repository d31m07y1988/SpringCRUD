package com.shakirov.dao.impl;

import com.shakirov.dao.UserDAO;
import com.shakirov.entity.User;
import com.shakirov.util.HibernateUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Repository
public class UserDAOImpl implements UserDAO {
    
	public UserDAOImpl() {
    	System.out.println("UserDAOImpl");
    }
	
	@Autowired
    private HibernateUtil hibernateUtil;

    @Override
    public int createUser(User user) {
        return (Integer) hibernateUtil.create(user);
    }
    
    @Override
    public User updateUser(User user) {
        return hibernateUtil.update(user);
    }
    
    @Override
    public void deleteUser(int id) {
        User user = new User();
        user.setId(id);
        hibernateUtil.delete(user);
    }

    @Override
    public List<User> getAllUsers(Integer offset, Integer maxResults) {
        return hibernateUtil.fetchAllPaging(User.class,offset,maxResults);
    }

    @Override
    public Long count(){
        return hibernateUtil.count(User.class);
    }

    @Override
    public Long count(String userName){
        String query = "SELECT count(*) FROM User u WHERE u.name like '%"+ userName +"%'";
        return hibernateUtil.count(User.class, query);
    }
    
    @Override
    public User getUser(int id) {
        return hibernateUtil.fetchById(id, User.class);
    }

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAllUsers(String userName, Integer offset, Integer maxResults) {
		String query = "SELECT u.* FROM User u WHERE u.name like '%"+ userName +"%'";
		List<Object[]> userObjects = hibernateUtil.fetchAllPaging(query,offset,maxResults);
		List<User> users = new ArrayList<User>();
		for(Object[] userObject : userObjects) {
			User user = new User();
			int id = ((Integer) userObject[0]).intValue();
            String name = (String) userObject[1];
			int age = (int) userObject[2];
			boolean admin = (Boolean) userObject[3];
            Date createdDate = (Date) userObject[4];
			user.setId(id);
			user.setName(name);
			user.setAge(age);
			user.setAdmin(admin);
            user.setCreatedDate(createdDate);
			users.add(user);
		}
		System.out.println(users);
		return users;
	}
}