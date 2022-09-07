<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Education Template - Meeting Detail Page</title>

    <!-- main CSS -->
    <link rel="stylesheet" href="/resources/css/main.css">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min copy.css">

    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/7707ba3ed4.js" crossorigin="anonymous"></script>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>

    <link rel="stylesheet" href="/resources/css/star-rating-svg.css">

    <link rel="stylesheet" href="/resources/css/리뷰.css">


    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</head>

<body>

    <div id="preloder">
        <div class="loader"></div>
    </div>


    <!-- 헤더 -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">

                        <a href="/board/main" class="logo">
                            Allthemovie
                        </a>

                        <ul class="nav">
                            <li class="serach-in">
                                <div class="search">
                                    <form action="#">
                                        <label for="">
                                            <input type="text" placeholder="콘텐츠,인물을 검색해보세요">
                                        </label>
                                    </form>
                                </div>
                            </li>
                            <!-- 로그인 하지 않은 상태 -->
                <c:if test = "${users == null }">
					<li><a href="/login"><i class="fa-solid fa-circle-user fa-2x"></i></a></li>           
                </c:if>  
                <!-- 로그인한 상태 -->
                <c:if test="${ users != null }">
            		<li><a href="/mypage"><i class="fa-solid fa-circle-user fa-2x"></i></a></li>   
                </c:if>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <!-- 헤더 -->

    <!-- 영화 상세페이지 -->
    <main id="contents">
        <div class="movie-info-container">
            <div class="movie-image-area">
                <div class="backdrop">
                    <img data-src="https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_still_images/102315/thumbnail/b302d9e5452c8202d9ba1f7a0b9d7e0c.jpg"
                        src="https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_still_images/102315/thumbnail/b302d9e5452c8202d9ba1f7a0b9d7e0c.jpg"
                        lazy="loaded">
                </div>

                <div class="gradient"></div>
            </div>

            <div class="movie-header-area">
                <div class="movie-title-wrap">
                    <h3 class="title-kr">그레이 맨</h3>
                    <p class="metadata">
                        <span class="metadata-item">The Gray Man·</span>
                        <span data-v-19e6549e="" class="metadata-item">2022</span>
                    </p>

                    <div class="movie-rate-summary">
                        <div class="other-rating-wrap">
                            <div class="movie-star-wrap">
                                <i class="icon icon--star" style="width: 22px; height: 22px;"></i>
                                <div class="score">
                                    3.0
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="poster">
                    <img data-src="https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_105302_1653442481.jpeg"
                        src="https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_105302_1653442481.jpeg"
                        lazy="loaded">
                </div>
            </div>
        </div>


        <div class="rating-state-wrap">
            <div class="state-button-wrap">
                <button class="button-action-wish">
                    <svg width="32" height="32" fill="none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
                        class="wish">
                        <path
                            d="M9 9a2 2 0 012-2h10a2 2 0 012 2v15.92a.4.4 0 01-.622.332L16 21l-6.378 4.252A.4.4 0 019 24.92V9z"
                            fill="#EFEFEF"></path>
                    </svg>
                    <p class="text">찜하기</p>
                </button>
            </div>


            <div class="state-button-wrap">
                <button class="button-action-review">
                    <svg width="32" height="32" fill="none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
                        <path fill-rule="evenodd" clip-rule="evenodd"
                            d="M20.114 7.5a.677.677 0 00-.96 0l-1.49 1.491a1.003 1.003 0 00-.002 1.416l3.936 3.952a.997.997 0 001.412.001l1.492-1.492a.68.68 0 000-.961L20.115 7.5zm-3.525 3.976a.999.999 0 00-1.414-.001l-7.67 7.662a.68.68 0 00-.2.48l-.004 4.4c0 .375.304.68.678.68l4.263.004c.266 0 .52-.105.708-.293l7.576-7.568c.39-.39.392-1.024.002-1.415l-3.939-3.949z"
                            fill="#EFEFEF"></path>
                    </svg>
                    <p class="text">리뷰쓰기</p>
                </button>
            </div>
        </div>


        <hr class="border" style="margin-top: 10px; margin-bottom: 11px;">

        <div class="movie-metadata-area">
            <ul class="metadata-list">
                <li class="metadata">
                    #127분
                </li>
                <li class="metadata">
                    #미국
                </li>
                <li class="metadata">
                    #15세이상관람가
                </li>
                <li class="metadata">
                    #액션
                </li>
                <li class="metadata">
                    #스릴러
                </li>
            </ul>
        </div>

        <hr class="border">

        <section class="movie-ott-wrap">
            <h3 class="section-title">지금 여기서 감상</h3>

            <ul class="movie-ott-list">
                <li class="movie-ott-item">
                    <div class="movie-ott-link-wrap">
                        <a href="#" class="movie-ott-link">
                            <div class="movie-ott-wrap">
                                <span class="provider">
                                    <i class="icon icon--netflix" style="width: 24px; height: 24px;"></i>
                                </span>
                                <span class="provider-name">넷플릭스</span>
                                <i class="kino-icon kino-icon--more-gray"
                                    style="position: absolute; top: 16px; right: 5px;"></i>
                            </div>
                        </a>
                    </div>
                </li>
            </ul>
        </section>

        <section id="synopsis" class="movie-content-area">
            <article class="article-wrap">
                <h3 class="title">작품 정보</h3>
                <p class="synopsis">그 누구도 실체를 몰라 `그레이 맨`으로 불리는 CIA의 암살 전문 요원이 우연히 CIA의 감추고 싶은 비밀을
                    알게
                    되고, CIA의 사주를 받은 소시오패스 전 동료에게 쫓기며 시작되는 액션 블록버스터</p>
            </article>

            <hr class="border">

            <article class="article-wrap">
                <h3 class="title">예고편</h3>
                <iframe class="youtube-trailer" frameborder="0" allowfullscreen="1"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    title="그레이 맨 | 공식 예고편 | 넷플릭스" width="640" height="360"
                    src="https://www.youtube.com/embed/KLyxElQGWX4?enablejsapi=1&amp;origin=https%3A%2F%2Fm.kinolights.com&amp;widgetid=9"
                    id="widget10">
                </iframe>
            </article>


            <hr class="border" style="display: block;">

            <!-- 감독/출연 -->
            <article class="article-wrap">
                <h3 class="title">감독/출연</h3>
                <div class="container-person" style="padding-bottom: 16px;">
                    <div class="person">
                        <a href="/감독.html">
                            <div class="photo" style="width: 70px; height: 70px;">
                                <img alt="조 루소"
                                    src="https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/director_profile_images/director_62439_1509893528.jpg">
                                <!---->
                            </div>
                        </a>

                        <div class="name">조 루소</div>
                        <div class="character">감독</div>
                    </div>


                    <div class="person">
                        <a href="/person/71116/filmography">
                            <div class="photo" style="width: 70px; height: 70px;">
                                <img alt="안소니 루소"
                                    src="https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/director_profile_images/director_62438_1509893503.jpg">
                                <!---->
                            </div>
                        </a>
                        <div class="name">안소니 루소</div>
                        <div class="character">감독</div>
                    </div>


                    <div class="person">
                        <a href="/person/117/filmography">
                            <div class="photo" style="width: 70px; height: 70px;">
                                <img alt="라이언 고슬링"
                                    src="https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/actor_profile_images/actor_138_1509739376.jpg">
                                <!---->
                            </div>
                        </a>
                        <div class="name">라이언 고슬링</div>
                        <div class="character">코트 젠트리 </div>
                    </div>
                </div>
            </article>
            <!-- 감독/출연 -->

            <hr class="boder" style="margin-top: 0px;">

            <!-- 리뷰 -->
            <section class="review-container">
                <article class="article-wrap">
                    <h5 class="sub-title" style="width: 50%; display: inline-block;">
                        모든 리뷰
                    </h5>
                </article>

                <div class="my-review-wrap">
                    <div class="review-item">

                        <div class="contents-wrap">
                            <div class="user-info-wrap">
                                <a href="/board/reviewdetail">
                                    <div class="profile-photo-wrap">
                                        <img alt="양기자" class="profile-photo"
                                            data-src="https://kinolights-assets.kr.object.ncloudstorage.com/static/upload/user_profile_images/user_180_1586226460.jpg"
                                            src="https://kinolights-assets.kr.object.ncloudstorage.com/static/upload/user_profile_images/user_180_1586226460.jpg"
                                            lazy="loaded"><i data-v-4e31c48e=""
                                            class="kino-icon kino-icon--certificate">
                                        </i>
                                    </div>
                                    <div class="writer-name">양기자</div>
                                </a>

                                <span class="review-write-ago">22일 전</span>
                            </div>
                            <div class="review-star-wrap">
                                <div class="review-star">
                                    <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
                                        width="16px" height="16px" alt="star">
                                    <span>4.5</span>
                                </div>
                            </div>

                            <div class="review-wrap">
                                <a href="/board/reviewdetail" class="review-content-link">
                                    <div class="review-content">
                                        <p>넷플릭스는 지난 7월 19일, 2분기 실적 발표를 통해 글로벌 유료 가입자 수가 6월 말 현재 2억
                                            2,067만 명이라고 밝혔다. 최근 3달 동안 약 97만 가입자가 감소한 것으로, 시장에서 전망했던 200만 가입자
                                            감소보다는 적은
                                            수치였다. '코로나19'로 주춤했던 ...</p>
                                    </div>
                                </a>
                            </div>

                            <div class="review-actions-info-wrap">
                                <svg width="24" height="24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="12" cy="12" r="10" fill="#262626"></circle>
                                    <path
                                        d="M16.535 8.438a3.343 3.343 0 00-2.341-.938c-.818 0-1.588.716-2.194 1.234-.606-.518-1.376-1.234-2.193-1.234-.885 0-1.718.333-2.342.938a3.124 3.124 0 000 4.515l3.34 3.234c.32.31.744.48 1.195.48.451 0 .876-.17 1.194-.478l3.341-3.234a3.126 3.126 0 000-4.517z"
                                        fill="#98a4b7">
                                    </path>
                                </svg>
                                <span class="text">5개</span>
                                <a href="/review/138727/comment">
                                    <svg width="24" height="24" fill="none" xmlns="http://www.w3.org/2000/svg" class="">
                                        <circle data-v-4e31c48e="" cx="12" cy="12" r="10" fill="#262626">
                                        </circle>
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M7.6 8a1.1 1.1 0 00-1.1 1.1v4.95a1.1 1.1 0 001.1 1.1h1.1v1.536c0 .245.296.368.47.195l1.73-1.731h5.5a1.1 1.1 0 001.1-1.1V9.1A1.1 1.1 0 0016.4 8H7.6z"
                                            fill="#98a4b7"></path>
                                    </svg>
                                    <span class="text">0개</span>
                                </a>
                            </div>


                            <hr class="border" style="margin: 0px 0px 9px;">


                            <div class="review-actions-wrap">
                                <ul>
                                    <li class="action_like">
                                        <button class="action">
                                            <i class="icon icon--btn-heart-normal" style="width: 32px; height: 32px;">
                                            </i>
                                            <span class="text">좋아요</span>
                                        </button>
                                    </li>

                                    <li class="action_comment">
                                        <a href="/review/138727/comment" class="action">
                                            <i class="icon icon--btn-comment-normal"
                                                style="width: 32px; height: 32px;"></i>
                                            <span class="text">댓글달기</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="/board/allreview">
                    <button class="review-more-button">
                        <span class="text">리뷰 95개 모두 보기</span>
                        <i class="icon icon--more-gray" style="width: 16px; height: 16px;"></i>
                    </button>
                </a>
            </section>
        </section>
    </main>
    <!-- 리뷰 -->



    <!-- ***** 리뷰쓰기 모달 ***** -->
    <div class="comment-modal">
        <div class="comment-con">
            <div class="comment-style">
                <div class="comment-header">
                    <div class="heder-set"></div>
                    <p class="header-title">그레이 맨</p>
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


    <!-- ***** 푸터 ***** -->
    <div class="footer">
        <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.
        </p>
    </div>

    <!-- ***** 푸터 ***** -->


    <!-- Scripts -->
    <script src="/js/custom.js"></script>


    <script src="/js/jquery-3.3.1.min.js"></script>

    <script src="/js/main.js"></script>


    <script src="/js/리뷰모달.js"></script>

    <script src="/js/jquery.star-rating-svg.js"></script>
    <!-- Scripts -->

</body>

</html>
