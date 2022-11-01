// <![CDATA[
    jQuery(function($){
        var ink_widget = $("div.ink_widget"),
        sidebar_widget = $("aside.ink_sidebar").find("div.ink_widget"),
        w_list = ink_widget.find("div.w_list");
        $(document).ready(function(){
            ink_widget.find("div.wl").find(".list_unit>li").each(function(){
                var author_w = $(this).find("span.nickname").width() + 35;
                $(this).find("span.nickname").css("left", -author_w);
                $(this).find("a.inkpf").hover(function(){
                    $(this).next().find(".nickname").animate({left: "0"}, 200);
                    $(this).next().find(".list_title").animate({left: 10+author_w+"px"}, 200);
                }, function(){
                    $(this).next().find(".nickname").animate({left: -author_w}, 200);
                    $(this).next().find(".list_title").animate({left: "22px"}, 200);
                });
            });
            ink_widget.find(".wl").find(".page_unit").not(".page1").hide().css("height","auto");
        });
        w_list.each(function(){
            if($(this).parent("li").length){
                var page_num = $(this).find(".page_unit"),
                tab_con = $(this).parent().parent(),
                tab_index = $(this).parent().index();
                if(page_num.length){
                    page_con = $(this).find(".w_paging");
                    page_con.find(".total_page").prepend(page_num.length);
                    var i=1;
                    page_con.find(".bt_next").click(function(){
                        if(i<page_num.length){
                            i++;
                            page_num.hide().filter(".page"+i).show();
                            $(this).siblings(".inner").find(".current_page").empty().prepend(i);
                        }
                    });
                    page_con.find(".bt_prev").click(function(){
                        if(i>1){
                            i--;
                            page_num.hide().filter(".page"+i).show();
                            $(this).siblings(".inner").find(".current_page").empty().prepend(i);
                        }
                    });
                }
            }else{
                var page_num = $(this).find(".page_unit");
                if(page_num.length){
                    var page_con = $(this).find(".w_paging");
                    page_con.find(".total_page").prepend(page_num.length);
                    var i=1;
                    page_con.find(".bt_next").click(function(){
                        if(i<page_num.length){
                            i++;
                            page_num.hide().filter(".page"+i).show();
                            $(this).siblings(".inner").find(".current_page").empty().prepend(i);
                        }
                    });
                    page_con.find(".bt_prev").click(function(){
                        if(i>1){
                            i--;
                            page_num.hide().filter(".page"+i).show();
                            $(this).siblings(".inner").find(".current_page").empty().prepend(i);
                        }
                    });
                }
            }
        });
    });
    // ]]>
    function tab_show(tab,i){
        tab.parents("ul").children("li.active").removeClass("active");
        tab.parent().addClass("active");
        tab_con = tab.parents("div.w_title").next(".w_tab_con").find(">ul>li");
        tab_con.each(function(j){
            if(j==i) jQuery(this).addClass("active");
            else jQuery(this).removeClass("active");
        });
    }