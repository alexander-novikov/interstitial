/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import play.mvc.Controller;
import play.mvc.With;

@With(Secure.class)
@Check(Security.ACCESS)
public class Main extends Controller{
    public static void prototype(){        
        render();
    }
}
