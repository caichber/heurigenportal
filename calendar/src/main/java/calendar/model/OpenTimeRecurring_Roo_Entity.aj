// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package calendar.model;

import calendar.model.OpenTimeRecurring;
import java.lang.Long;
import java.util.List;
import javax.persistence.Entity;

privileged aspect OpenTimeRecurring_Roo_Entity {
    
    declare @type: OpenTimeRecurring: @Entity;
    
    public static long OpenTimeRecurring.countOpenTimeRecurrings() {
        return entityManager().createQuery("SELECT COUNT(o) FROM OpenTimeRecurring o", Long.class).getSingleResult();
    }
    
    public static List<OpenTimeRecurring> OpenTimeRecurring.findAllOpenTimeRecurrings() {
        return entityManager().createQuery("SELECT o FROM OpenTimeRecurring o", OpenTimeRecurring.class).getResultList();
    }
    
    public static OpenTimeRecurring OpenTimeRecurring.findOpenTimeRecurring(Long id) {
        if (id == null) return null;
        return entityManager().find(OpenTimeRecurring.class, id);
    }
    
    public static List<OpenTimeRecurring> OpenTimeRecurring.findOpenTimeRecurringEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM OpenTimeRecurring o", OpenTimeRecurring.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}