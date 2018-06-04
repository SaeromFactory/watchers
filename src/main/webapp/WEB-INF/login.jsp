<%--
  Created by IntelliJ IDEA.
  User: moonhyunji
  Date: 2018. 6. 1.
  Time: PM 1:02
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
        $(document).ready(function() {
            $("#btn-login").click(function() {
                var action = $("#form-login").attr('action');
                var form_data = {
                    user_id: $("#user_id").val(),
                    user_pw: $("#user_pw").val(),
                    is_ajax: 1
                };
                $.ajax({
                    type: "POST",
                    url: action,
                    data: form_data,
                    success: function(response) {
                        if (response == 'success') {
                            $("#message").html("<p style='color:green;font-weight:bold'>로그인 성공!</p>");
                            $("#btn-login").slideUp('slow');
                        } else {
                            $("#message").html("<p style='color:red'>아이디 또는 비밀번호가 잘못되었습니다.</p>");
                        }
                    }
                });
                return false;
            });
        });

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
                    <a href="/login" class="nav-link">걸음걸이 유사도 검사</a>
                </li>
                <li class="nav-item">
                    <a href="/login" class="nav-link">걸음걸이 영상 관리</a>
                </li>
                <li class="nav-item">
                    <a href="/login" class="nav-link">실종자 조회(현황)</a>
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

<div class="section section-signup page-header" style="background-image: url('../../resources/static/assets/img/bg.jpg'); margin-top:-90px;">
    <div class="container">
        <div class="row">
            <div class="col-md-4 ml-auto mr-auto">
                <div class="card card-signup">
                    <form class="login" method="post" action="/login" id="form-login">
                        <div class="card-header card-header-primary text-center">
                            <h2 class="card-title text-center">Login</h2>
                        </div>
                        <div class="card-body">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                        <span class="input-group-text">
                            <i class="material-icons">account_circle</i>
                          </span>
                                </div>
                                <input type="text" class="form-control" name="user_id" id="user_id" placeholder="아이디">
                            </div>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                        <span class="input-group-text">
                            <i class="material-icons">lock_outline</i>
                          </span>
                                </div>
                                <input type="password" placeholder="비밀번호" class="form-control" name="user_pw" id="user_pw" />
                            </div>

                        </div>
                        <div class="card-footer" style="margin-left:-10px;">
                            <a href="/find_id" class="btn btn-link btn-primary btn-lg">아이디 찾기</a>
                            <a href="/find_pw" class="btn btn-link btn-primary btn-lg">비밀번호 찾기</a>
                        </div>
                        <div class="text-center" style="margin-top:-15px;">
                            <input type="submit" id="btn-login" value="로그인하기" class="btn btn-primary btn-round" href="/login">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
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