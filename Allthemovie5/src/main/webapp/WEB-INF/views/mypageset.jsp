<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/설정.css">
</head>

<body>



    <main id="set">
        <div class="set-header">
            <div class="header-inner">
                <h1>설정</h1>
                <a href="/mypage">
                    <button class="btn-back">
                        <i class="icon header-back"></i>
                    </button>
                </a>
            </div>
        </div>


        <div class="settings-items">
            <div class="settings-list-title">
                <h5>계정설정</h5>
            </div>

            <ul class="menu-list">
                <a href="/personalinformation">
                    <li class="menu-item-wrap">
                        <span class="text">개인정보 수정</span>
                    </li>
                </a>

                <a href="#">
                    <li class="menu-item-wrap">
                        <a href="/profile">
                        <span class="text">프로필 수정</span></a>
                    </li>
                </a>
            </ul>


            <div class="settings-list-title">
                <h5>문의하기</h5>
            </div>

            <ul class="menu-list">
                <a href="/guide">
                    <li class="menu-item-wrap">
                        <span class="text">사용가이드</span>
                    </li>
                </a>
                <a href="/inquire">
                    <li class="menu-item-wrap">
                        <span class="text">문의하기</span>
                    </li>
                </a>
            </ul>

            <div class="border"></div>

            <ul class="menu-list user-action">
                <li class="menu-item-wrap">
                    <span class="text"><a href="/logout">로그아웃</a></span>
                </li>
                <li class="menu-item-wrap">
                    <span class="text"><a href="/remove">회원 탈퇴</a></span>
                </li>
            </ul>
        </div>
    </main>



    <div class="footer">
        <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.</p>
    </div>


</body>

</html>
