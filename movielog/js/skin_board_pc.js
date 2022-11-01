jQuery(function($){
	$(document).ready(function(){
		var ink_board = $("#content").find(">.ink_board"),
		list_wrap = ink_board.find(">div.list_wrap"),
		list_buttons = ink_board.find(".list_buttons"),
		atc = ink_board.find(">article.ink_atc"), 
		atc_buttons = atc.find(">div.list_buttons");
		if(atc.length){var offset = atc.offset().top - 70}else if(list_wrap.length){var offset = list_wrap.offset().top - 70}
		
		list_buttons.find(".bt_skin").click(function(){
			$("#sk_ctn").show();
		});
		$(window).scroll(function(){
			if($(window).scrollTop() > offset){
				list_buttons.find(">div").addClass("fix");
			}else{
				list_buttons.find(">div").removeClass("fix");
			}
		});
		var list_category2 = ink_board.find(">div.list_category2");
		list_category2.find(">ul>li.has_child").hover(function(){
			$(this).find(">ul").show(0).addClass("active");
		}, function(){
			$(this).find(">ul").removeClass("active").css("display","none");
		});
		list_wrap.find(".ldn").find("tr.notice_toggle button").click(function(){
			list_wrap.find(".ldn").find("tr.hided_notice").toggle();
			list_wrap.find(".ldn").find("tr.notice_toggle").toggleClass("opened closed");
		});
		$(window).scroll(function(){
			if($(window).scrollTop() > 200){
				atc_buttons.find("li.bt_top").slideDown(200);
			}else{
				atc_buttons.find("li.bt_top").slideUp(200);
			}
			if($(window).scrollTop() == ($(document).height()-$(window).height())){
				atc_buttons.find("li.bt_bottom").slideUp(200);
			}else{
				atc_buttons.find("li.bt_bottom").slideDown(200);
			}
		});
		atc_buttons.find("li.bt_top").click(function(){
			$('html, body').animate({scrollTop : 0},300);
			return false;
		});
		atc_buttons.find("li.bt_bottom").click(function(){
			$('html, body').animate({scrollTop : $(document).height()},300);
			return false;
		});
		var atc_font = atc.find("div.atc_font");
		atc_font.find("button.bt_atc_font").click(function(){
			atc_font.find(".atc_font_select").toggleClass("active");
			$(this).after("<div class='ctrl_dummy' onclick='closeAtcCtrl(this)'></div>");
		});
		atc_font.find("button.bt_atc_fontSize").click(function(){
			var font_size = $(this).data("size");
			atc_font.find("button.bt_atc_font").css("font-size", font_size+"px");
			atc.find("div.atc_body").not(".atc_secret").removeClass("size12 size13 size14 size15 size16 size17 size18").addClass("size"+font_size);
			atc.find("div.cmt_body").removeClass("size12 size13 size14 size15 size16 size17 size18").addClass("size"+font_size);
			$.cookie('atc_font', font_size, {expires: 10, path: '/'});
		});
		atc_font.find("button.bt_atc_fontType").click(function(){
			var font_type = $(this).data("fontType");
			if (font_type === 'old') {
				atc.find("div.atc_body").not(".atc_secret").addClass('type_old');
				atc.find("div.cmt_body").addClass('type_old');
				$(".ink_list tbody").addClass('type_old');
				$(".atc_sign .sign_body").addClass('type_old');
				$.cookie('atc_font_type', font_type, {expires: 14, path: '/'});
			} else {
				atc.find("div.atc_body").not(".atc_secret").removeClass('type_old');
				atc.find("div.cmt_body").removeClass('type_old');
				$(".ink_list tbody").removeClass('type_old');
				$(".atc_sign .sign_body").removeClass('type_old');
				$.cookie('atc_font_type', font_type, {expires: 14, path: '/'});
			}
		});
		atc_font.find(".bt_atc_fontReset").on('click', function(event) {
			event.preventDefault();
			atc.find("div.atc_body").not(".atc_secret").removeClass("size12 size13 size14 size15 size16 size17 size18 type_default type_old");
			atc.find("div.cmt_body").removeClass("size12 size13 size14 size15 size16 size17 size18 type_default type_old");
			$(".ink_list tbody").removeClass('type_old');
			$(".atc_sign .sign_body").removeClass('type_old');
			$.cookie('atc_font', '', {expires: 0, path: '/'});
			$.cookie('atc_font_type', '', {expires: 0, path: '/'});
		});
		if ($.cookie('atc_font')) {
			$.cookie('atc_font', parseInt($.cookie('atc_font'), 10), {expires: 14, path: '/'});
		}
		if ($.cookie('atc_font_type') === 'old') {
			$.cookie('atc_font_type', $.cookie('atc_font_type'), {expires: 14, path: '/'});
		}
	});
});
function closeAtcCtrl(button){
	var $this = jQuery(button);
	$this.siblings(".atc_font_select").toggleClass("active");
	$this.remove();
}