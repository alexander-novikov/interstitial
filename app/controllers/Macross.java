/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import play.mvc.With;

/**
 *
 * @author cruel
 */
@With(Secure.class)
@Check(Security.ACCESS)
public class Macross extends CRUD{
    
}
