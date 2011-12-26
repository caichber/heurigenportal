package calendar.calendar.view;

import calendar.model.OpenTime;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "opentimes", formBackingObject = OpenTime.class)
@RequestMapping("/opentimes")
@Controller
public class OpenTimeController {
}
