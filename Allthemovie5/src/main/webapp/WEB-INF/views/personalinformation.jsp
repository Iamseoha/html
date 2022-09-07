<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/설정.css">
    <link rel="stylesheet" href="/resources/css/정보수정.css">
</head>

<body>
    <main id="contents">
        <div id="header" class="sub-header tit_page">
            <div class="header-inner">
                <h1>개인정보 수정</h1>
                <button class="btn-back" onclick="history.back()">
                    <i class="icon header-back"></i></button>
            </div>
        </div>

        <section class="profile-info-area">
            <form action="/personalinformation" method="post">
            
                <br>
                <div class="input-group password">
                        <label class="input-label">
                            <input placeholder="비밀번호" type="password" name="password" id="password"
                                class="primary-dark-input password-input">
                        </label>
                    </div>
                <br>
                <div class="input-group password">
                        <label class="input-label" >
                            <input placeholder="이름" type="text" name="name" id="name"
                                class="primary-dark-input password-input">
                        </label>
                </div>
                
                <div class="input-group" style="display:none">
                    <label class="input-label">
                        <input placeholder="아이디" type="email" name="user_id" id="user_id" class="primary-dark-input"
                            value="${users.user_id}" readonly />
                    </label>
                </div>

                <div class="submit-btn-wrap">
                    <button id="tttt" type="submit" class="primary-btn">저장</button>
                </div>

            </form>
        </section>


    </main>
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
     $(document).ready(function(){
    	
        $("#tttt").on("click", function () {
            if ($("#password").val() == "") {
                alert("비밀번호를 입력해주세요.");
                $("#password").focus();
                return false;
            }
            if ($("#name").val() == "") {
                alert("이름을 입력해주세요.");
                $("#name").focus();
                return false;
            }
            else {
                alert("회원수정 완료. 다시 로그인 해주세요");
            }
        });
        
    })
    </script>
</body>

</html>