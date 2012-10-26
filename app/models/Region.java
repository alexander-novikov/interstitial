package models;

import javax.persistence.Entity;

import play.db.jpa.Model;

@Entity
public class Region extends Model{
	
    public String name;
    public String code;

    public Region(String name, String code) {
        super();
        this.name = name;
        this.code = code;
    }

    public String toString() {
        return name;
    }
}
