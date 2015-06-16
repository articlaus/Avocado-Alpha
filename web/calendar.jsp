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
    <z:panel id="indexPagePanel" apply="org.zkoss.bind.BindComposer"
             viewModel="@id('idp') @init('com.controllers.CalendarController')">
        <z:panelchildren>
            <!--
            Top Navbar
            Options:
            .navbar-dark - dark color scheme
            .navbar-static - static navbar
            .navbar-under - under sidebar
            -->
            <nav class="navbar-top">
                <div class="nav-wrapper">

                    <%--<!-- Sidebar toggle -->--%>
                    <%--<a href="#" class="yay-toggle">--%>
                        <%--<div class="burg1"></div>--%>
                        <%--<div class="burg2"></div>--%>
                        <%--<div class="burg3"></div>--%>
                    <%--</a>--%>
                    <%--<!-- Sidebar toggle -->--%>

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
            Options [you can use all of theme classnames]:
            .yay-hide-to-small - no hide menu, just set it small with big icons
            .yay-static - stop using fixed sidebar (will scroll with content)
            .yay-gestures - to show and hide menu using gesture swipes
            .yay-light - light color scheme
            .yay-hide-on-content-click - hide menu on content click

            Effects [you can use one of these classnames]:
            .yay-overlay - overlay content
            .yay-push - push content to right
            .yay-shrink - shrink content width
            -->
            <aside class="yaybar yay-shrink yay-hide-to-small yay-gestures">

                <div class="top">
                    <div>
                        <!-- Sidebar toggle -->
                        <a href="#" class="yay-toggle">
                            <div class="burg1"></div>
                            <div class="burg2"></div>
                            <div class="burg3"></div>
                        </a>
                        <!-- Sidebar toggle -->

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
                                    <z:a zclass="yay-sub-toggle waves-effect waves-blue"
                                         onClick="@command('employeeList')">
                                        Жагсаалт
                                    </z:a>
                            </li>


                            <li class="label">Elements</li>
                            <li>
                                <a class="yay-sub-toggle waves-effect waves-blue"><i class="fa fa-css3"></i> CSS<span
                                        class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
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
                        <!-- Calendar -->
                        <div class="card">
                            <div id="calendar"></div>
                        </div>
                        <!-- /Calendar -->
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


            <!--
            Chat
            .chat-light - light color scheme
            -->
            <div class="chat">
                <div class="layer-overlay"></div>

                <div class="layer-content">

                    <!-- Contacts -->
                    <div class="contacts">
                        <!-- Top Bar -->
                        <div class="topbar">
                            <a href="#!" class="text">Chat</a>
                            <a href="#!" class="chat-toggle"><i class="mdi-navigation-close"></i></a>
                        </div>
                        <!-- /Top Bar -->

                        <div class="nano">
                            <div class="nano-content">

                                <span class="label">Online</span>

                                <div class="user">
                                    <img src="assets/_con/images/user2.jpg" alt="Felecia Castro" class="circle photo">

                                    <div class="name">Felecia Castro</div>
                                    <div class="status">Lorem status</div>

                                    <div class="online"><i class="green-text fa fa-circle"></i>
                                    </div>
                                </div>

                                <div class="user">
                                    <img src="assets/_con/images/user3.jpg" alt="Max Brooks" class="circle photo">

                                    <div class="name">Max Brooks</div>
                                    <div class="status">Lorem status</div>

                                    <div class="online"><i class="green-text fa fa-circle"></i>
                                    </div>
                                </div>

                                <div class="user">
                                    <img src="assets/_con/images/user4.jpg" alt="Patsy Griffin" class="circle photo">

                                    <div class="name">Patsy Griffin</div>
                                    <div class="status">Lorem status</div>

                                    <div class="online"><i class="green-text fa fa-circle"></i>
                                    </div>
                                </div>

                                <div class="user">
                                    <img src="assets/_con/images/user5.jpg" alt="Chloe Morgan" class="circle photo">

                                    <div class="name">Chloe Morgan</div>
                                    <div class="status">Lorem status</div>

                                    <div class="online"><i class="green-text fa fa-circle"></i>
                                    </div>
                                </div>

                                <div class="user">
                                    <img src="assets/_con/images/user6.jpg" alt="Vernon Garrett" class="circle photo">

                                    <div class="name">Vernon Garrett</div>
                                    <div class="status">Lorem status</div>

                                    <div class="online"><i class="yellow-text fa fa-circle"></i>
                                    </div>
                                </div>

                                <div class="user">
                                    <img src="assets/_con/images/user7.jpg" alt="Greg Mcdonalid" class="circle photo">

                                    <div class="name">Greg Mcdonalid</div>
                                    <div class="status">Lorem status</div>

                                    <div class="online"><i class="yellow-text fa fa-circle"></i>
                                    </div>
                                </div>

                                <div class="user">
                                    <img src="assets/_con/images/user8.jpg" alt="Christian Jackson"
                                         class="circle photo">

                                    <div class="name">Christian Jackson</div>
                                    <div class="status">Lorem status</div>

                                    <div class="online"><i class="yellow-text fa fa-circle"></i>
                                    </div>
                                </div>


                                <span class="label">Offline</span>

                                <div class="user">
                                    <img src="assets/_con/images/user9.jpg" alt="Willie Kelly" class="circle photo">

                                    <div class="name">Willie Kelly</div>
                                    <div class="status">Lorem status</div>
                                </div>

                                <div class="user">
                                    <img src="assets/_con/images/user10.jpg" alt="Jenny Phillips" class="circle photo">

                                    <div class="name">Jenny Phillips</div>
                                    <div class="status">Lorem status</div>
                                </div>

                                <div class="user">
                                    <img src="assets/_con/images/user11.jpg" alt="Darren Cunningham"
                                         class="circle photo">

                                    <div class="name">Darren Cunningham</div>
                                    <div class="status">Lorem status</div>
                                </div>

                                <div class="user">
                                    <img src="assets/_con/images/user12.jpg" alt="Sandra Cole" class="circle photo">

                                    <div class="name">Sandra Cole</div>
                                    <div class="status">Lorem status</div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- /Contacts -->

                    <!-- Messages -->
                    <div class="messages">

                        <!-- Top Bar with back link -->
                        <div class="topbar">
                            <a href="#!" class="chat-toggle"><i class="mdi-navigation-close"></i></a>
                            <a href="#!" class="chat-back"><i class="mdi-hardware-keyboard-arrow-left"></i> Back</a>
                        </div>
                        <!-- /Top Bar with back link -->

                        <!-- All messages list -->
                        <div class="list">
                            <div class="nano scroll-bottom">
                                <div class="nano-content">

                                    <div class="date">Monday, Feb 23, 8:23 pm</div>

                                    <div class="from-me">
                                        Hi, Felicia.
                                        <br>How are you?
                                    </div>

                                    <div class="clear"></div>

                                    <div class="from-them">
                                        <img src="assets/_con/images/user2.jpg" alt="John Doe" class="circle photo">Hi!
                                        I am
                                        good!
                                    </div>

                                    <div class="clear"></div>

                                    <div class="from-me">
                                        Glad to see you :)
                                        <br>This long text is intended to show how the chat will display it.
                                    </div>

                                    <div class="clear"></div>

                                    <div class="from-them">
                                        <img src="assets/_con/images/user2.jpg" alt="John Doe" class="circle photo">Also,
                                        we
                                        will
                                        send the longest word to show how it will fit in the chat window: <strong>Pneumonoultramicroscopicsilicovolcanoconiosis</strong>
                                    </div>

                                    <div class="date">Friday, Mar 10, 5:07 pm</div>

                                    <div class="from-me">
                                        Hi again!
                                    </div>

                                    <div class="clear"></div>

                                    <div class="from-them">
                                        <img src="assets/_con/images/user2.jpg" alt="John Doe" class="circle photo">Hi!
                                        Glad
                                        to
                                        see
                                        you.
                                    </div>

                                    <div class="clear"></div>

                                    <div class="from-me">
                                        I want to add you in my Facebook.
                                    </div>

                                    <div class="clear"></div>

                                    <div class="from-me">
                                        Can you give me your page?
                                    </div>

                                    <div class="clear"></div>

                                    <div class="from-them">
                                        <img src="assets/_con/images/user2.jpg" alt="John Doe" class="circle photo">I do
                                        not
                                        use
                                        Facebook. But you can follow me in Twitter.
                                    </div>

                                    <div class="clear"></div>

                                    <div class="from-me">
                                        It's good idea!
                                    </div>

                                    <div class="clear"></div>

                                    <div class="from-them">
                                        <img src="assets/_con/images/user2.jpg" alt="John Doe" class="circle photo">You
                                        can
                                        find
                                        me
                                        here - <a href="https://twitter.com/nkdevv">https://twitter.com/nkdevv</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- /All messages list -->

                        <!-- Send message -->
                        <div class="send">
                            <form action="#!">
                                <div class="input-field">
                                    <input id="chat-message" type="text" name="chat-message">
                                </div>

                                <button class="btn waves-effect z-depth-0"><i class="mdi-content-send"></i>
                                </button>
                            </form>
                        </div>
                        <!-- /Send message -->

                    </div>
                    <!-- /Messages -->
                </div>

            </div>
            <!-- /Chat -->

            <footer>&copy; 2015 <strong>GGTC</strong>. All rights reserved.
            </footer>
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

            <!-- Full Calendar -->
            <script type="text/javascript" src="assets/fullcalendar/moment.min.js"></script>
            <script type="text/javascript" src="assets/fullcalendar/jquery-ui.custom.min.js"></script>
            <script type="text/javascript" src="assets/fullcalendar/fullcalendar.min.js"></script>

            <!-- Sortable -->
            <script type="text/javascript" src="assets/sortable/Sortable.min.js"></script>

            <!-- Main -->
            <script type="text/javascript" src="assets/_con/js/_con.min.js"></script>

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