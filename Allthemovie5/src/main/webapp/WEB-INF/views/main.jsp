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


  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />

  <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />


  <link rel="stylesheet" href="/resources/css/owl.css">


  <script src="https://kit.fontawesome.com/7707ba3ed4.js" crossorigin="anonymous"></script>

  <style>
    html,
    body {
      position: relative;
      height: 100%;
    }

    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color: #000;
      margin: 0;
      padding: 0;
    }

    .main {
      padding: 890px 0px 0px;
      position: relative;
      box-sizing: border-box;
      min-height: 209px;
    }

    .main2 {
      display: flex;
      position: absolute;
      top: 0px;
      left: 0px;
      justify-content: center;
      width: 100%;
      height: 100%;
      overflow: hidden;
    }

    .swiper {
      width: 100%;
      position: relative;
      top: auto;
      left: auto;
      height: 100%;
      filter: none;
      position: absolute;
    }

    .swiper-slide h3 {
      padding-bottom: 30px;
      font-size: 70px;
    }

    .swiper-slide p {
      font-size: 30px;
      padding-bottom: 50px;
    }

    .swiper-slide::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      opacity: 0.5;
      background-color: #000;
    }

    .swiper-slide img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .new-con .vd1 {
      width: 45%;
      padding-bottom: 20px;
    }

    .new-con .vd2 {
      width: 45%;
      float: right;
      margin: 25px 10px 10px 10px;
      color: #ffffff;
    }
  </style>

</head>

<body>
  <!-- ======= Header ======= -->

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

  <!-- End Header -->

  <!-- 메인 시작-->



  <div class="main">
    <div class="main2">
      <div class="swiper mySwiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <img
              src="https://an2-img.amz.wtchn.net/image/v2/7JAoyEG5iT1BD5g2DjYJCg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1KbklsMHNJbkFpT2lJdmRqRXZjblp0ZWpsamJURm9iV0oxWldwbGRuWXdNbmtpTENKeElqbzRNQ3dpZHlJNk1Ua3lNSDAuNXlKWnFLZW9pVTFoQ3QwVFBWN2d2ek9oQWlFaGhsUWF1LTF4NDdXQ2k1MA"
              alt="">
			<a href="/board/detail">
            <div class="carousel-caption">
              <h3 style="font-family: 'ROKAFSlabSerifBold';">탑건: 매버릭</h3>
              <p>기계가 인간을 대체해가는 시대에 아직은 어림없다고 외치는 사자후.</p>
            </div>

          </div>
          <div class=" swiper-slide">
            <img
              src="https://an2-img.amz.wtchn.net/image/v2/0tz-ibsCqgFAJq4aTjJOcA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1KbklsMHNJbkFpT2lJdmRqSXZjM1J2Y21VdmFXMWhaMlV2TVRZMU1EZzJOREUwTXpRMU1ERXpNakV5TVNJc0luRWlPamd3TENKM0lqb3hPVEl3ZlEuV01BaVktcGR6SFJzdE5pbXdpUEhlVm44ZDRzZUZwWU5lSE9jVmJVUTNpYw"
              alt="">
            <a href="/board/detail">
              <div class="carousel-caption">
                <h3 style="font-family: 'HSBombaram';">헤어질 결심</h3>
                <p>파란색으로도 보이고 녹색으로도 보이는 그 옷처럼, 미결과 영원 사이에서 사무치도록.</p>
              </div>
            </a>
          </div>

          <div class="swiper-slide">
            <img
              src="https://an2-img.amz.wtchn.net/image/v2/n3DBfsnHJZtjSQK63BUZaQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1KbklsMHNJbkFpT2lJdmRqSXZjM1J2Y21VdmFXMWhaMlV2TVRZek56RXhPVEUxT1RNd09EWTROVFV6TnlJc0luRWlPamd3TENKM0lqb3hPVEl3ZlEuekd0YTNPVDlPZ2FYLTA5TWV4TjVNTmlFUWtxTGwyYXNTa1NEbzhlQTJtUQ"
              alt="">
            <div class="carousel-caption">
              <h3 style="font-family: 'MYHaemalgeunSangsang';">실종</h3>
              <p>의표를 찌르는 랠리와 텅빈 마음을 휘젓는 헛손질을 오간 끝에 도달한 완벽한 엔딩.</p>
            </div>
          </div>

        </div>
        <div class="swiper-button-next" style="color: white;"></div>
        <div class="swiper-button-prev" style="color: white;"></div>
        <div class="swiper-pagination"></div>
      </div>
    </div>
  </div>
  <!-- 메인 끝 -->

  <!-- 요즘 뜨는 컨텐츠 시작 -->
  <section class="our-courses" id="courses">
    <div class="container">
      <h2>요즘 뜨는 컨텐츠 <i class="fab fa-angellist"></i></h2>
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading">
          </div>
        </div>
        <div class="col-lg-12">
          <div class="owl-courses-item owl-carousel">
            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- 요즘 뜨는 컨텐츠 끝 -->

  <!-- 박스오피스 순위 시작 -->
  <section class="our-courses">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading">
            <h2>박스오피스 순위 <i class="fas fa-ranking-star"></i></h2>
          </div>
        </div>
        <section class="col-lg-12">
          <div class="owl-courses-item owl-carousel">
            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>

            <li class="movie-list">
              <a title="한산: 용의 출현" href="/board/detail">
                <div class="movie-poster">
                  <div class="movie-img">
                    <img
                      src="https://an2-img.amz.wtchn.net/image/v2/joCUocgvsrbotaKpHVJM1g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZ3lNREF6TWpFd01ETTFNVEE1TURNaWZRLkIxZ0djdU5MOEJNOVNsUUNaOExJNDhDd1M1QmxWTi0wS25paV9fRG9tWDA">
                  </div>
                  <div class="rank">1</div>
                </div>
                <div class="movie-bottom">
                  <div class="title">한산: 용의 출현</div>
                  <div class="year">2021 ・ 한국</div>
                  <div class="avg"><span>평균</span><svg width="12" height="10" viewBox="0 0 12 10"
                      xmlns="http://www.w3.org/2000/svg" fill="#555765" class="css-1g90l0x">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
                      </path>
                    </svg>
                    <span>3.4</span>
                  </div>
                  <div class="per">예매율 46% ・ 누적 관객 40만명</div>
                </div>
              </a>
            </li>
              </a>
          </div>

          <!-- 박스오피스 순위 끝 -->



          <!-- 에디터의 추천 시작 -->
          <a href="/board/editor">
            <h2>에디터의 추천 <i class="fas fa-thumbs-up"></i></h2>
          </a>
          <div class="editor-wrap">
            <div class="mainContent">
              <div id="editorList-1">
                <a href="/board/editorarticle">
                  <span class="editor-container">
                    <span class="poster-img">
                      <img
                        data-src="https://file.kinolights.com/m/article_list/202207/29/aff0deef-5689-4dc7-8eda-4367eb5b30ed.jpeg"
                        src="https://file.kinolights.com/m/article_list/202207/29/aff0deef-5689-4dc7-8eda-4367eb5b30ed.jpeg"
                        lazy="loaded"></span>

                    <span class="content-wrap">
                      <span class="story-title">
                        <!----> <span class="title">꽃다발 같은 사랑을 했다 </span>
                      </span>

                      <span class="desc">
                        사랑한 적 있다면, 공감할 수 있을 거예요</span>
                    </span>
                  </span>
                </a>
              </div>


              <div id="editorList-2">
                <a href="/board/editorarticle">
                  <span class="editor-container">
                    <span class="poster-img">
                      <img
                        data-src="https://file.kinolights.com/m/article_list/202207/29/aff0deef-5689-4dc7-8eda-4367eb5b30ed.jpeg"
                        src="https://file.kinolights.com/m/article_list/202207/29/aff0deef-5689-4dc7-8eda-4367eb5b30ed.jpeg"
                        lazy="loaded"></span>

                    <span class="content-wrap">
                      <span class="story-title">
                        <!----> <span class="title">꽃다발 같은 사랑을 했다 </span>
                      </span>

                      <span class="desc">
                        사랑한 적 있다면, 공감할 수 있을 거예요</span>
                    </span>
                  </span>
                </a>
              </div>

              <div id="editorList-3">
                <a href="/board/editorarticle">
                  <span class="editor-container">
                    <span class="poster-img">
                      <img
                        data-src="https://file.kinolights.com/m/article_list/202207/29/aff0deef-5689-4dc7-8eda-4367eb5b30ed.jpeg"
                        src="https://file.kinolights.com/m/article_list/202207/29/aff0deef-5689-4dc7-8eda-4367eb5b30ed.jpeg"
                        lazy="loaded"></span>

                    <span class="content-wrap">
                      <span class="story-title">
                        <!----> <span class="title">꽃다발 같은 사랑을 했다 </span>
                      </span>

                      <span class="desc">
                        사랑한 적 있다면, 공감할 수 있을 거예요</span>
                    </span>
                  </span>
                </a>
              </div>

              <div id="editorList-4">
                <a href="/board/editorarticle">
                  <span class="editor-container">
                    <span class="poster-img">
                      <img
                        data-src="https://file.kinolights.com/m/article_list/202207/29/aff0deef-5689-4dc7-8eda-4367eb5b30ed.jpeg"
                        src="https://file.kinolights.com/m/article_list/202207/29/aff0deef-5689-4dc7-8eda-4367eb5b30ed.jpeg"
                        lazy="loaded"></span>

                    <span class="content-wrap">
                      <span class="story-title">
                        <!----> <span class="title">꽃다발 같은 사랑을 했다 </span>
                      </span>

                      <span class="desc">
                        사랑한 적 있다면, 공감할 수 있을 거예요</span>
                    </span>
                  </span>
                </a>
              </div>
            </div>
          </div>


      </div>
      <!-- 에디터의 추천 끝 -->


      <!-- 신작 소개 시작 -->
      <div class="new-con">

        <a href="/board/newwork">
          <h2>신작 소개 <i class="fab fa-youtube"></i></h2>
        </a>

        <div>
          <iframe class="vd1" width="560" height="315" src="https://www.youtube.com/embed/aw9j_23nORs"
            title="YouTube video player" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen>
          </iframe>
          <div class="vd2">
            <h1 style="font-family: 'Vitro_core';">범죄도시2</h1>
            &nbsp;
            <p>
              가리봉동 소탕작전 후 4년 뒤, 금천서 강력반은 베트남으로 도주한 용의자를 인도받아 오라는 미션을 받는다. 괴물형사 ‘마석도’(마동석)와
              ‘전일만’(최귀화) 반장은 현지 용의자에게서 수상함을 느끼고, 그의 뒤에 무자비한 악행을 벌이는 ‘강해상’(손석구)이 있음을 알게 된다. ‘마석도’와 금천서 강력반은 한국과
              베트남을
              오가며 역대급 범죄를 저지르는 ‘강해상’을 본격적으로 쫓기 시작하는데... 나쁜 놈들 잡는 데 국경 없다! 통쾌하고 화끈한 범죄 소탕 작전이 다시 펼쳐진다!
            </p>
          </div>

          <iframe class="vd1" width="560" height="315" src="https://www.youtube.com/embed/Mrj9XACVJ8U"
            title="YouTube video player" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen>
          </iframe>
          <div class="vd2">
            <h1 style="font-family: 'ROKAFSlabSerifBold';">탑건: 매버릭</h1>
            &nbsp;
            <p>
              최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다. 그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케 하는 상공
              훈련에서 눈으로 봐도 믿기 힘든 전설적인 조종 실력에 모두가 압도된다. 매버릭의 지휘아래 견고한 팀워크를 쌓아가던 팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자 매버릭은 자신이
              가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에 나서는데…
            </p>
          </div>

          <iframe class="vd1" width="560" height="315" src="https://www.youtube.com/embed/Dlfp3K11C_o"
            title="YouTube video player" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen>
          </iframe>
          <div class="vd2">
            <h1 style="font-family: 'Busan';">토르: 러브 앤 썬더</h1>
            &nbsp;
            <p>
              슈퍼 히어로 시절이여, 안녕! 이너피스를 위해 자아 찾기 여정을 떠난 천둥의 신 ‘토르’ 그러나, 우주의 모든 신들을 몰살하려는 신 도살자 ‘고르’의 등장으로 ‘토르’의 안식년
              계획은 산산조각 나버린다. ‘토르’는 새로운 위협에 맞서기 위해, ‘킹 발키리’, ‘코르그’, 그리고 전 여자친구 ‘제인’과 재회하게 되는데, 그녀가 묠니르를 휘두르는 ‘마이티
              토르’가 되어 나타나 모두를 놀라게 한다. 이제, 팀 토르는 ‘고르’의 복수에 얽힌 미스터리를 밝히고 더 큰 전쟁을 막기 위한 전 우주적 스케일의 모험을 시작하는데... 우주
              최고의 ‘갓’ 매치가 시작된다!
            </p>
          </div>
        </div>

      </div>
    </div>
  </section>


  <!-- 신작 소개 끝-->

  <!-- 푸터 시작 -->
  <div class="footer">
    <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.</p>
  </div>
  <!-- 푸터 끝 -->

  <!-- Scripts -->
  <script src="/resources/js/isotope.min.js"></script>
  <script src="/resources/js/owl-carousel.js"></script>
  <script src="/resources/js/custom.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

  <!-- 영화 캐러셀 스크립트 -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>





</body>

</html>
