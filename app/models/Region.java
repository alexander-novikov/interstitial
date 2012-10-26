package models;

import java.util.Comparator;
import javax.persistence.Entity;
import javax.persistence.OrderColumn;
import org.hibernate.annotations.Sort;
import org.hibernate.annotations.SortType;
import play.data.validation.Required;

import play.db.jpa.Model;

@Entity
public class Region extends Model{
    
    public static final Comparator<Region> ORDER_BY_NAME = new Comparator<Region>() {
        public int compare(Region e1, Region e2) {
            return e1.name.compareTo(e2.name);
        }
    };

    @Required
    public String name;
    @Required
    public String code;

    public Region(String name, String code) {
        super();
        this.name = name;
        this.code = code;
    }

    public String toString() {
        return name;
    }        
    
    public int compareTo(Region ts) {
        return this.name.compareTo(ts.name);            
    }
}
