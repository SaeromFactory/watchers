<%--
  Created by IntelliJ IDEA.
  User: moonhyunji
  Date: 2018. 6. 1.
  Time: PM 1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="/assets/img/footprint.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        WATCHERS
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="/assets/css/material-kit.css?v=2.0.3" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="/assets/demo/demo.css" rel="stylesheet" />

    <script type="text/javascript">
        window.onload = function() {
            document.getElementById('form-register').onsubmit = function() {
                var user_pw = document.getElementById("user_pw").value;
                var user_pw2 = document.getElementById("user_pw2").value;

                if (user_pw == user_pw2) {
                    alert("성공");
                } else {
                    alert("다시 입력");
                    return false;
                }
            }


    </script>

</head>

<body class="signup-page sidebar-collapse">
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
                    <a href="/index" class="nav-link">홈</a>
                </li>
                <li class="nav-item">
                    <a href="/index" class="nav-link">걸음걸이 유사도 검사</a>
                </li>
                <li class="nav-item">
                    <a href="/index" class="nav-link">걸음걸이 영상 관리</a>
                </li>
                <li class="nav-item">
                    <a href="/index" class="nav-link">실종자 조회(현황)</a>
                </li>
                <li class="nav-item">
                    <a href="/login" class="nav-link">로그인</a>
                </li>
                <li class="nav-item">
                    <a href="/register" class="nav-link">회원가입</a>
                </li>
                <li class="nav-item">
                    <a href="/login" class="nav-link">문의게시판</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="page-header header-filter" filter-color="purple" style="background-image: url('../../resources/static/assets/img/bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-md-10 ml-auto mr-auto">
                <div class="card card-signup">
                    <h2 class="card-title text-center">Join Us</h2>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-5 ml-auto">
                                <div class="info info-horizontal">
                                    <div class="icon icon-rose">
                                        <i class="material-icons" style="margin-top:10px;">trending_up</i>
                                    </div>
                                    <div class="description" style="margin-top:30px;">
                                        <h4 class="info-title">정확도 증가</h4>
                                        <p class="description">
                                            기계학습을 통한 데이터로 걸음걸이 정확도를<br/>향상시켰습니다.
                                        </p>
                                    </div>
                                </div>
                                <div class="info info-horizontal">
                                    <div class="icon icon-primary">
                                        <i class="material-icons" style="margin-top:10px;">directions_walk</i>
                                    </div>
                                    <div class="description">
                                        <h4 class="info-title">쉬운 접근성</h4>
                                        <p class="description">
                                            간편한 걸음걸이 등록으로 보다 쉬어진 보행자 찾기가 가능합니다.
                                        </p>
                                    </div>
                                </div>
                                <div class="info info-horizontal">
                                    <div class="icon icon-info">
                                        <i class="material-icons" style="margin-top:10px;">cloud_upload</i>
                                    </div>
                                    <div class="description">
                                        <h4 class="info-title">실종자 프로파일</h4>
                                        <p class="description">
                                            실종자 빅데이터와 시계열 데이터 분석으로 최적화된 프로그램을 개발했습니다.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 mr-auto">
                                <form class="register" method="post" action="/register" id="form-register">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text">
                            <i class="material-icons">account_circle</i>
                          </span>
                                            </div>
                                            <input type="text" class="form-control" placeholder="아이디" id="user_id" name="user_id" required/>
                                            <a  href="javascript:id_check()" style="margin-top:6px;"> ID 중복 검사 </a>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text">
                            <i class="material-icons">lock_outline</i>
                          </span>
                                            </div>
                                            <input type="password" placeholder="비밀번호" class="form-control" name="user_pw" id="user_pw" required/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text">
                            <i class="material-icons">check</i>
                          </span>
                                            </div>
                                            <input type="password" placeholder="비밀번호 확인" class="form-control" id="user_pw2" name="user_pw2" required/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text">
                            <i class="material-icons">face</i>
                          </span>
                                            </div>
                                            <input type="text" class="form-control" placeholder="이름" name="user_name" id="user_name" required/>
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top:45px;">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text">
                            <i class="material-icons">favorite_border</i>
                          </span>
                                            </div>
                                            <div class="form-check" style="margin-left: -30px; margin-top:-20px;     padding-left: 10px;">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="radio" name="gender" id="man" value="option1">남성
                                                    <span class="circle">
                    <span class="check"></span>
                  </span>
                                                </label>
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="radio" name="gender" id="woman" value="option2">여성
                                                    <span class="circle">
                    <span class="check"></span>
                  </span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text">
                            <i class="material-icons">smartphone</i>
                          </span>
                                            </div>
                                            <input type="text" class="form-control" placeholder="휴대전화" id="phone" name="phone" required/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text">
                            <i class="material-icons">mail</i>
                          </span>
                                            </div>
                                            <input type="text" class="form-control" placeholder="이메일" id="email" name="email" required/>
                                        </div>
                                    </div>
                                    <div class="text-center" style="margin-top: 30px;">
                                        <input type="submit" value="회원가입하기" class="btn btn-primary btn-round" id="btn-register">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div

<!--   Core JS Files   -->
<script src="/assets/js/core/jquery.min.js" type="text/javascript"></script>
<script src="/assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
<script src="/assets/js/plugins/moment.min.js"></script>
<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
<script src="/assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="/assets/js/material-kit.js?v=2.0.3" type="text/javascript"></script>
</body>

</html>
