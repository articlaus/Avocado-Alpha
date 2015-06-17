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
<%@ taglib uri="http://www.zkoss.org/jsp/zul" prefix="z" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!--[if lt IE 7]> <html class="lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Con - Admin Dashboard with Material Design</title>

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
    <!-- Full Calendar -->
    <link rel="stylesheet" type="text/css" href="assets/fullcalendar/fullcalendar.min.css"/>
    <!-- WeatherIcons -->
    <link rel="stylesheet" type="text/css" href="assets/weatherIcons/css/weather-icons.min.css"/>
    <!-- Main -->
    <link rel="stylesheet" type="text/css" href="assets/_con/css/_con.min.css"/>

    <!--[if lt IE 9]>
    <script src="assets/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
    <z:zkhead/>
</head>

<body>
<z:page id="indexPage">
    <z:panel id="employeeListPanel" apply="org.zkoss.bind.BindComposer"
             viewModel="@id('elp') @init('com.controllers.EmployeeListPanelController')">
        <z:panelchildren>
            <!--
            Top Navbar
            -->
            <nav class="navbar-top">
                <div class="nav-wrapper">


                    <!-- Logo -->
                    <a href="#!" class="brand-logo">
                        <img src="assets/_con/images/logo.png" alt="Con">
                    </a>
                    <!-- /Logo -->

                    <!-- Menu -->
                    <ul>
                        <li><a href="#!" class="search-bar-toggle"><i class="mdi-action-search"></i></a>
                        </li>
                        <li class="user">
                            <a class="dropdown-button" href="#!" data-activates="user-dropdown">
                                <img src="assets/_con/images/user.jpg" alt="John Doe" class="circle">John Doe<i
                                    class="mdi-navigation-expand-more right"></i>
                            </a>

                            <ul id="user-dropdown" class="dropdown-content">
                                <li><a href="page-profile.html"><i class="fa fa-user"></i> Profile</a>
                                </li>
                                <li><a href="mail-inbox.html"><i class="fa fa-envelope"></i> Messages <span
                                        class="badge new">2</span></a>
                                </li>
                                <li><a href="#!"><i class="fa fa-cogs"></i> Settings</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="page-sign-in.html"><i class="fa fa-sign-out"></i> Logout</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- /Menu -->

                </div>
            </nav>
            <!-- /Top Navbar -->


            <!--
            Yay Sidebar
            -->
            <aside class="yaybar yay-shrink yay-hide-to-small yay-gestures">

                <div class="top">
                    <div>

                        <!-- Logo -->
                        <a href="#!" class="brand-logo">
                            <img src="assets/_con/images/logo-white.png" alt="Con">
                        </a>
                        <!-- /Logo -->
                    </div>
                </div>


                <div class="nano">
                    <div class="nano-content">

                        <ul>
                            <li class="label">Ажилтанууд</li>
                            <li>
                                <z:a iconSclass="fa fa-css3" zclass="none"
                                     sclass="yay-sub-toggle waves-effect waves-blue"
                                     onClick="@command('employeeList')">
                                    Жагсаалт
                                </z:a>
                            </li>


                            <li class="label">Elements</li>
                            <li>
                                <a class="yay-sub-toggle waves-effect waves-blue"><i class="fa fa-css3"></i> CSS<span
                                        class="yay-collapse-icon mdi-navigation-expand-more"></span><z:div
                                        onClick="@command('testString')" zclass="none"></z:div></a>
                            </li>

                            <li>
                                <a class="yay-sub-toggle waves-effect waves-blue"><i class="fa fa-cubes"></i> UI
                                    Elements<span
                                            class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
                            </li>

                            <li class="label">Components</li>
                            <li>
                                <a class="yay-sub-toggle waves-effect waves-blue"><i class="fa fa-check-square-o"></i>
                                    Forms<span
                                            class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
                            </li>

                            <li class="open">
                                <a class="yay-sub-toggle waves-effect waves-blue"><i class="fa fa-globe"></i> Pages<span
                                        class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
                            </li>


                        </ul>

                    </div>
                </div>
            </aside>
            <!-- /Yay Sidebar -->


            <!-- Main Content -->
            <section class="content-wrap">


                <!-- Breadcrumb -->
                <div class="page-title">

                    <div class="row">
                        <div class="col s12 m9 l10">
                            <h1>Blank</h1>
                        </div>
                        <div class="col s12 m3 l2 right-align">
                            <a href="#!" class="btn grey lighten-3 grey-text z-depth-0 chat-toggle"><i
                                    class="fa fa-comments"></i></a>
                        </div>
                    </div>

                </div>
                <!-- /Breadcrumb -->

                <div class="row">

                    <div class="col s12 l12">
                        <!-- Employee Table -->
                        <div class="card">

                                <%--<z:grid zclass="none" sclass="table table-bordered table-hover"--%>
                                <%--model="@bind(elp.datas)">--%>
                                <%--<z:columns>--%>
                                <%--<z:column label="name" zclass="none" sclass="table table-bordered table-hover"/>--%>
                                <%--<z:column label="name" zclass="none" sclass="table table-bordered table-hover"/>--%>
                                <%--</z:columns>--%>
                                <%--<z:rows zclass="none" sclass="table table-bordered table-hover">--%>
                                <%--<z:template name="model" zclass="none">--%>
                                <%--<z:row zclass="none" sclass="table table-bordered table-hover">--%>
                                <%--<z:label value="@load(each)"/>--%>
                                <%--<z:label value="@load(each)"/>--%>
                                <%--</z:row>--%>
                                <%--</z:template>--%>
                                <%--</z:rows>--%>
                                <%--</z:grid>--%>


                            <table id="table1" class="display table table-bordered table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                </tr>
                                </thead>
                                <tbody>
                                <z:html id="htmlTag"/>
                                </tbody>
                            </table>
                        </div>
                        <!-- / Employee Table  -->
                    </div>
                </div>

            </section>
            <!-- /Main Content -->

            <!-- Search Bar -->
            <div class="search-bar">
                <div class="layer-overlay"></div>
                <div class="layer-content">
                    <form action="#!">
                        <!-- Header -->
                        <a class="search-bar-toggle grey-text text-darken-2" href="#!"><i
                                class="mdi-navigation-close"></i></a>

                        <!-- Search Input -->
                        <div class="input-field">
                            <i class="mdi-action-search prefix"></i>
                            <input type="text" name="con-search" placeholder="Search...">
                        </div>

                        <!-- Search Results -->
                        <div class="search-results">

                            <div class="row">
                                <div class="col s12 l4">
                                    <h4>Users</h4>

                                    <div class="each-result">
                                        <img src="assets/_con/images/user2.jpg" alt="Felecia Castro"
                                             class="circle photo">

                                        <div class="title">Felecia Castro</div>
                                        <div class="label">Content Manager</div>
                                    </div>

                                    <div class="each-result">
                                        <img src="assets/_con/images/user3.jpg" alt="Max Brooks" class="circle photo">

                                        <div class="title">Max Brooks</div>
                                        <div class="label">Programmer</div>
                                    </div>

                                    <div class="each-result">
                                        <img src="assets/_con/images/user4.jpg" alt="Patsy Griffin"
                                             class="circle photo">

                                        <div class="title">Patsy Griffin</div>
                                        <div class="label">Support</div>
                                    </div>

                                    <div class="each-result">
                                        <img src="assets/_con/images/user6.jpg" alt="Vernon Garrett"
                                             class="circle photo">

                                        <div class="title">Vernon Garrett</div>
                                        <div class="label">Photographer</div>
                                    </div>
                                </div>
                                <div class="col s12 l4">
                                    <h4>Articles</h4>

                                    <div class="each-result">
                                        <div class="icon circle blue white-text">MD</div>
                                        <div class="title">Material Design</div>
                                        <div class="label nowrap">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.
                                            Eligendi
                                            consequatur debitis veritatis dolorum, enim libero!
                                        </div>
                                    </div>

                                    <div class="each-result">
                                        <div class="icon circle teal white-text">
                                            <i class="fa fa-dashboard"></i>
                                        </div>
                                        <div class="title">Admin Dashboard</div>
                                        <div class="label nowrap">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.
                                            Eligendi
                                            consequatur debitis veritatis dolorum, enim libero!
                                        </div>
                                    </div>

                                    <div class="each-result">
                                        <div class="icon circle orange white-text">RD</div>
                                        <div class="title">Responsive Design</div>
                                        <div class="label nowrap">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.
                                            Eligendi
                                            consequatur debitis veritatis dolorum, enim libero!
                                        </div>
                                    </div>

                                    <div class="each-result">
                                        <div class="icon circle red white-text">
                                            <i class="fa fa-tablet"></i>
                                        </div>
                                        <div class="title">Mobile First</div>
                                        <div class="label nowrap">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.
                                            Eligendi
                                            consequatur debitis veritatis dolorum, enim libero!
                                        </div>
                                    </div>
                                </div>
                                <div class="col s12 l4">
                                    <h4>Posts</h4>

                                    <div class="no-result">No results were found ;(</div>
                                </div>
                            </div>

                        </div>

                    </form>
                </div>
            </div>
            <!-- /Search Bar -->


            <footer>&copy; 2015 <strong>GGTC</strong>. All rights reserved.
            </footer>


        </z:panelchildren>
    </z:panel>
</z:page>

<!-- jQuery -->
<script type="text/javascript" src="assets/jquery/jquery.min.js"></script>

<!-- jQuery RAF (improved animation performance) -->
<script type="text/javascript" src="assets/jqueryRAF/jquery.requestAnimationFrame.min.js"></script>

<!-- nanoScroller -->
<script type="text/javascript" src="assets/nanoScroller/jquery.nanoscroller.min.js"></script>

<!-- Materialize -->
<script type="text/javascript" src="assets/materialize/js/materialize.min.js"></script>

<!-- Full Calendar -->
<script type="text/javascript" src="assets/fullcalendar/moment.min.js"></script>
<script type="text/javascript" src="assets/fullcalendar/jquery-ui.custom.min.js"></script>
<script type="text/javascript" src="assets/fullcalendar/fullcalendar.min.js"></script>

<!-- Sortable -->
<script type="text/javascript" src="assets/sortable/Sortable.min.js"></script>

<!-- Main -->
<script type="text/javascript" src="assets/_con/js/_con.min.js"></script>

</body>

</html>