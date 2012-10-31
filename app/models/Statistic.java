/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class Statistic extends Model{
    @Required
    public Date date;
    public Long pub_id;
    @ManyToOne
    public Tag tag;
    @ManyToOne
    public Version version;
    @ManyToOne
    public Step step;
    @ManyToOne
    public Region region;
    @ManyToOne
    public Type type;
    @ManyToOne
    public Action action;
    @ManyToOne
    public Position position;
    @ManyToOne
    public Device device;
    @ManyToOne
    public Chain chain;
}
