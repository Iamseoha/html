// <![CDATA[
    jQuery(function($){
        $(document).ready(function(){
            var ink_message = $("div.ink_message");
            ink_message.each(function(){
                $(this).click(function(e){
                    if(e.target !== this)
                    return;
                    $(this).removeClass("active");
                    $("#ink_dummy").hide();
                });
            });
            $("#color_preview").find("button.bt_openclose").click(function(){
                $(this).toggleClass("opened closed");
                $("#color_preview").toggleClass("active");
                $("#color_preview").next(".preview_dummy").toggle();
                if($.cookie('preview_off') == 'Y'){
                    $.cookie('preview_off', 'N', {expires: 7, path: '/'});
                }else{
                    $.cookie('preview_off', 'Y', {expires: 7, path: '/'});
                }
            });
            $("#color_preview").next(".preview_dummy").click(function(){
                $("#color_preview").removeClass("active");
                $.cookie('preview_off', 'Y', {expires: 7, path: '/'});
                $(this).hide();
            });
            ink_message.find("button.bt_close").click(function(){
                $(this).closest(ink_message).removeClass("active");
                $("#ink_dummy").hide();
            });
            $(document).keyup(function(e){
                if (e.keyCode == 27 && ink_message.is(":visible")){
                    ink_message.removeClass("active");
                    $("#ink_dummy").hide();
                }
            });
            $("#container").siblings(".xe_message").click(function(){
                $(this).fadeOut(300);
            });
        });
    });
    function inkPop(class_name){
        var ink_message = jQuery("div.ink_message."+class_name);
        ink_message.addClass("active");
        ink_message.find("input.focused").focus();
        jQuery("#ink_dummy").show();
    }
    function closePop(button){
        var $this = jQuery(button);
        $this.closest("div.ink_message").removeClass("active");
        jQuery("#ink_dummy").hide();
    }
    function bannerTop(top_id){
        var banner_top = jQuery("#container").prev(".ink_banner_top");
        banner_top.find(".bt_close").click(function(){
            banner_top.animate({'margin-top': -banner_top.height()-30+'px'}, 300);
            jQuery.cookie('banner_'+top_id, 'N', {expires: 7, path: '/'});
        });
    }
    function switchMode(mode){
        if(mode == 'dark'){
            $.cookie('ink_dark', 'Y', {expires: 7, path: '/'});
            location.reload();
        }else{
            $.cookie('ink_dark', 'N', {expires: 7, path: '/'});
            location.reload();
        }
    }
    // ]]>