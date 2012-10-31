/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import javax.persistence.Entity;
import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class Device extends Model {
    @Required
    public String name;
    
    public Device(String name) {
        this.name = name;
    }
}
