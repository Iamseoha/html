<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/설정.css">
    <link rel="stylesheet" href="/resources/css/정보수정.css">

    <style>
        .input-group {
            color: #efefef;
            position: relative;
            margin-bottom: 13px;
        }

        .input-label {

            width: 50%;

        }

        .indicator.number {
            text-align: right;
            position: absolute;
            right: 0;
            top: 0;

        }

        .indicator {
            font-size: 13px;
            font-weight: 400;
            color: #98a4b7;
            opacity: 1;
            position: relative;
        }

        .profile-info-area .input-group .primary-dark-input.introduce[data-v-28ca7205] {
            color: #efefef;
            line-height: 21px;
            box-sizing: border-box;
            height: 105px;
            resize: none;
        }

        .profile-info-area .input-group .primary-dark-input.introduce[data-v-28ca7205] {
            color: #efefef;
            line-height: 21px;
            box-sizing: border-box;
            height: 105px;
            resize: none;
        }
    </style>

</head>

<body>
    <main id="contents">
        <div id="header" class="sub-header tit_page">
            <div class="header-inner">
                <h1>프로필 수정</h1>
                <button class="btn-back" onclick="history.back()">
                    <i class="icon header-back"></i></button>
            </div>
        </div>

        <div class="profile-info-area">
            <form class="field profile_upload">
                <div class="file is-boxed">
                    <label class="file-label">
                        <input type="file" class="file-input" name="profile_image">
                        <span class="file-cta">
                           <img id="thumbnail_image"
                                src="https://an2-glx.amz.wtchn.net/assets/default/user/photo_file_name_small-ab0a7f6a92a282859192ba17dd4822023e22273e168c2daf05795e5171e66446.jpg"></span>
                        </span>        
                    </label>
                </div>
            </form>
        </div>


        <form action="/profile" method="post">
            <!-- <div class="input-group">
                <label class="input-label">닉네임</label>
                <input type="text" class="primary-dark-input">
                <span data-v-28ca7205="" class="indicator number">14/20</span>
            </div>-->
			<br>
            <div class="input-group password">
                <div style="position: relative;">
                    <label class="input-label">소개</label>
                  <!--  <span data-v-28ca7205="" class="indicator number">7/100</span>-->
                    <span data-v-28ca7205="" class="input-wrap"><textarea maxlength="100" data-v-28ca7205="" type="text"
                            placeholder="소개글을 입력하세요.(최대 100자)" class="primary-dark-input introduce"
                            style="height: 100px; width: 668px;" name="profile"></textarea>
                    </span>
                </div>
            </div>
            
            <div class="input-group" style="display:none">
                    <label class="input-label">
                        <input placeholder="아이디" type="email" name="user_id" id="user_id" class="primary-dark-input"
                            value="${users.user_id}" readonly />
                    </label>
                </div>

        <div class="submit-btn-wrap">
            <button class="primary-btn" id="tttt">
                저장
            </button>
        </div>
        </form>
        
    </main>



    <script src="http://madalla.kr/js/jquery-1.8.3.min.js"></script>
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".file-input").on('change', function () {
                readURL(this);
            });
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#thumbnail_image').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
        
        $("#tttt").on("click", function () {
                alert("수정 완료. 다시 로그인 해주세요");
        });
    </script>
</body>

</html>
