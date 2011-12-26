package calendar.datainit;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

public class DataInitializationBean {
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void initData() {

	}
}
