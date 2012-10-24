package controllers;

import play.*;
import play.mvc.*;

@With(Secure.class)
@Check(Security.ACCESS)
public class Templates extends CRUD {

}
