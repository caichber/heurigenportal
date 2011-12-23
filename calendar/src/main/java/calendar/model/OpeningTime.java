package calendar.model;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.constraints.Pattern;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity
public class OpeningTime {

    @Pattern(regexp = "^([0-1][0-9]|[2][0-3]):([0-5][0-9])$")
    private String beginTime;

    @Pattern(regexp = "^([0-1][0-9]|[2][0-3]):([0-5][0-9])$")
    private String endTime;

    @Enumerated(EnumType.STRING)
    private DayOfWeek dayOfWeek;
}
