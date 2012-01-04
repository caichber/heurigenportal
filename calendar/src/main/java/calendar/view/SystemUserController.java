package calendar.view;

import calendar.model.SystemUser;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "systemusers", formBackingObject = SystemUser.class)
@RequestMapping("/systemusers")
@Controller
public class SystemUserController {
}
