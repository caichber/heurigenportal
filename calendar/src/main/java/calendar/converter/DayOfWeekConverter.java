package calendar.converter;

import org.springframework.context.ApplicationContext;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.converter.Converter;

import calendar.model.DayOfWeek;

public class DayOfWeekConverter implements Converter<DayOfWeek, String>{

	private ApplicationContext ctx;
	
	public DayOfWeekConverter(ApplicationContext ctx) {
		this.ctx = ctx;
	}

	@Override
	public String convert(DayOfWeek source) {
		return ctx.getMessage("label_calendar_model_dayofweeks_"+source.toString().toLowerCase(),null, LocaleContextHolder.getLocale());
	}

}
