jQuery(function($){
	$(document).ready(function(){
		var ink_board = $("#content").find(">.ink_board"),
		list_wrap = ink_board.find(">div.list_wrap"),
		atc = ink_board.find(">article.ink_atc"),
		sk_ctn = $("#sk_ctn");
		
		list_wrap.find(".notice_list").find("li.notice_toggle button").click(function(){
			$(this).parent().siblings("li.hided_notice").toggle();
			$(this).parent().toggleClass("opened closed");
		});
		
		atc.find("div.bt_who").click(function(){
			$("#voted_who").slideToggle(300);
		});
		var atc_authorD = atc.find("div.atc_box").find(">div.atc_authorD");
		atc_authorD.find("button.bt_d").click(function(){
			$(this).attr("class","bt_d active");
			$(this).next("button").attr("class","bt_c");
			atc_authorD.find(".d_list").show();
			atc_authorD.find(".c_list").hide();
		});
		atc_authorD.find("button.bt_c").click(function(){
			$(this).attr("class","bt_c active");
			$(this).prev("button").attr("class","bt_d");
			atc_authorD.find(".c_list").show();
			atc_authorD.find(".d_list").hide();
		});
		
		// sns share from sketchbooks http://xe.sketchbooks.co.kr/
		atc.siblings('div.atc_share').find('div.share_list').find("a").click(function(){
			var t = $(this);
			var type = t.data('type');
			var p = t.parent();
			var href = p.data('url');
			var permanentUrl = p.data('permanenturl');
			var title = p.data('title');
			var img = atc.find('div.xe_content img:first').attr('src');
			if(!type){
				return;
			} else if(type=="facebook"){
				var loc = '//www.facebook.com/sharer/sharer.php?u='+href+'&t='+title;
			} else if(type=="twitter"){
				loc = '//twitter.com/share?text='+encodeURIComponent(title)+'&url='+href;
			} else if(type=="google"){
				loc = '//plus.google.com/share?url='+href;
			} else if(type=="pinterest"){
				if(!img){
					alert('No Image!');
					return false;
				};
				loc = '//www.pinterest.com/pin/create/button/?url='+href+'&media='+img+'&description='+encodeURIComponent(title);
			} else if(type=="kakaostory"){
				loc = 'https://story.kakao.com/share?url='+encodeURIComponent(href);
			} else if(type=="band"){
				loc = 'http://www.band.us/plugin/share?body='+encodeURIComponent(title)+'%0A'+encodeURIComponent(href);
			} else if(type=="kakao"){
				if(img){
					Kakao.Link.sendTalkLink({
						label:title,
						image:{
							src:img,
							width: '300',
							height: '200'
						},
						webLink:{
							text:permanentUrl,
							url:href
						}
					});
				} else {
					Kakao.Link.sendTalkLink({
						label:title,
						webLink:{
							text:permanentUrl,
							url:href
						}
					});
				};
				return false;
			};
			window.open(loc);
			return false;
		});
		// sns 공유하기 끝
		
		sk_ctn.wrapInner("<div class='sk_ctn_inner'><div></div></div>").find("section").find(">h2").click(function(){
			$(this).nextAll().toggle();
		});
		sk_ctn.find("input[type=radio]").after("<span><i class='fas fa-check'></i></span>").parent("label").addClass("ink_check ink_radio");
		sk_ctn.find("div.btnArea").addClass("bt_area").html("<button class='bt bt_close' type='button' title='닫기'><i class='fas fa-times'></i></button><button class='bt' type='submit' title='확인'><i class='fas fa-check'></i></button>").find("button.bt_close").click(function(){
			sk_ctn.hide();
		});
		$(document).keyup(function(e){
			if (e.keyCode == 27 && sk_ctn.is(":visible")){
				sk_ctn.hide();
			}
		});
	});
});

function focusMe(item) {
    window.setTimeout(function() { 
      item.setSelectionRange(0, 9999);
    }, 10);
}
function doVoteSubmit(module, action, target_srl) {
	var params = {'target_srl':target_srl,'cur_mid':current_mid};
	jQuery.exec_json(module+'.'+action, params);
}
function insertWarn(message){
	var ink_center = jQuery("#content").find(">section.ink_board").find(">.ink_align_center");
	ink_center.find(">div").remove();
	ink_center.append('<div>'+message+'</div>');
	var ink_warn_width = ink_center.find(">div").width()+30;
	ink_center.find(">div").css({"margin-left":-ink_warn_width/2+"px", "padding":"0 15px"});
	ink_center.find(">div").animate({"opacity":"1"}, 200).delay(1000).animate({"opacity":"0"}, 200, function(){jQuery(this).css("padding","0").html();});
}
function reComment(doc_srl,cmt_srl,edit_url){
	var o = jQuery('#cmt_write_re').eq(0);
	o.find("div.text_ver").on( 'keyup', 'textarea', function (e){
		jQuery(this).css('height', 'auto' );
		jQuery(this).height( this.scrollHeight-24 );
	});
	o.find('input[name=error_return_url]').val('/'+doc_srl);
	o.find('input[name=mid]').val(current_mid);
	o.find('input[name=document_srl]').val(doc_srl);
	o.appendTo(jQuery('#comment_'+cmt_srl)).show().find('input[name=parent_srl]').val(cmt_srl);
	o.find('a.go_editor').attr('href',edit_url);
	o.find('textarea').focus();
	o.find("#use_anonymous").attr("id","use_anonymous2").next().attr("for","use_anonymous2");
}
function reSticker(doc_srl,cmt_srl,edit_url){
	var o = jQuery('#cmt_write_re').eq(0);
	o.addClass("on");
	o.find('input[name=error_return_url]').val('/'+doc_srl);
	o.find('input[name=mid]').val(current_mid);
	o.find('input[name=document_srl]').val(doc_srl);
	o.appendTo(jQuery('#comment_'+cmt_srl)).show().find('input[name=parent_srl]').val(cmt_srl);
	o.find('.reply_stk').attr('onclick', 'loadStickerList(undefined, '+cmt_srl+');');
	o.find('.stk_display').addClass('display-toggle');
	o.find('.stk_display>.stk_head>.sticker_pack, .stk_display>.stk_body').html('');
}
function sendMsg(){
	var target = jQuery("#send_msg");
	target.addClass("active");
	target.find("div.msg_form").removeClass("off");
	target.find("div.send_success").addClass("off");
	target.find("input.focused").focus();
	jQuery("#ink_dummy").show();
}
function bdSendMessage(receiver_srl){
	var send_msg = jQuery('#send_msg');
	if(!send_msg.find('input[name=title]').val()){
		alert("제목을 입력해주세요");
	}else if(!send_msg.find('textarea[name=new_content]').val()){
		alert("내용을 입력해주세요");
	}else{
		var content = send_msg.find('textarea[name=new_content]').val().replace(/\n/g, "<br />");
		send_msg.find('input[name=content]').val(content);
		jQuery("#ink_loading").show();
		var params = new Array();
		params['content'] = content;
		params['title']= send_msg.find('input[name=title]').val();
		params['receiver_srl'] = receiver_srl;
		exec_xml('communication', 'procCommunicationSendMessage', params, function(){
			jQuery("#ink_loading").fadeOut();
			jQuery("#ink_dummy").attr("onclick","msg_close()");
			send_msg.removeClass("on");
			send_msg.find('textarea[name=new_content]').val('');
			send_msg.find('input[name=title]').val('');
			send_msg.find("div.msg_form").addClass("off");
			send_msg.find("div.send_success").removeClass("off");
		});
	}
}
function inkCmtReport(nickname,cmt_srl){
	var target = jQuery("div.ink_message.cmt_report");
	target.find("span.nickname").html(nickname);
	target.find("button.ib_color").attr("onclick","doCallModuleAction('comment','procCommentDeclare','"+cmt_srl+"');return false;");
	target.addClass("active");
	jQuery("#ink_dummy").fadeIn(100);
}
function inkCmtDelete(nickname,cmt_srl,status){
	var target = jQuery("div.ink_message.cmt_delete");
	target.find("span.nickname").html(nickname);
	target.find("input[name=comment_srl]").attr("value",cmt_srl);
	if(status>6){
		target.find("input[type=checkbox]").attr("checked","checked");
	}
	target.addClass("active");
	jQuery("#ink_dummy").fadeIn(100);
}
function goText(){
	jQuery.cookie('ink_editor','T', {expires: 7, path: '/'});location.reload();return false;
}
function goEditor(){
	jQuery.cookie('ink_editor','E', {expires: 7, path: '/'});location.reload();return false;
}
function deleteSubmit(target){
	var ink_message = jQuery(target).closest("div.ink_message");
	jQuery("#ink_loading").show();
	setTimeout(function() {
		ink_message.removeClass("active");
		jQuery("#ink_loading").fadeOut();
		jQuery("#ink_dummy").hide();
	}, 1000);
}
function manageModeOn(button){
	var $this = jQuery(button),
	list_wrap = jQuery("#content").find("div.list_wrap");
	$this.closest(".manage_article").toggleClass("opened closed");
	list_wrap.find("td[colspan]").each(function() { $(this).attr('colspan', parseInt($(this).attr('colspan'), 10) + 1); });
	list_wrap.find("td.check,th.check").addClass("active");
	list_wrap.find("span.check_area").addClass("active");
	list_wrap.find(".list_unit").addClass("has_check");
}
function manageModeOff(button){
	var $this = jQuery(button),
	list_wrap = jQuery("#content").find("div.list_wrap");
	$this.closest(".manage_article").toggleClass("opened closed");
	list_wrap.find("td[colspan]").each(function() { $(this).attr('colspan', parseInt($(this).attr('colspan'), 10) - 1); });
	list_wrap.find("td.check,th.check").removeClass("active");
	list_wrap.find("span.check_area").removeClass("active");
	list_wrap.find(".list_unit").removeClass("has_check");
}