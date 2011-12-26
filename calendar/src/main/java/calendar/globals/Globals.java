package calendar.globals;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class Globals {
	public final static String DATE_FORMAT_SHORT = "dd.MM.yyyy";
	public final static Date ENDLESS;
	static {
		try {
			ENDLESS = new SimpleDateFormat(DATE_FORMAT_SHORT).parse("31.12.9999");
		} catch (ParseException e) {
			throw new RuntimeException(e);
		}
	}
}
