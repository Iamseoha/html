<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">


    <title>ALLTHEMOVIE</title>

    <!-- main CSS -->
    <link rel="stylesheet" href="/resources/css/main.css">

    <!-- Bootstrap core CSS -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/7707ba3ed4.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="/resources/css/설정.css">



</head>

<body>
    <!-- ======= 헤더 ======= -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="/board/main" class="logo">
                            Allthemovie
                        </a>
                        <!-- ***** Logo End ***** -->

                        <!-- ***** Menu Start ***** -->
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
    <!-- 헤더 끝 -->




    <section class="mypage">
        <div class="mypage-back">
            <div class="mypage-size">
                <div class="mypage-box">
                    <div class="mypage-img">
                        <a href="/mypageset"><button class="setting"></button></a>
                    </div>



                    <div class="mypage-con">
                        <header class="mypage-border">
                            <div class="mypage-profile">
                                <div class="profile-img"></div>
                            </div>

                            <div class="mypage-user">
                                <h1 class="user-name">${users.name}</h1>
                            </div>

                            <div class="user-write">
                                <p>${users.profile}</p>
                            </div>
                        </header>
                    </div>

                    <section class="mypage-list-box">
                        <div class="mypage-list">
                            <a href="/wish" class="content-list">
                                <span class="content-count">2</span>
                                <span class="content-label">찜했어요</span>
                            </a>

                            <a href="/myreview" class="content-list">
                                <span class="content-count">2</span>
                                <span class="content-label">작성한 리뷰</span>
                            </a>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </section>

    <!-- 푸터 시작 -->
    <div class="footer">
        <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.
        </p>
    </div>
    <!-- 푸터 끝 -->
    
<script src="/resources/js/jquery-3.3.1.min.js"></script>

</body>

</html>
