package com.controllers;

import org.zkoss.bind.annotation.AfterCompose;
import org.zkoss.bind.annotation.Command;
import org.zkoss.bind.annotation.ContextParam;
import org.zkoss.bind.annotation.ContextType;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.select.Selectors;
import org.zkoss.zk.ui.util.Clients;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Articlaus on 6/16/15.
 */
public class CalendarController {

    String initCalendar;
    String javascript;

    @AfterCompose
    public void afterCompose(@ContextParam(ContextType.VIEW) Component view) {
        Selectors.wireComponents(view, this, false);
        initCalendar();
        loadCalendarValues();
        Clients.evalJavaScript(initCalendar + javascript);
    }

    @Command
    public void employeeList() {
        Executions.sendRedirect("employeeList.jsp");
    }

    @Command
    public void testString(){
        System.out.println("Hello World!");
    }

    public void initCalendar() {
        Date currentDate = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

        initCalendar = "$('#calendar').fullCalendar({height: 700,header: {left: 'prev,next today', center: 'title',right: 'month,agendaWeek,agendaDay'}," +
                "defaultDate: '" + format.format(currentDate) + "',editable: false,droppable: false,drop: function() {if (removeDraggable.is(':checked')) { $(this).remove();}},";
    }


    public void loadCalendarValues() {
        javascript = "events: [";

        String title = "{title:'Танилцуулга Бэлдэх',";
        String startDate = "start:'2015-06-01',";
        String endDate = "end:'2015-07-01'}";

        javascript = javascript + title + startDate + endDate + "]});";
    }


}
