package controllers;

import models.User;
import models.UserGroup;
import models.UserStatus;
import play.jobs.Job;
import play.jobs.OnApplicationStart;


@OnApplicationStart
public class Bootstrap extends Job{
	public void doJob(){
		//честно - было влом составлять yml как в доках, 
		//поэтому заносим программно initial
		//data, особой разницы не вижу
		if ( User.count() ==0 ){
			
			UserStatus userstatus = new UserStatus("Status 666");
			userstatus.save();
			UserGroup usergroup = new UserGroup("Administrators", "Admins");
			usergroup.save();
			User user = new User(usergroup, userstatus, "", "adoptimizeradmin", "");
			user.save();
		}
		
	}
	
}
