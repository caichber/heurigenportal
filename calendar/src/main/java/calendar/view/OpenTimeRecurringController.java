package calendar.view;

import calendar.model.OpenTimeRecurring;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "opentimerecurrings", formBackingObject = OpenTimeRecurring.class)
@RequestMapping("/opentimerecurrings")
@Controller
public class OpenTimeRecurringController {
}
