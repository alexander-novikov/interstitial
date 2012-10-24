package controllers;


import java.net.SecureCacheResponse;

import play.mvc.Controller;
import play.mvc.With;

@With (Secure.class)
public class Admin extends Controller{

}
