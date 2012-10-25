package models;

import javax.persistence.Entity;

import play.db.jpa.Model;

// TODO: Auto-generated Javadoc
/**
 * The Class Country.
 */
@Entity
public class Country extends Model{
	
    /** The name. */
    public String name;

    /** The code. */
    public String code;

    /**
        * Instantiates a new country.
        *
        * @param name the name
        * @param code the code
        */
    public Country(String name, String code) {
        super();
        this.name = name;
        this.code = code;
    }

    public String toString() {
        return name;
    }
}
