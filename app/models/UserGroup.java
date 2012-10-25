package models;

import javax.persistence.Entity;

import play.db.jpa.Model;

// TODO: Auto-generated Javadoc
/**
 * The Class UserGroup.
 */
@Entity
public class UserGroup extends Model{
	
    /** The name. */
    public String name;

    /** The description. */
    public String description;

    /**
        * Instantiates a new user group.
        *
        * @param name the name
        * @param description the description
        */
    public UserGroup(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public String toString() {
        return name;
    }
}
