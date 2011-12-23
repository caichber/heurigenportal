package calendar.web;

import calendar.model.OpeningTimeWeek;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "openingtimeweeks", formBackingObject = OpeningTimeWeek.class)
@RequestMapping("/openingtimeweeks")
@Controller
public class OpeningTimeWeekController {
}
