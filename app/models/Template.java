package models;

import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import play.data.validation.MaxSize;


import play.data.validation.MaxSize;
import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class Template extends Model {

    @Lob
    @Required
    @MaxSize(9000)
    public String html;
    @ManyToOne
    public Platform platform;
    @ManyToOne
    public Region region;
    
    public Template(String html, Platform platform, Region region) {
        this.html = html;
        this.platform = platform;
        this.region = region;
    }
}
