package com.niit.controllers;

import java.util.Collection;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import com.portal.daos.CategoryDAOImpl;
import com.portal.daos.ClientDAOImpl;
import com.portal.daos.ProductDAOImpl;
import com.portal.daos.SupplierDAOImpl;

public class BasicController {
	ClientDAOImpl clientDAOImpl = (ClientDAOImpl) application_context.getBean("clientDAOImpl");
	CategoryDAOImpl categoryDAOImpl = (CategoryDAOImpl) application_context.getBean("categoryDAOImpl");
	ProductDAOImpl productDAOImpl = (ProductDAOImpl) application_context.getBean("productDAOImpl");
	SupplierDAOImpl supplierDAOImpl = (SupplierDAOImpl)application_context.getBean("supplierDAOImpl");
	public static ClassPathXmlApplicationContext application_context = new ClassPathXmlApplicationContext("spring_beans.xml");
	public String get_current_user(){
		   String user = "";
		   Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		   System.out.println("principal"+principal);
		   user = principal.toString();
		   if(user.isEmpty() || user.equals("anonymousUser"))user = "Guest";
		   return user;
		   }
	
public boolean isAdmin(){
	boolean admin = false;
	@SuppressWarnings("unchecked")
	Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>)    SecurityContextHolder.getContext().getAuthentication().getAuthorities();
    for (SimpleGrantedAuthority authority : authorities){
    	System.out.println("authority is " + authority.toString());
	if(authority.toString().equals("ROLE_ADMIN")){
		admin = true;
	    break;
	}
	}
    return admin;
}
	
	
}