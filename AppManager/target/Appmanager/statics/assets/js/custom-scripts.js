/*------------------------------------------------------
    Author : www.webthemez.com
    License: Commons Attribution 3.0
    http://creativecommons.org/licenses/by/3.0/
---------------------------------------------------------  */

(function ($) {
    $(".success").hover(function () {
        $(this).css("background-color","white");
        /* $(".success a").css("color","white");*/
    },function () {
        /*$(".success a").css("color","#B5B5B5");*/
        $(this).css("background-color","#283643");
    });
    "use strict";
    var mainApp = {

        initFunction: function () {
            /*MENU 
            ------------------------------------*/
            $('#main-menu').metisMenu();

            $(window).bind("load resize", function () {
                if ($(this).width() < 768) {
                    $('div.sidebar-collapse').addClass('collapse')
                } else {
                    $('div.sidebar-collapse').removeClass('collapse')
                }
            });

        },

        initialization: function () {
            mainApp.initFunction();

        }

    }
    // Initializing ///

    $(document).ready(function () {
        mainApp.initFunction();
        $("#sideNav").click(function(){
            if($(this).hasClass('closed')){
                $('.navbar-side').animate({left: '0px'});
                $(this).removeClass('closed');
                $('#page-wrapper').animate({'margin-left' : '260px'});

            }
            else{
                $(this).addClass('closed');
                $('.navbar-side').animate({left: '-260px'});
                $('#page-wrapper').animate({'margin-left' : '0px'});
            }
        });
    });

}(jQuery));

