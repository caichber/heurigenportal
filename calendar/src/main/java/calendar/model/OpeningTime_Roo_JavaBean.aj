// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package calendar.model;

import calendar.model.DayOfWeek;
import java.lang.String;

privileged aspect OpeningTime_Roo_JavaBean {
    
    public String OpeningTime.getBeginTime() {
        return this.beginTime;
    }
    
    public void OpeningTime.setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }
    
    public String OpeningTime.getEndTime() {
        return this.endTime;
    }
    
    public void OpeningTime.setEndTime(String endTime) {
        this.endTime = endTime;
    }
    
    public DayOfWeek OpeningTime.getDayOfWeek() {
        return this.dayOfWeek;
    }
    
    public void OpeningTime.setDayOfWeek(DayOfWeek dayOfWeek) {
        this.dayOfWeek = dayOfWeek;
    }
    
}