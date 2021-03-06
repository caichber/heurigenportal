// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package calendar.view;

import calendar.model.Heuriger;
import calendar.model.OpenTime;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
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

privileged aspect HeurigerController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String HeurigerController.create(@Valid Heuriger heuriger, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("heuriger", heuriger);
            return "heurigers/create";
        }
        uiModel.asMap().clear();
        heuriger.persist();
        return "redirect:/heurigers/" + encodeUrlPathSegment(heuriger.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String HeurigerController.createForm(Model uiModel) {
        uiModel.addAttribute("heuriger", new Heuriger());
        return "heurigers/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String HeurigerController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("heuriger", Heuriger.findHeuriger(id));
        uiModel.addAttribute("itemId", id);
        return "heurigers/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String HeurigerController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("heurigers", Heuriger.findHeurigerEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) Heuriger.countHeurigers() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("heurigers", Heuriger.findAllHeurigers());
        }
        return "heurigers/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String HeurigerController.update(@Valid Heuriger heuriger, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("heuriger", heuriger);
            return "heurigers/update";
        }
        uiModel.asMap().clear();
        heuriger.merge();
        return "redirect:/heurigers/" + encodeUrlPathSegment(heuriger.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String HeurigerController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("heuriger", Heuriger.findHeuriger(id));
        return "heurigers/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String HeurigerController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Heuriger.findHeuriger(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/heurigers";
    }
    
    @ModelAttribute("heurigers")
    public Collection<Heuriger> HeurigerController.populateHeurigers() {
        return Heuriger.findAllHeurigers();
    }
    
    @ModelAttribute("opentimes")
    public Collection<OpenTime> HeurigerController.populateOpenTimes() {
        return OpenTime.findAllOpenTimes();
    }
    
    String HeurigerController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
