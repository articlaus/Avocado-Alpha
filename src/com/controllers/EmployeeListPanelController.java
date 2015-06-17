package com.controllers;

import org.zkoss.bind.AnnotateBinder;
import org.zkoss.bind.annotation.AfterCompose;
import org.zkoss.bind.annotation.ContextParam;
import org.zkoss.bind.annotation.ContextType;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.select.Selectors;
import org.zkoss.zk.ui.select.annotation.Wire;
import org.zkoss.zul.Html;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Articlaus on 6/16/15.
 */
public class EmployeeListPanelController {
    List<String> datas;
    @Wire
    Html htmlTag;


    @AfterCompose
    public void afterCompose(@ContextParam(ContextType.VIEW) Component view) {
        Selectors.wireComponents(view, this, false);
        System.out.println("htmlTag = " + htmlTag);

        String htmlTable = "";

        datas = new ArrayList<>();

        for (int i = 0; i < 10.; i++) {
            datas.add("" + i);
        }
        for (String data : datas) {
            htmlTable = htmlTable + "<tr><td>";
            htmlTable = htmlTable + data;
            htmlTable = htmlTable + "</td></tr>";
        }
        htmlTag.setContent(htmlTable);
    }

    public List<String> getDatas() {
        return datas;
    }

    public void setDatas(List<String> datas) {
        this.datas = datas;
    }
}
