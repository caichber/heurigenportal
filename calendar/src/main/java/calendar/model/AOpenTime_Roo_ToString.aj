// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package calendar.model;

import java.lang.String;

privileged aspect AOpenTime_Roo_ToString {
    
    public String AOpenTime.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("BeginTime1: ").append(getBeginTime1()).append(", ");
        sb.append("BeginTime2: ").append(getBeginTime2()).append(", ");
        sb.append("BeginTime3: ").append(getBeginTime3()).append(", ");
        sb.append("EndTime1: ").append(getEndTime1()).append(", ");
        sb.append("EndTime2: ").append(getEndTime2()).append(", ");
        sb.append("EndTime3: ").append(getEndTime3()).append(", ");
        sb.append("Heuriger: ").append(getHeuriger()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
