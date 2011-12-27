package calendar.model;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.security.core.GrantedAuthority;

@SuppressWarnings("serial")
@RooJavaBean
@RooToString
@RooEntity
public class SystemAuthority implements GrantedAuthority {

    private String authority;
}
