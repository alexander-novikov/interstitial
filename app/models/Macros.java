/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import javax.persistence.Entity;
import play.data.validation.MaxSize;
import play.data.validation.Required;
import play.db.jpa.Model;

/**
 *
 * @author cruel
 */
@Entity
public class Macros extends Model{
    @Required
    public String name;
    @Required
    @MaxSize(9000)
    public String description;

    public Macros(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public String toString() {
        return name;
    }
}
