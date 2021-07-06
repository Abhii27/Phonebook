package com.abhi.phonebook.service;

import java.io.IOException;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;

import com.abhi.phonebook.dao.DaoFactory;
import com.abhi.phonebook.dao.UserDao;
import com.abhi.phonebook.entity.User;

public class UserService {
	
	public User registerUser(String name, String email, String password, String cPassword, Map<String, String> errors) throws IOException
	{
		if(name.trim().length() == 0)
		{
			errors.put("name", "Name is Mandatory!");
		}
		else if(name.trim().length()<3)
		{
			errors.put("name", "Atleast 3 Letters are Required!");
		}
		
		if(email.trim().length()==0)
		{
			errors.put("email", "Email Address is Mandatory!");
		}
		
		if(password.trim().length()==0)
		{
			errors.put("password", "Password is Mandatory!");
		}
		
		if(password.equals(cPassword)==false)
		{
			errors.put("cPassword", "Password does not Match!");
		}
		
		UserDao dao = DaoFactory.getUserDao();
		User user = dao.getUserByEmail(email);
		if(user!=null)
		{
			errors.put("email", "This Email is Already Registered!");
		}
		
		if(errors.size()>0)
		{
			return null;
		}
		
		password = BCrypt.hashpw(password, BCrypt.gensalt(12));
		
		user = new User(name, email, password);
		dao.created(user);
		
		return user;
	}

	public User login(String email, String password, Map<String, String> errors) throws IOException {
		if(email.trim().length()==0)
		{
			errors.put("email", "Email Address is Mandatory!");
		}
		
		if(password.trim().length()==0)
		{
			errors.put("password", "Password is Mandatory!");
		}
		
		if(errors.size()>0)
		{
			return null;
		}
		
		UserDao dao = DaoFactory.getUserDao();
		User user = dao.getUserByEmail(email);
		
		if(user == null)
		{
			errors.put("email","Invalid Email/Password!!");
		}
		else
		{
			boolean result = BCrypt.checkpw(password, user.getPassword());
			if(result == false)
			{
				errors.put("email","Invalid Email/Password!!");
			}
		}
		
		if(errors.size()>0)
		{
			return null;
		}
		return user;
	}
}
