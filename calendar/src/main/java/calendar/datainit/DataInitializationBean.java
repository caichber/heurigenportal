package calendar.datainit;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import calendar.model.DayOfWeek;
import calendar.model.OpeningTime;

public class DataInitializationBean {
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public void initData() {
		em.persist(createOpeningTime("10:00", "23:00", DayOfWeek.Monday));
		em.persist(createOpeningTime("10:00", "23:00", DayOfWeek.Thursday));
		em.persist(createOpeningTime("10:00", "20:00", DayOfWeek.Wednesday));
		em.persist(createOpeningTime("10:00", "14:00", DayOfWeek.Tuesday));
	}
	
	private OpeningTime createOpeningTime(String begin, String end, DayOfWeek day) {
		final OpeningTime openingTime = new OpeningTime();
		openingTime.setBeginTime(begin);
		openingTime.setEndTime(end);
		openingTime.setDayOfWeek(day);
		return openingTime;
	}
}
