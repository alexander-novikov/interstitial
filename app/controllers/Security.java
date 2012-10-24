package controllers;

import models.*;
import play.libs.Crypto;

public class Security extends Secure.Security {
    public static final String ACCESS = "access";
	
    static boolean authenticate(String username, String password) {
        User u = User.find("login=? and password=?", username, Crypto.passwordHash(password)).first();
        return u != null;//TODO добавить проверку статуса
    }
    
    static boolean check(String type) {        
        String url=request.url;            
        User u =  User.find("login=?", connected()).<User>first();

        if (u == null) {
            forbidden();
        }

        if (type.equals(ACCESS))
            return u.checkAccess(url);

        return false;
    }		
}
