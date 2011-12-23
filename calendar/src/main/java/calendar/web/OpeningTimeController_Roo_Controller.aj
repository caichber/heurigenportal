// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package calendar.web;

import calendar.model.DayOfWeek;
import calendar.model.OpeningTime;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Arrays;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect OpeningTimeController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String OpeningTimeController.create(@Valid OpeningTime openingTime, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("openingTime", openingTime);
            return "openingtimes/create";
        }
        uiModel.asMap().clear();
        openingTime.persist();
        return "redirect:/openingtimes/" + encodeUrlPathSegment(openingTime.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String OpeningTimeController.createForm(Model uiModel) {
        uiModel.addAttribute("openingTime", new OpeningTime());
        return "openingtimes/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String OpeningTimeController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("openingtime", OpeningTime.findOpeningTime(id));
        uiModel.addAttribute("itemId", id);
        return "openingtimes/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String OpeningTimeController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("openingtimes", OpeningTime.findOpeningTimeEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) OpeningTime.countOpeningTimes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("openingtimes", OpeningTime.findAllOpeningTimes());
        }
        return "openingtimes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String OpeningTimeController.update(@Valid OpeningTime openingTime, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("openingTime", openingTime);
            return "openingtimes/update";
        }
        uiModel.asMap().clear();
        openingTime.merge();
        return "redirect:/openingtimes/" + encodeUrlPathSegment(openingTime.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String OpeningTimeController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("openingTime", OpeningTime.findOpeningTime(id));
        return "openingtimes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String OpeningTimeController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        OpeningTime.findOpeningTime(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/openingtimes";
    }
    
    @ModelAttribute("dayofweeks")
    public Collection<DayOfWeek> OpeningTimeController.populateDayOfWeeks() {
        return Arrays.asList(DayOfWeek.class.getEnumConstants());
    }
    
    @ModelAttribute("openingtimes")
    public Collection<OpeningTime> OpeningTimeController.populateOpeningTimes() {
        return OpeningTime.findAllOpeningTimes();
    }
    
    String OpeningTimeController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
