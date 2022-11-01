// <![CDATA[
    jQuery(function($){
        $(document).ready(function(){
            $('.scrollbar-macosx').scrollbar();
            $("#content").find("select.ink_custom_select").selectbox();
            var gnb = $("#gnb"),
            gnb_nav = gnb.find(">nav"),
            notify = $("#notify").find(">div.notify_wrap"),
            ink_header = $("#header"),
            ink_top = ink_header.prev(".ink_top"),
            ink_top2 = ink_header.find(".ink_top"),
            ink_wrapper = $("#container").find(">.ink_wrapper"),
            ink_sidebar = ink_wrapper.find(">.ink_sidebar");
            
            ink_header.find("button.bt_globalsearch").click(function(){
                $(this).next("input").addClass("active").focus();
            });
            ink_header.find("input.ii").blur(function(){
                $(this).removeClass("active");
            })
            
            $("#color_preview").find("a").click(function(){
                var a = $(this).data("base"), b = $(this).data("color");
                $("link[id^='appended']").remove();
                $("head").append("<link rel='stylesheet' href='/layouts/ink_layout/css_color/"+a+".css' id='appended_a' />");
                $("head").append("<link rel='stylesheet' href='/layouts/ink_layout/css_color/"+b+".css' id='appended_b' />");
                $("head").append("<link rel='stylesheet' href='/layouts/ink_layout/css_color/"+a+"_pc.css' id='appended_apc' />");
                $("head").append("<link rel='stylesheet' href='/layouts/ink_layout/css_color/"+b+"_pc.css' id='appended_bpc' />");
                $.cookie('base_color', a, {expires: 7, path: '/'});
                $.cookie('main_color', b, {expires: 7, path: '/'});
                if(a == 'b_dark' || a == 'b_night'){
                    $("#color_preview").parent().addClass("darkmode");
                }else{
                    $("#color_preview").parent().removeClass("darkmode");
                }
            });
            if($("#container").is(".containerB")){
                $("#container").parent().css("padding-bottom", $("#container").siblings(".ink_footer_wrap").height()+25+"px");
            }else{
                $("#container").parent().css("padding-bottom", $("#container").siblings(".ink_footer_wrap").height()+"px");
            }
            $("#content").find("div.ink_dropdown").find("button.bt").click(function(){
                if($("#blur_dummy").length){
                    $("#blur_dummy").remove();
                    $(this).parent().css("z-index","");
                }else{
                    $(this).after("<div id='blur_dummy' class='blur_dummy' onclick='closeDropdown(this)'></div>");
                    $(this).parent().css("z-index","99");
                }
                $(this).toggleClass("opened closed c_module2");
                $(this).prev("ul").slideToggle(200);
            });
            $("#notify").find("span.bt_fix").click(function(){
                $("#notify").find("button.bt_open_notify").hide();
                notify.removeClass("ink_message active").addClass("fixed round15");
                $("#ink_dummy").hide();
                ink_sidebar.find("div.click_disable").show();
                $.cookie('notify_fix', 'Y', {expires: 7, path: '/'});
            });
            $("#notify").find("span.bt_unfix").click(function(){
                notify.addClass("ink_message").removeClass("fixed round15");
                $("#notify").find("button.bt_open_notify").show();
                ink_sidebar.find("div.click_disable").hide();
                $.cookie('notify_fix', 'N', {expires: 7, path: '/'});
            });
            $("div.admin_menu_wrap").hover(function(){
                $(this).find(".admin_menu").show(0).addClass("active");
            }, function(){
                $(this).find(".admin_menu").removeClass("active").css("display","none");
            });
            gnb_nav.find(">ul>li").hover(function(){
                if(gnb.is(".normal_mode")){
                    $(this).find(">ul").show(0).addClass("active");
                }
            }, function(){
                if(gnb.is(".normal_mode")){
                    $(this).find(">ul").removeClass("active").css("display","none");
                }
            });
            gnb.find(".bt_nav").click(function(){
                gnb.toggleClass("normal_mode view_mode");
                $(this).toggleClass("opened closed");
                $(this).parent().toggleClass("opened closed");
            });
            ink_top.find("a.logged_name").add(ink_top2.find("a.logged_name")).click(function(){
                $(this).toggleClass("closed opened");
                $(this).parent().parent().next(".is_logged").toggle();
                if($(this).parent().parent().next(".is_logged").is(":visible")){
                    $.cookie('logged_info', 'Y', {expires: 7, path: '/'});
                }else{
                    $.cookie('logged_info', 'N', {expires: 7, path: '/'});
                }
            });
            ink_sidebar.find("button.bt_openclose").click(function(){
                $(this).toggleClass("opened closed");
                $(this).prev("a").toggleClass("opened closed");
                $(this).next("ul").slideToggle(300);
            });
            
            var bt_top = $("#container").siblings("button.ink_bt_top");
            $(window).scroll(function(){
                if ($(this).scrollTop() > 100) {
                    bt_top.fadeIn(200);
                } else {
                    bt_top.fadeOut(200);
                }
            });
            bt_top.click(function(){
                $('html, body').animate({scrollTop : 0},300);
                return false;
            });
        });
    });
    function closeDropdown(dummy){
        var $this = jQuery(dummy);
        $this.parent().css("z-index","");
        $this.siblings(".bt").toggleClass("opened closed c_module2");
        $this.siblings("ul").slideUp(300);
        $this.remove();
    }
    // ]]>