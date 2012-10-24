package models;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import play.db.jpa.Model;

// TODO: Auto-generated Javadoc
/**
 * The Class User.
 */
@Entity
@Table(name="Users")
public class User extends Model{
	
	/** The user group. */
	@ManyToOne
	public UserGroup userGroup;
	
	/** The user status. */
	@ManyToOne
	public UserStatus userStatus;
	
	/** The email. */
	public String email;
	
	/** The login. */
	public String login;
	
	/** The password. */
	public String password;
	
	/**
	 * Instantiates a new user.
	 *
	 * @param userGroup the user group
	 * @param userStatus the user status
	 * @param email the email
	 * @param login the login
	 * @param password the password
	 */
	public User(UserGroup userGroup, UserStatus userStatus, 
			String email, String login, String password){
	
		this.userGroup = userGroup;
		this.userStatus = userStatus;
		this.email = email;
		this.login = login;
		this.password = password;
	}
	
}
