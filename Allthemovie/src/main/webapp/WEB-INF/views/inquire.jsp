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
    <link rel="stylesheet" href="/resources/css/문의.css">



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
                            <li><a href="#"><i class="fa-solid fa-circle-user fa-2x"></i></a></li>
                        </ul>

                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- 헤더 끝 -->




    <section>
        <div class="door">


            <h1>
                문의 등록
                <span class="follow-up-hint"></span>
            </h1>

            <p> 문의하신 내용은 고객센터에서 확인 후 영업일 기준 5일 이내에 답변 드리도록 하겠습니다.
                <br> * 운영 시간: 평일 (월 ~ 금) 10:00 ~ 18:00
                <br>
            </p>
            <br>

            <div id="main-content" class="form">
                <form class="request-form">
                    <input name="utf8" type="hidden" value="✓">
                    <input type="hidden" name="request[ticket_form_id]" id="request_ticket_form_id"
                        value="900000090526">

                    <div class="form-field">
                        <label id="request_description_label" for="request_description">설명</label>
                        <textarea></textarea>
                        <input type="hidden" name="request[description_mimetype]" id="request_description_mimetype"
                            value="text/plain" style="display: none;">

                        <p>문의 내용을 최대한 자세하게 작성해 주세요.
                            (내용에 욕설이 포함되어 있는 경우 답변이 어려울 수 있는 점 양해 부탁드립니다.)</p>
                    </div>

                    <div class="form-field">
                        <label>
                            첨부 파일
                            <span class="optional">(선택 사항)</span>
                        </label>
                        <div class="upload-zone">
                            <input type="file" multiple="true" id="request-attachments" onchange="loadFile(this)">
                            <span>
                                <a>파일 추가</a>
                            </span>
                        </div>

                        <div id="fileName"></div>

                    </div>


                    <div class="sub">
                        <input type="submit" name="commit" value="제출">
                    </div>

                </form>



            </div>
        </div>
    </section>




    <!-- 푸터 시작 -->
    <div class="footer">
        <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.
        </p>
    </div>
    <!-- 푸터 끝 -->



    <script>
        function loadFile(input) {
            var file = input.files[0];	//선택된 파일 가져오기

            //미리 만들어 놓은 div에 text(파일 이름) 추가
            var name = document.getElementById('fileName');
            name.textContent = file.name;
        };
    </script>
</body>

</html>
