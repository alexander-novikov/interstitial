package models;

import java.util.Set;
import javax.persistence.*;
import org.hibernate.annotations.Sort;
import org.hibernate.annotations.SortType;
import play.data.validation.MaxSize;


import play.data.validation.MaxSize;
import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class Template extends Model {

    @Required
    public String name;
    @Lob
    @Required
    @MaxSize(9000)
    public String html;
    @ManyToOne
    public Platform platform;
    @ManyToMany(cascade=CascadeType.ALL)
    public Set<Region> region;
    
    public Template(String html, Platform platform, Set<Region> region) {
        this.html = html;
        this.platform = platform;
        this.region = region;
    }
    
    public String toString(){
        return name;
    }
}
