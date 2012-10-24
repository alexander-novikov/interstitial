package controllers;

import play.*;
import play.mvc.*;

import java.util.*;

import models.*;

@With(Secure.class)
@Check(Security.ACCESS)
public class Application extends Controller {

    public static void index() {
    	render();
    }

}