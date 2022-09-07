<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/설정.css">
    <link rel="stylesheet" href="/resources/css/리뷰.css">

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="/project/css/star-rating-svg.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
</head>


<style>
    html,
    body {
        font-family: RobotoInCjk, 'Noto Sans KR', 'Apple SD Gothic Neo', 'Nanum Gothic', 'Malgun Gothic', sans-serif !important;
    }

    textarea {
        font-family: RobotoInCjk, 'Noto Sans KR', 'Apple SD Gothic Neo', 'Nanum Gothic', 'Malgun Gothic', sans-serif !important;
    }

    .review-actions-wrap .text {
        font-size: 13px;
        color: #fff;
    }
</style>

<body>



    <main id="set">
        <div class="set-header">
            <div class="header-inner">
                <h1>내가 쓴 리뷰</h1>
                <!-- <a href="/edu-meeting/edu-meeting/mypage.html"> -->
                    <a href="/mypage">
                    <button class="btn-back">
                        <i class="icon header-back"></i>
                    </button>
                </a>
            </div>
        </div>


        <div class="contents-area">
            <div class="mainContent">
                <ul class="review-item-wrap">
                    <span>
                        <li>
                            <div class="review-item">
                                <!---->
                                <div class="contents-wrap">
                                    <a href="#" style="width: 100%; height: 100%;">

                                        <div class="movie-poster-wrap">
                                            <img alt="이상한 변호사 우영우" class="poster-image"
                                                data-src="https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_106009_1654770829.jpeg"
                                                src="https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_106009_1654770829.jpeg"
                                                lazy="loaded">
                                        </div>
                                    </a>
                                    <span class="write-ago">
                                        2일 전
                                    </span>

                                    <div class="movie-info-wrap">
                                        <a href="/title/106009" style="width: 100%; height: 100%;">
                                            <p class="movie-title">이상한 변호사 우영우</p>
                                        </a>
                                        <div class="review-star-wrap">
                                            <div class="review-star">
                                                <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
                                                    width="16px" height="16px" alt="star">
                                                <span>4.5</span>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="review-wrap">
                                        <a href="/review/142267" class="review-content-link"></a>
                                        <a href="/review/142267">
                                            <div class="review-content">
                                                <p>우영우</p>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="review-actions-info-wrap">
                                        <button>
                                            <svg width="24" height="24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <circle data-v-5b8f4cb1="" cx="12" cy="12" r="10" fill="#222222">
                                                </circle>
                                                <path
                                                    d="M16.535 8.438a3.343 3.343 0 00-2.341-.938c-.818 0-1.588.716-2.194 1.234-.606-.518-1.376-1.234-2.193-1.234-.885 0-1.718.333-2.342.938a3.124 3.124 0 000 4.515l3.34 3.234c.32.31.744.48 1.195.48.451 0 .876-.17 1.194-.478l3.341-3.234a3.126 3.126 0 000-4.517z"
                                                    fill="#98a4b7"></path>
                                            </svg>
                                            <span class="text">0개</span>
                                        </button>

                                        <button>
                                            <svg width="24" height="24" fill="none" xmlns="http://www.w3.org/2000/svg">


                                                <circle cx="12" cy="12" r="10" fill="#222222"></circle>
                                                <path fill-rule="evenodd" clip-rule="evenodd"
                                                    d="M7.6 8a1.1 1.1 0 00-1.1 1.1v4.95a1.1 1.1 0 001.1 1.1h1.1v1.536c0 .245.296.368.47.195l1.73-1.731h5.5a1.1 1.1 0 001.1-1.1V9.1A1.1 1.1 0 0016.4 8H7.6z"
                                                    fill="#98a4b7"></path>
                                            </svg>

                                            <span class="text">0개</span>
                                        </button>
                                    </div>

                                    <hr class="border" style="margin: 0px 0px 9px;">


                                    <div class="review-actions-wrap">
                                        <ul>
                                            <li class="action_like">
                                                <div class="correction">
                                                    <button class="button-action-review">
                                                        <i class="icon icon--btn-correction-normal"
                                                            style="width: 22px; height: 22px;"></i>
                                                        <span class="text">수정하기</span>
                                                    </button>
                                                </div>
                                            </li>

                                            <li class="action_comment">
                                                <button class="button-action-delete">
                                                    <i class="icon icon--btn-delete-normal"
                                                        style="width: 22px; height: 22px;">
                                                    </i>
                                                    <span class="text">삭제하기</span>
                                                </button>

                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </span>
                </ul>
            </div>

        </div>
    </main>




    <!-- ***** 리뷰쓰기 모달 ***** -->
    <div class="comment-modal">
        <div class="comment-con">
            <div class="comment-style">
                <div class="comment-header">
                    <div class="heder-set"></div>
                    <p class="header-title">쥬라기 공원</p>
                    <div class="header-set">
                        <button class="x-button"></button>
                    </div>
                </div>

                <div class="comment-in">
                    <div class="my-rating-6"></div>

                    <div height="100%">
                        <textarea maxlength="10000" placeholder="이 작품에 대한 생각을 자유롭게 표현해주세요."
                            class="text-area-box"></textarea>
                    </div>
                </div>

                <div class="comment-box">
                    <div class="box-set">
                        <div class="box-con">
                            <div class="spoiler">
                                <div class="spo-img"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                        viewBox="0 0 24 24" fill="none" class="css-7zhfhb">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M11.9998 1.89462C6.41882 1.89462 1.89453 6.41891 1.89453 11.9999C1.89453 17.5809 6.41882 22.1052 11.9998 22.1052C17.5808 22.1052 22.1051 17.5809 22.1051 11.9999C22.1051 6.41891 17.5808 1.89462 11.9998 1.89462ZM7.78928 11.4662C8.02183 11.0634 8.53685 10.9254 8.93962 11.158L12.0061 12.9284L15.0612 11.1645C15.464 10.932 15.979 11.07 16.2116 11.4728C16.4441 11.8755 16.3061 12.3906 15.9034 12.6231L13.6903 13.9008L15.8678 15.158C16.2706 15.3905 16.4086 15.9055 16.1761 16.3083C15.9435 16.7111 15.4285 16.8491 15.0257 16.6165L12.0061 14.8732L8.97515 16.6231C8.57237 16.8556 8.05735 16.7176 7.82481 16.3149C7.59227 15.9121 7.73027 15.3971 8.13304 15.1645L10.3219 13.9008L8.09752 12.6165C7.69474 12.384 7.55674 11.869 7.78928 11.4662ZM7.9998 8.21074C7.9998 7.74566 8.37682 7.36864 8.8419 7.36864H9.05243C9.51751 7.36864 9.89454 7.74566 9.89454 8.21074V8.84232C9.89454 9.3074 9.51751 9.68443 9.05243 9.68443H8.8419C8.37682 9.68443 7.9998 9.3074 7.9998 8.84232V8.21074ZM14.9472 7.36864C14.4821 7.36864 14.1051 7.74566 14.1051 8.21074V8.84232C14.1051 9.3074 14.4821 9.68443 14.9472 9.68443H15.1577C15.6228 9.68443 15.9998 9.3074 15.9998 8.84232V8.21074C15.9998 7.74566 15.6228 7.36864 15.1577 7.36864H14.9472Z"
                                            fill="#C4C4C4"></path>
                                    </svg></div>


                                <div class="arrow-box">
                                    <div class="arrow-con">스포일러가 있는 코멘트를 가려보세요.</div>
                                </div>
                            </div>
                        </div>

                        <div class="box-con">
                            <p class="text-l">0/10000</p>
                            <button type="submit" class="save-button">저장</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** 리뷰쓰기 모달 ***** -->


    <div class="footer">
        <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.</p>
    </div>



    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/리뷰모달.js"></script>

    <script src="/resources/js/jquery.star-rating-svg.js"></script>

    <script>
        $().ready(function () {
            $(".button-action-delete").click(function () {
                Swal.fire({
                    title: '삭제하시겠습니까?',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '승인',
                    cancelButtonText: '취소'
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire(
                            '삭제가 완료되었습니다.',
                        );
                    }
                });
            });
        });

    </script>

<!-- Code injected by live-server -->
<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script></body>

</html>
