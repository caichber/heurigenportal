// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package calendar.calendar.view;

import calendar.model.OpenTime;
import calendar.model.OpenTimeRecurring;
import java.lang.String;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(new OpenTimeConverter());
        registry.addConverter(new OpenTimeRecurringConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
    static class calendar.calendar.view.ApplicationConversionServiceFactoryBean.OpenTimeConverter implements Converter<OpenTime, String> {
        public String convert(OpenTime openTime) {
            return new StringBuilder().append(openTime.getBeginTime1()).append(" ").append(openTime.getEndTime1()).append(" ").append(openTime.getBeginTime2()).append(" ").append(openTime.getEndTime2()).toString();
        }
        
    }
    
    static class calendar.calendar.view.ApplicationConversionServiceFactoryBean.OpenTimeRecurringConverter implements Converter<OpenTimeRecurring, String> {
        public String convert(OpenTimeRecurring openTimeRecurring) {
            return new StringBuilder().append(openTimeRecurring.getBeginTime1()).append(" ").append(openTimeRecurring.getEndTime1()).append(" ").append(openTimeRecurring.getBeginTime2()).append(" ").append(openTimeRecurring.getEndTime2()).toString();
        }
        
    }
    
}