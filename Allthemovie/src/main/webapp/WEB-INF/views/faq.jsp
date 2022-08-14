<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.84.0">
  <title>Dashboard Template · Bootstrap v5.0</title>





  <!-- Bootstrap core CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
  </style>


  <!-- Custom styles for this template -->
  <link href="/resources/css/관리자.css" rel="stylesheet">

</head>

<body>

  <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="/board/main">ALLTHEMOVIE</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
      data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <div class="navbar-nav">
      <div class="nav-item text-nowrap">
        <a class="nav-link px-3" href="#">Sign out</a>
      </div>
    </div>
  </header>

  <div class="container-fluid">
    <div class="row">
      <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block sidebar collapse">
        <div class="position-sticky pt-3">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="/admin/member">
                <span data-feather="home"></span>
                회원 관리
              </a>
            </li>
            <li class="nav-item"> 
              <a class="nav-link" href="/admin/review">
                <span data-feather="file"></span>
                리뷰 관리
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/admin/notice">
                <span data-feather="shopping-cart"></span>
                공지사항 등록 / 수정
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/admin/faq">
                <span data-feather="users"></span>
                FAQ 등록 / 수정
              </a>
            </li>
          </ul>
        </div>
      </nav>

      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
              </th>
              <th scope="col">번호</th>
              <th scope="col">제목</th>
            </tr>
          </thead>


          <tbody>
            <tr>
              <th>
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
              </th>
              <td>1</td>
              <td>가나다라마바사가나다라</td>
            </tr>

            <tr>
              <th>
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
              </th>
              <td>1</td>
              <td>가나다라마바사가나다라</td>

            </tr>

            <tr>
              <th>
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
              </th>
              <td>1</td>
              <td>가나다라마바사가나다라</td>
            </tr>

            <tr>
              <th>
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
              </th>
              <td>1</td>
              <td>가나다라마바사가나다라</td>
            </tr>
          </tbody>
        </table>

        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
          <button class="btn btn-primary me-md-2" type="button">등록</button>
          <button class="btn btn-primary me-md-2" type="button">수정</button>
          <button class="btn btn-primary me-md-2" type="button">삭제</button>
        </div>

        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center ">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
              </a>
            </li>
          </ul>
        </nav>

      </main>
    </div>

  </div>




  <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
    integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
    integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
    crossorigin="anonymous"></script>

</body>

</html>
