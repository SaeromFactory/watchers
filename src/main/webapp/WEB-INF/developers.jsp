<%--
  Created by IntelliJ IDEA.
  User: moonhyunji
  Date: 2018. 6. 1.
  Time: PM 1:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="../../resources/static/assets/img/footprint.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        WATCHERS
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="../../resources/static/assets/css/material-kit.css?v=2.0.3" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../../resources/static/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="landing-page sidebar-collapse">
<nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionNav">
    <div class="container">
        <div class="navbar-translate">
            <h3 style="font-family: VERDANA; font-weight:bold; letter-spacing:1.3px;"><span style="color:#9c27b0;">W</span>ATCHERS</h3>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="main.html" class="nav-link">홈</a>
                </li>
                <li class="nav-item">
                    <a href="#pablo" class="nav-link">걸음걸이 유사도 검사</a>
                </li>
                <li class="nav-item">
                    <a href="#pablo" class="nav-link">걸음걸이 영상 관리</a>
                </li>
                <li class="nav-item">
                    <a href="#pablo" class="nav-link">실종자 조회(현황)</a>
                </li>
                <li class="nav-item">
                    <a href="login.html" class="nav-link">로그인</a>
                </li>
                <li class="nav-item">
                    <a href="register.html" class="nav-link">회원가입</a>
                </li>
                <li class="nav-item">
                    <a href="contact_list.html" class="nav-link">문의게시판</a>
                </li>
                <li class="dropdown nav-item">
                    <a href="#pablo" class="dropdown-toggle nav-link" data-toggle="dropdown"><i class="material-icons">face</i> User </a>
                    <div class="dropdown-menu">
                        <h6 class="dropdown-header">Welcome
                            <%=user.id%> :)</h6>
                        <a href="/user_inf" class="dropdown-item">회원정보 조회</h6>
                            <a href="/user_del" class="dropdown-item">회원 탈퇴</a>
                            <div class="dropdown-divider"></div>
                            <a href="/user_posts" class="dropdown-item">개인 게시글 관리</a>
                            <div class="dropdown-divider"></div>
                            <a data-toggle="modal" data-target="#myModal" class="dropdown-item">로그아웃</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="page-header header-filter" data-parallax="true" style="background-image: url('../../resources/static/assets/img/bg.jpg')">
</div>
<div class="main main-raised">
    <div class="container">
        <div class="section text-center">
            <div class="row">
                <div class="col-md-8 ml-auto mr-auto">
                    <h2 class="title">Let&apos;s talk product</h2>
                    <p class="description" style="font-family: 나눔바른고딕;">수분에 취약하고 외부 요인에 의해서 소실될 가능성이 큰 지문인식의 한계를 보완하여 차세대 생체인식기술로 떠오르는 보행인식기술을 활용한 서비스입니다. 기존에 존재하는 홍채인식의 경우 사용자들의 불편함과, 꼭 접촉해야만 하는 다른 생체인식기술과 달리 보행인식기술은 카메라 영상만을 이용하여 확인 가능합니다.</p>
                </div>
            </div>
            <div class="features">
                <div class="row">
                    <div class="col-md-4">
                        <div class="info">
                            <div class="icon icon-info">
                                <i class="material-icons">trending_up</i>
                            </div>
                            <h4 class="info-title">정확도 증가</h4>
                            <p>기계학습을 통한 데이터로 걸음걸이 정확도를 향상시켰습니다.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="info">
                            <div class="icon icon-success">
                                <i class="material-icons">directions_walk</i>
                            </div>
                            <h4 class="info-title">쉬운 접근성</h4>
                            <p>간편한 걸음걸이 등록으로 보다 쉬어진 보행자 찾기가 가능합니다.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="info">
                            <div class="icon icon-danger">
                                <i class="material-icons">cloud_upload</i>
                            </div>
                            <h4 class="info-title">실종자 프로파일</h4>
                            <p>실종자 빅데이터와 시계열 데이터 분석으로 최적화된 프로그램을 개발했습니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section text-center" style="margin-top: -100px;">
            <h2 class="title">WATCHERS Developers</h2>
            <div class="team">
                <div class="row">
                    <div class="col-md-4">
                        <div class="team-player">
                            <div class="card card-plain">
                                <div class="col-md-6 ml-auto mr-auto">
                                    <img src="../../resources/static/assets/img/faces/avatar.jpg" alt="Thumbnail Image" class="img-raised rounded-circle img-fluid">
                                </div>
                                <h4 class="card-title">Song Jeongju
                                    <br>
                                </h4>
                                <div class="card-body">
                                    <p class="card-description">Web Designer<br/> Kinect Developer
                                    </p>
                                </div>
                                <div class="card-footer justify-content-center">
                                    <a href="https://www.instagram.com/j.___.uuu/" class="btn btn-link btn-just-icon"><i class="fa fa-instagram"></i></a>
                                    <a href="www.facebook.com/jeongjuuuu" class="btn btn-link btn-just-icon"><i class="fa fa-facebook-square"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="team-player">
                            <div class="card card-plain">
                                <div class="col-md-6 ml-auto mr-auto">
                                    <img src="../../resources/static/assets/img/faces/christian.jpg" alt="Thumbnail Image" class="img-raised rounded-circle img-fluid">
                                </div>
                                <h4 class="card-title">Moon Hyunji
                                    <br>
                                </h4>
                                <div class="card-body">
                                    <p class="card-description">Server Developer<br/>Data Manager</p>
                                </div>
                                <div class="card-footer justify-content-center">
                                    <a href="#pablo" class="btn btn-link btn-just-icon"><i class="fa fa-twitter"></i></a>
                                    <a href="#pablo" class="btn btn-link btn-just-icon"><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="team-player">
                            <div class="card card-plain">
                                <div class="col-md-6 ml-auto mr-auto">
                                    <img src="../../resources/static/assets/img/faces/kendall.jpg" alt="Thumbnail Image" class="img-raised rounded-circle img-fluid">
                                </div>
                                <h4 class="card-title">blabla
                                    <br>
                                </h4>
                                <div class="card-body">
                                    <p class="card-description">Developers <br/>&nbsp;</p>
                                </div>
                                <div class="card-footer justify-content-center">
                                    <a href="#pablo" class="btn btn-link btn-just-icon"><i class="fa fa-twitter"></i></a>
                                    <a href="#pablo" class="btn btn-link btn-just-icon"><i class="fa fa-instagram"></i></a>
                                    <a href="#pablo" class="btn btn-link btn-just-icon"><i class="fa fa-facebook-square"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gachonlogo">
            <p style="text-align:center;">
                <img src="../../resources/static/assets/img/gachon.png" />
            </p>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">정말 로그아웃 하시겠습니까?</h5>
            </div>
            <div class="modal-footer">
                <a class="btn btn-link" href="main.html">Logout</a>
                <button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<footer class="footer" data-background-color="black">
    <div class="container">
        <nav class="float-left">
            <ul>
                <li>
                    <a href="developers.html">
                        About Us
                    </a>
                </li>
                </li>
                <li>
                    <a href="https://www.gachon.ac.kr">
                        Gachon Univ.
                    </a>
                </li>
            </ul>
        </nav>
        <div class="copyright float-right">
            &copy;
            <script>
                document.write(new Date().getFullYear())

            </script>, made by
            <a href="developers.html" target="_blank">WATCHERS</a> in gachon Univ.
        </div>
    </div>
</footer>
<!--   Core JS Files   -->
<script src="../../resources/static/assets/js/core/jquery.min.js" type="text/javascript"></script>
<script src="../../resources/static/assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="../../resources/static/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
<script src="../../resources/static/assets/js/plugins/moment.min.js"></script>
<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
<script src="../../resources/static/assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../../resources/static/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="../../resources/static/assets/js/material-kit.js?v=2.0.3" type="text/javascript"></script>
</body>

</html>
