/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import javax.persistence.Entity;
import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class Tag extends Model {
    public Long pub_id;
    @Required
    public String name;
    
    public Tag(String name) {
        this.name = name;
    }
}
