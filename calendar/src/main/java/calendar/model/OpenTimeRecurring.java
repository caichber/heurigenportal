package calendar.model;

import javax.persistence.Enumerated;
import javax.validation.constraints.NotNull;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity
public class OpenTimeRecurring extends AOpenTime {

	@NotNull
    @Enumerated
    private DayOfWeek openDay;
}
