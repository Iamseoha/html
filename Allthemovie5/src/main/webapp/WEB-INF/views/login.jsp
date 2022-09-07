<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">


    <title>Education Template - Meeting Detail Page</title>

    <!-- main CSS -->
    <link rel="stylesheet" href="/resources/css/main.css">

    <!-- Bootstrap core CSS -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/7707ba3ed4.js" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/로그인.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <style>
  .login_warn{
    margin-top: 30px;
    text-align: center;
    color : red;
}
</style>
</head>

<body>
    <!-- ======= Header ======= -->
    <div>
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
                                <li><a href="#"><i class="fa-solid fa-circle-user fa-2x"></i></a></li>
                            </ul>

                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <!-- End Header -->


        <div id="preloder">
            <div class="loader"></div>
        </div>


        <div class="login">
            <div class="login-box">
                <h2 class="login-title">로그인</h2>


                <section>
                    <div class="login-inner">

                        <form action=/login method="post">
                            <div class="login-wrap">
                                <label class="email-box">

                                    <input placeholder="이메일" type="email" name="user_id" class="email-text">

                                </label>
                            </div>

                            <div class="login-wrap">
                                <label class="email-box">
												
                                    <input placeholder="비밀번호" type="password" name="password" class="email-text">

                                </label>
                            </div>
                            
							<c:if test = "${resultt == 0 }">
                				<div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            				</c:if>
            				
                            <button type="submit" class="login-btn">로그인</button>
                        </form>


                        <div class="login-bottom">
                            <a href="/passwordreset"> <button class="bottom-btn">비밀번호를
                                    잊어버리셨나요?</button></a>
                        </div>

                        <div class="join">계정이 없으신가요?
                            <a href="/register"><button class="bottom-btn">회원가입</button></a>
                        </div>

                        <hr class="login-border">

                        <button class="btn btn--kakao">
                            <svg data-v-22597430="" width="24" height="24" fill="none"
                                xmlns="http://www.w3.org/2000/svg" class="kakao__icon">
                                <path data-v-22597430=""
                                    d="M11.998 4c-5.387 0-9.753 3.443-9.753 7.69 0 2.746 1.826 5.158 4.572 6.516-.15.515-.96 3.314-.992 3.535 0 0-.02.165.087.227a.295.295 0 00.232.015c.308-.044 3.564-2.327 4.127-2.72.572.08 1.15.118 1.727.117 5.387 0 9.754-3.443 9.754-7.69S17.384 4 11.998 4z"
                                    fill="#000" fill-opacity=".9"></path>
                            </svg>
                            카카오로 1초 만에 시작하기
                        </button>
                    </div>

                </section>
            </div>
        </div>
    </div>

    <!-- 푸터 시작 -->
    <div class="footer">
        <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.
        </p>
    </div>
    <!-- 푸터 끝 -->

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->

    <script src="/resources/js/custom.js"></script>
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/main.js"></script>


</body>

</html>
