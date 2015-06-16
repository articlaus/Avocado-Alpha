package com.controllers;

import org.zkoss.bind.annotation.AfterCompose;
import org.zkoss.bind.annotation.Command;
import org.zkoss.bind.annotation.ContextParam;
import org.zkoss.bind.annotation.ContextType;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.select.Selectors;
import org.zkoss.zul.Include;

/**
 * Created by Articlaus on 6/16/15.
 */
public class MenuController {
    @AfterCompose
    public void afterCompose(@ContextParam(ContextType.VIEW) Component view) {
        Selectors.wireComponents(view, this, false);
    }

    @Command
    public void employeeList() {
        Include mainInclude = (Include) Executions.getCurrent().getSession().getAttribute("mainInclude");
        mainInclude.setSrc("employeeList.zul");
    }
}
