package calendar.web;

import calendar.model.DayOfWeek;
import calendar.model.OpeningTime;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.convert.converter.Converter;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "openingtimes", formBackingObject = OpeningTime.class)
@RequestMapping("/openingtimes")
@Controller
public class OpeningTimeController {

}
