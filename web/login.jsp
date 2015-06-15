<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--<%@ include file="/common/taglibs.jsp" %>--%>
<%@ taglib uri="http://www.zkoss.org/jsp/zul" prefix="z" %>

<!--
Name: Con - Admin Dashboard with Material Design
Version: 2.0.2
Author: nK
Website: http://nkdev.info
Support: http://nk.ticksy.com
Purchase: http://themeforest.net/item/con-material-admin-dashboard-template/10621512?ref=nKdev
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
Copyright 2015.
-->
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Хүний Нөөцийн програм</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>

    <link rel="icon" type="image/png" href="assets/_con/images/icon.png">

    <!-- nanoScroller -->
    <link rel="stylesheet" type="text/css" href="assets/nanoScroller/nanoscroller.css"/>


    <!-- FontAwesome -->
    <link rel="stylesheet" type="text/css" href="assets/font-awesome/css/font-awesome.min.css"/>

    <!-- Material Design Icons -->
    <link rel="stylesheet" type="text/css" href="assets/material-design-icons/css/material-design-icons.min.css"/>

    <!-- IonIcons -->
    <link rel="stylesheet" type="text/css" href="assets/ionicons/css/ionicons.min.css"/>

    <!-- WeatherIcons -->
    <link rel="stylesheet" type="text/css" href="assets/weatherIcons/css/weather-icons.min.css"/>
    <!-- Main -->
    <link rel="stylesheet" type="text/css" href="assets/_con/css/_con.min.css"/>

    <!--[if lt IE 9]>
    <script src="assets/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
</head>

<body>
<z:page id="loginPage">
    <z:panel id="loginPanel" apply="org.zkoss.bind.BindComposer"
             viewModel="@id('log') @init('com.LoginController')">
        <z:panelchildren>
            <section id="sign-in">

                <!-- Background Bubbles -->
                <canvas id="bubble-canvas"></canvas>
                <!-- /Background Bubbles -->

                <!-- Sign In Form -->
                <form action="dashboard.html">

                    <div class="card-panel">


                        <div class="row">
                            <div class="col"></div>
                        </div>

                        <!-- Username -->
                        <div class="input-field">
                            <i class="fa fa-user prefix"></i>
                            <z:textbox id="username_input" sclass="validate"/>
                                <%--<input id="username-input" type="text" class="validate">--%>
                            <label for="username_input">Хэрэглэгчийн нэр</label>
                        </div>
                        <!-- /Username -->

                        <!-- Password -->
                        <div class="input-field">
                            <i class="fa fa-unlock-alt prefix"></i>
                            <z:textbox type="password" id="password_input" sclass="validate"/>
                                <%--<input id="password-input" type="password" class="validate">--%>
                            <label for="password_input">Password</label>
                        </div>
                        <!-- /Password -->

                        <div class="switch">
                            <label>
                                <input type="checkbox" checked/>
                                <span class="lever"></span>
                                Remember
                            </label>
                        </div>

                            <%--<button sclass="waves-effect waves-light btn-large z-depth-0 z-depth-1-hover" label="Нэвтрэх" onClick="@command('loginCheck')"/>--%>
                        <button sclass="waves-effect waves-light btn-large z-depth-0 z-depth-1-hover">Sign In</button>
                    </div>

                    <div class="links right-align">
                        <a href="page-forgot-password.html">Forgot Password?</a>
                    </div>

                </form>
                <!-- /Sign In Form -->

            </section>
        </z:panelchildren>
    </z:panel>
</z:page>

<!-- DEMO [REMOVE IT ON PRODUCTION] -->
<script type="text/javascript" src="assets/_con/js/_demo.js"></script>

<!-- jQuery -->
<script type="text/javascript" src="assets/jquery/jquery.min.js"></script>

<!-- jQuery RAF (improved animation performance) -->
<script type="text/javascript" src="assets/jqueryRAF/jquery.requestAnimationFrame.min.js"></script>

<!-- nanoScroller -->
<script type="text/javascript" src="assets/nanoScroller/jquery.nanoscroller.min.js"></script>

<!-- Materialize -->
<script type="text/javascript" src="assets/materialize/js/materialize.min.js"></script>

<!-- Sortable -->
<script type="text/javascript" src="assets/sortable/Sortable.min.js"></script>

<!-- Main -->
<script type="text/javascript" src="assets/_con/js/_con.min.js"></script>

</body>

</html>