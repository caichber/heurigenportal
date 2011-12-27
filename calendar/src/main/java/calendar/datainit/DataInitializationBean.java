package calendar.datainit;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.transaction.annotation.Transactional;

import calendar.model.SystemAuthority;
import calendar.model.SystemUser;

public class DataInitializationBean {
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void initData() {
		final SystemUser admin = new SystemUser();
		admin.setEnabled(true);
		admin.setUsername("admin");
		admin.setPassword("123");
		admin.setAccountNonLocked(true);
		admin.setAccountNonExpired(true);
		admin.setCredentialsNonExpired(true);
		admin.setAuthorities(new ArrayList<GrantedAuthority>());
		
		final SystemAuthority auth = new SystemAuthority();
		auth.setAuthority("ROLE_ADMIN");
		em.persist(auth);
		
		admin.getAuthorities().add(auth);
		
		em.persist(admin);
	}
}
