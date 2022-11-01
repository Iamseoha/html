// <![CDATA[
    jQuery(function($){	
        $(window).load(function(){
            $('div.swiper-ctn2').each(function(){
                var mySwiper = new Swiper($(this), {
                    pagination: { el: $(this).siblings('.swiper-pagination'), clickable: true},
                    navigation: {
                        nextEl: $(this).siblings('.swiper-button-next'),
                        prevEl: $(this).siblings('.swiper-button-prev'),
                    }
                });
            });
        });
    });
    // ]]>