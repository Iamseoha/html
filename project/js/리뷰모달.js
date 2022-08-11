$(".button-action-review").click(function () {
    $(".comment-modal").fadeIn();
});


$(".x-button").click(function () {
    $(".comment-modal").fadeOut();
});

$(".save-button").click(function () {
    $(".comment-modal").fadeOut();
});


$('.spoiler').on('mouseover', function () {
    $('.arrow-con').css("display", "block");
});

$('.spoiler').on('mouseout', function () {
    $('.arrow-con').css("display", "none");
});

$("textarea").keyup(function (e) {
    var content = $(this).val();
    $(".text-l").text("(" + content.length + "/ 10000)"); //실시간 글자수 카운팅
    if (content.length == 0) {
        $(".save-button").css({ "opacity": "0.5", "cursor": "not-allowed" });
    } else {
        $(".save-button").css({ "opacity": "1", "cursor": "pointer" });
        $(".save-button").click(function () {
            const Toast = Swal.mixin({
                toast: true,
                position: 'bottom',
                showConfirmButton: false,
                timer: 3000,
            });

            Toast.fire({
                icon: 'success',
                title: '코멘트가 등록되었습니다.'
            });
        });

    }
});


$(function () {
    $(".my-rating-6").starRating({
        totalStars: 5,
        emptyColor: 'slategray',
        hoverColor: '#d8aca7;',
        ratedColor: '#d8aca7;',
        starShape: 'rounded',
        initialRating: 0,
        strokeWidth: 0,
        minRating: 0.5,
        useGradient: false,
        callback: function (currentRating, $el) {
            Swal.fire(
                currentRating + "점이 입력되었습니다!");
            const Toast = Swal.mixin({
                toast: true,
                position: 'bottom',
                showConfirmButton: false,
                timer: 1000,
                timerProgressBar: false,

            });

            Toast.fire({
                icon: 'success',
                title: currentRating + "점이 입력되었습니다!"
            });
        }
    });
});