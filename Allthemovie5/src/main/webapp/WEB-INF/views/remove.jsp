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

    <style>
        .join {
            margin-top: 20px;
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
                <h2 class="login-title">회원탈퇴</h2>
                <section>
                    <div class="login-inner">
                        <form action="/remove" method="post">
							<div class="login-wrap" style="visibility:hidden">
                                <label class="email-box">
                                    <input placeholder="아이디" type="email" name="user_id" id="user_id" class="email-text" value="${users.user_id}" readonly/>
                                </label>
                            </div>
                            <div class="login-wrap">
                                <label class="email-box">
                                    <input placeholder="비밀번호 확인" type="password" name="password" id="password" class="email-text" >
                                </label>
                            </div>
							<br>
                            <button id="tttt" type="submit" class="login-btn ">회원탈퇴</button>
                        </form>
						<br>
                        <hr class="login-border">
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

	</script>

    <script src="/resources/js/custom.js"></script>

    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/main.js"></script>

	<script type="text/javascript">

			var result ="${result}";
			
			$("#tttt").on("click", function(){
				if($("#password").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#password").focus();
					return false;
				}
				if($("#password").val()=="${users.password}"){
					alert("회원탈퇴 완료.");
				}
			});
			
			if(result==="removeFalse") {
		 		alert("비밀번호가 틀립니다.");
		 	}


	</script>

</body>

</html>
