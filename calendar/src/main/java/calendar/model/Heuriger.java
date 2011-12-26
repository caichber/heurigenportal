package calendar.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity
public class Heuriger {

	private String name;
	
    @OneToMany(cascade = CascadeType.ALL)
    private Set<OpenTime> openTimes = new HashSet<OpenTime>();
}
