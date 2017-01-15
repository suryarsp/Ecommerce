package portal.daos.modelDaos;

import org.hibernate.SessionFactory;

import com.portal.daos.daoClass;
import com.portal.models.User;

import java.util.ArrayList;
import java.util.List;

public class userAccess extends daoClass{
   
	public userAccess(SessionFactory mySessionFactory) {
		super(mySessionFactory,User.class);
		
		// TODO Auto-generated constructor stub
	}


	public List<User> getUsers(){
		 List<User> model = new ArrayList();
		 // Type cast the object to the model class
		for (Object start:getData()){
			model.add((User)start);
		}
		return model;
	}
	
	public boolean addAnotherUser(User u){
		return addUser(u);
		}
	
}
