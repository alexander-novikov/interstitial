package models;

import javax.persistence.Entity;

import play.db.jpa.Model;

// TODO: Auto-generated Javadoc
/**
 * The Class UserStatus.
 */
@Entity
public class UserStatus extends Model {
	
    /** The name. */
    String name;

    /**
        * Instantiates a new user status.
        *
        * @param name the name
        */
    public UserStatus(String name) {
        this.name = name;
    }
    
    public String toString() {
        return name;
    }	
}
