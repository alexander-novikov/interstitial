package controllers;



import play.mvc.Controller;
import play.mvc.With;

@With(Secure.class)
@Check(Security.ACCESS)
public class Admin extends Controller{

	
}
