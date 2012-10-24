package controllers;

import play.mvc.With;

@With(Secure.class)
@Check(Security.ACCESS)
public class Chains extends CRUD {

}
