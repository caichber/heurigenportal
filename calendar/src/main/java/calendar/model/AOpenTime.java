package calendar.model;

import javax.validation.constraints.Pattern;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity(mappedSuperclass = true)
public abstract class AOpenTime {
    @Pattern(regexp = "^([0-1][0-9]|[2][0-3]):([0-5][0-9])$")
    private String beginTime1;

    @Pattern(regexp = "^([0-1][0-9]|[2][0-3]):([0-5][0-9])$")
    private String endTime1;
    
    @Pattern(regexp = "^([0-1][0-9]|[2][0-3]):([0-5][0-9])$")
    private String beginTime2;

    @Pattern(regexp = "^([0-1][0-9]|[2][0-3]):([0-5][0-9])$")
    private String endTime2;
    
    @Pattern(regexp = "^([0-1][0-9]|[2][0-3]):([0-5][0-9])$")
    private String beginTime3;

    @Pattern(regexp = "^([0-1][0-9]|[2][0-3]):([0-5][0-9])$")
    private String endTime3;
}
