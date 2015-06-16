package com.controllers;

import org.zkoss.bind.AnnotateBinder;
import org.zkoss.bind.annotation.AfterCompose;
import org.zkoss.bind.annotation.ContextParam;
import org.zkoss.bind.annotation.ContextType;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.select.Selectors;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Articlaus on 6/16/15.
 */
public class EmployeeListPanelController {
    List<String> datas;

    @AfterCompose
    public void afterCompose(@ContextParam(ContextType.VIEW) Component view) {
        Selectors.wireComponents(view, this, false);

        datas = new ArrayList<>();

        for (int i = 0; i < 10.; i++) {
            datas.add("" + i);
        }
    }

    public List<String> getDatas() {
        return datas;
    }

    public void setDatas(List<String> datas) {
        this.datas = datas;
    }
}
