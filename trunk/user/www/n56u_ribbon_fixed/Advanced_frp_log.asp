<!DOCTYPE html>
<html>

<head>
    <title>
        <#Web_Title#> - <#menu5_25_1#>
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">

    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="icon" href="images/favicon.png">
    <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/bootstrap/css/main.css">
    <link rel="stylesheet" type="text/css" href="/bootstrap/css/engage.itoggle.css">

    <script type="text/javascript" src="/jquery.js"></script>
    <script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/bootstrap/js/engage.itoggle.min.js"></script>
    <script type="text/javascript" src="/state.js"></script>
    <script type="text/javascript" src="/general.js"></script>
    <script type="text/javascript" src="/itoggle.js"></script>
    <script type="text/javascript" src="/popup.js"></script>
    <script type="text/javascript" src="/help.js"></script>

    <script>
        var $j = jQuery.noConflict();

        $j(document).ready(function () {
            var textArea = E('textarea');
            textArea.scrollTop = textArea.scrollHeight;
        });

        function initial() {
            var id_menu = 8;
            show_banner(2);
            if (get_ap_mode()) {
                id_menu = id_menu - 4;
            }
            if (!found_app_scutclient()) {
                id_menu = id_menu - 1;
            }
            if (!found_app_mentohust()) {
                id_menu = id_menu - 1;
            }
            show_menu(5, 10, id_menu);
            show_footer();
        }
    </script>

    <style>
        .nav-tabs>li>a {
            padding-right: 6px;
            padding-left: 6px;
        }
    </style>
</head>

<body onload="initial();" onunLoad="return unload_body();">

    <div class="wrapper">
        <div class="container-fluid" style="padding-right: 0px">
            <div class="row-fluid">
                <div class="span3">
                    <center>
                        <div id="logo"></div>
                    </center>
                </div>
                <div class="span9">
                    <div id="TopBanner"></div>
                </div>
            </div>
        </div>

        <div id="Loading" class="popup_bg"></div>

        <iframe name="hidden_frame" id="hidden_frame" src="" width="0" height="0" frameborder="0"></iframe>

        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3">
                    <!--Sidebar content-->
                    <!--=====Beginning of Main Menu=====-->
                    <div class="well sidebar-nav side_nav" style="padding: 0px;">
                        <ul id="mainMenu" class="clearfix"></ul>
                        <ul class="clearfix">
                            <li>
                                <div id="subMenu" class="accordion"></div>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="span9">
                    <!--Body content-->
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box well grad_colour_dark_blue">
                                <h2 class="box_head round_top">
                                    <#menu5_7#> - <#menu5_7_9#>
                                </h2>
                                <div class="round_bottom">
                                    <div class="row-fluid">
                                        <div id="tabMenu" class="submenuBlock"></div>
                                        <table width="100%" cellpadding="4" cellspacing="0" class="table">
                                            <tr>
                                                <td style="border-top: 0 none; padding-bottom: 0px;">
                                                    <textarea rows="23" class="span12" style="height:377px; font-family:'Courier New', Courier, mono; font-size:13px;" readonly="readonly" wrap="off" id="textarea"><% nvram_dump("frpc.log",""); %></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                            <td style="text-align: right; padding-bottom: 0px;">
                                                <input type="button" onClick="location.href=location.href" value="<#CTL_refresh#>" class="btn btn-primary" style="width: 219px;">
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer"></div>
    </div>
</body>

</html>
