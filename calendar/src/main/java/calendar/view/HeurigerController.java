package calendar.view;

import calendar.model.Heuriger;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "heurigers", formBackingObject = Heuriger.class)
@RequestMapping("/heurigers")
@Controller
public class HeurigerController {
}
