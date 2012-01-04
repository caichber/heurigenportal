package calendar.view;

import calendar.model.SystemAuthority;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "systemauthoritys", formBackingObject = SystemAuthority.class)
@RequestMapping("/systemauthoritys")
@Controller
public class SystemAuthorityController {
}
