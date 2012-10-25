/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import play.data.validation.Required;
import play.db.jpa.Model;

/**
 *
 * @author cruel
 */
@Entity
public class UserGroupAccess extends Model{
    @ManyToOne
    public UserGroup userGroup;
    @Required
    public String pattern;
		
    public UserGroupAccess(UserGroup userGroup, String pattern) {
        this.userGroup = userGroup;
        this.pattern = pattern;
    }
}
