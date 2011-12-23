package calendar.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity
public class OpeningTimeWeek {

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<OpeningTime> openingTimes = new HashSet<OpeningTime>();
    
}
