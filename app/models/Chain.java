package models;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import play.db.jpa.Model;

// TODO: Auto-generated Javadoc
/**
 * The Class Chain.
 */
@Entity
public class Chain extends Model{
	
	
	/** The name. */
	public String name;
	/** The version. */
	@ManyToOne
	public Version version;
	
	/** The steps. */
	@ManyToMany(cascade=CascadeType.ALL)
	public Set<Step> steps = new HashSet();

	/**
	 * Instantiates a new chain.
	 *
	 * @param name the name
	 * @param version the version
	 * @param steps the steps
	 */
	public Chain(String name, Version version, Set<Step> steps) {
		this.name = name;
		this.version = version;
		this.steps = steps;
	}


}
