<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.6.4.js"
                integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
            <script src="https://kit.fontawesome.com/09115628a5.js" crossorigin="anonymous"></script>
            <style>
                * {
                    box-sizing: border-box;
                }

                div {
                    border: 1px solid black;
                }

                .container {
                    position: relative;
                }

                #baner {
                    padding: 0px;
                    position: relative;
                }

                .cir {
                    position: relative;
                    padding: 0%;
                }

                .circle {
                    position: absolute;
                    left: 10%;
                    top: 10%;
                    width: 80%;
                    height: 80%;
                    background-color: black;
                    border-radius: 100%;
                }

                .footer {
                    height: 200px;
                }

                .joongo {
                    background-color: rgb(189, 189, 189);
                }

                .footer {
                    background-color: rgb(189, 189, 189);
                }

                .navi {
                    position: fixed;
                    top: 0;
                    background-color: white;
                    z-index: 1;
                }

                #logo {
                    z-index: 2;
                }

                .carousel-control-prev,
                .carousel-control-next {
                    z-index: 0;
                }

                #carouselExampleDark {
                    z-index: 0;
                }
            </style>
        </head>

        <body>
            <div class="container">

                <!-- 헤더 네비 -->
                <div class="row navi">

                    <!-- 검색부분 누를시 나오는 것
                <div class="col-1" style="text-align: right;">←</div>
                <div class="col-11">
                    <nav class="navbar navbar-light bg-light">
                        <form class="container-fluid">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="통합검색창" aria-label="Username"
                                    aria-describedby="basic-addon1">
                                &nbsp;
                                <button type="button" class="btn btn-success">검색</button>
                            </div>
                        </form>
                    </nav>
                </div> -->


                    <div class="col-12">
                        <div class="row">
                            <div class="col-6 col-lg-2 order-2 order-lg-first" id="logo">
                                <div class="row">
                                    <div class="col-12">
                                        <a href="/index.jsp">logo</a>
                                    </div>

                                    <div class="col-12 subsearchbox">
                                        <form class="container-fluid" action="/allsearch.maincontroller">
                                            <i class="fa-solid fa-arrow-left" id="searsubback"></i> <select
                                                name="select">
                                                <option value="제목">제목</option>
                                                <option value="내용">내용</option>
                                                <option value="작성자">작성자</option>
                                            </select> <input type="text" class="form-control" placeholder="통합검색창"
                                                aria-label="Username" aria-describedby="basic-addon1"
                                                style="width: 40%; padding: 0; display: inline;" name="title">
                                            <button type="submit" class="btn btn-success"
                                                style="z-index: 0; background-color: rgb(60, 117, 121); padding: 0;">검색</button>
                                        </form>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-4 d-none d-lg-block order-lg-1">여백</div>
                            <div class="col-4 d-block d-lg-none order-1">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="row">
                                            <div class="col-12">
                                                <i class="fa-solid fa-bars" id="hamberger"></i>
                                            </div>

                                            <!-- 네비햄버거 누를시 나오는거 -->
                                            <div class="col-12 navisub">
                                                <div class="row" style="text-align: right;">
                                                    <div class="col-12 navisubstudy">
                                                        <a href="/select.studyboard">스터디</a>
                                                    </div>
                                                    <div class="col-12 navisubjoongo">
                                                        <a href="/selectBound.secondHand">중고책</a>
                                                    </div>
                                                    <div class="col-12 navisubfreeboard">
                                                        <a href="/contentList.freeBoard">자유게시판</a>
                                                    </div>
                                                    <div class="col-12 navisublicence">
                                                        <a href="자격증 게시판으로">자격증</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <a href="회원가입 페이지로"><i class="fa-solid fa-user-plus"></i></a>
                                                <!--로그인안됐을때-->
                                            </div>
                                            <div class="col-6">
                                                <a href="회원정보 페이지로"><i class="fa-solid fa-user"></i></a>
                                                <!--로그인됐을때-->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="row">
                                            <div class="col-12">공백</div>
                                            <div class="col-12 subsearch">
                                                <i class="fa-solid fa-magnifying-glass" id="subsearchclick"></i>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-1 d-none d-lg-block order-lg-2" style="text-align: center;">
                                <a href="/select.studyboard"> Study </a>
                            </div>
                            <div class="col-lg-1 d-none d-lg-block order-lg-3" style="text-align: center;">
                                <a href="/selectBound.secondHand"> Sencond </a>
                            </div>
                            <div class="col-lg-1 d-none d-lg-block order-lg-4" style="text-align: center;">
                                <a href="/contentList.freeBoard"> Board </a>
                            </div>
                            <div class="col-lg-1 d-none d-lg-block order-lg-5" style="text-align: center;">
                                <a href="자격증 게시판으로"> Licence </a>
                            </div>
                            <!-- <div class="col-2 d-block d-lg-none order-3"></div> -->
                            <div class="col-lg-2 d-none d-lg-block  order-lg-last">
                                <div class="row">
                                    <div class="col-3 login">
                                        <a href="/member/loginForm.jsp"><i class="fa-solid fa-right-to-bracket"></i></a>
                                        <!--로그인안됐을때-->
                                    </div>
                                    <div class="col-3 signup">
                                        <a href="회원가입 페이지로"><i class="fa-solid fa-user-plus"></i></a>
                                        <!--로그인안됐을때-->
                                    </div>
                                    <div class="col-3 profile">
                                        <a href="회원정보 페이지로"><i class="fa-solid fa-user"></i></a>
                                        <!--로그인됐을때-->
                                    </div>
                                    <div class="col-3 logout">
                                        <a href="로그아웃 페이지로"><i class="fa-solid fa-right-from-bracket"></i></a>
                                        <!--로그인됐을때-->
                                    </div>
                                </div>
                            </div>

                            <div class="col-2 d-block d-lg-none order-last">
                                <div class="row">
                                    <div class="col-12">공백</div>
                                    <div class="col-6">
                                        <a href="/member/loginForm.jsp"><i class="fa-solid fa-right-to-bracket"></i></a>
                                    </div>

                                    <div class="col-6">
                                        <a href="로그아웃 페이지로"><i class="fa-solid fa-right-from-bracket"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 바디 -->
                <div class="row banner">
                    <div class="col-12" id="baner">
                        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0"
                                    class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                                    aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                                    aria-label="Slide 3"></button>
                            </div>
                            <div class="carousel-inner">
                                <a href="인기 있는 스터디">
                                    <div class="carousel-item active" data-bs-interval="5000">
                                        <img src="..." class="d-block w-100 slide" alt="...">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>인기있는 스터디</h5>
                                            <p>좋아요를 많이 받은 호스트의 스터디</p>
                                        </div>
                                    </div>
                                </a> <a href="등급 정보">
                                    <div class="carousel-item" data-bs-interval="5000">
                                        <img src="..." class="d-block w-100 slide" alt="...">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>등급별로 혜택을 누려보세요</h5>
                                            <p>등급별 혜택 종류</p>
                                        </div>
                                    </div>
                                </a> <a href="임박 시험 날짜">
                                    <div class="carousel-item" data-bs-interval="5000">
                                        <img src="..." class="d-block w-100 slide" alt="...">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>날짜가 임박한 시험</h5>
                                            <p>시험일자가 임박한 시험을 보여드립니다.</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                                data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                                data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-2 d-none d-lg-block" style="background-color: rgb(30, 60, 62);">공백</div>
                    <div class="col-lg-8 d-none d-lg-block"
                        style="text-align: center; background-color: rgb(30, 60, 62);">

                        <form class="container-fluid" action="/allsearch.maincontroller">
                            <div class="input-group" style="margin-top: 10px; margin-bottom: 10px;">
                                <select name="select">
                                    <option value="제목">제목</option>
                                    <option value="내용">내용</option>
                                    <option value="작성자">작성자</option>
                                </select> &nbsp; <input type="text" class="form-control" placeholder="통합검색창"
                                    aria-label="Username" aria-describedby="basic-addon1" name="title"> &nbsp;
                                <button type="submit" class="btn btn-success"
                                    style="z-index: 0; background-color: rgb(60, 117, 121);">검색</button>
                            </div>
                        </form>


                    </div>
                    <div class="col-lg-2 d-none d-lg-block" style="background-color: rgb(30, 60, 62);">공백</div>
                </div>
                <div class="row">
                    <div class="col-1 col-sm-2">공백</div>
                    <div class="col-10 col-sm-8">
                        <div class="row 스터디" style="text-align: center;">
                            <div class="col-12">공백</div>
                            <div class="col-12" style="text-align: left;">
                                <a href="스터디 게시판으로가기">스터디 종류</a>
                            </div>
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-3 d-none d-sm-block order-sm-first">
                                        <div class="row">
                                            <div class="col-12 cir">
                                                <a href="기술사 관련">
                                                    <div class="circlesub">
                                                        <div class="circle"></div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="기술사 관련"> 기술사 </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 d-none d-sm-block order-sm-1">
                                        <div class="row">
                                            <div class="col-12 cir">
                                                <a href="기능장 관련">
                                                    <div class="circlesub">
                                                        <div class="circle"></div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="기능장 관련"> 기능장 </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 order-sm-2 order-2">
                                        <div class="row">
                                            <div class="col-12 cir">
                                                <a href="기사 관련">
                                                    <div class="circlesub">
                                                        <div class="circle"></div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="기사 관련"> 기사 </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 d-none d-sm-block order-sm-3">
                                        <div class="row">
                                            <div class="col-12 cir">
                                                <a href="산업기사 관련">
                                                    <div class="circlesub">
                                                        <div class="circle"></div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="산업기사 관련"> 산업기사 </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 order-sm-4 order-1">
                                        <div class="row">
                                            <div class="col-12 cir">
                                                <a href="기능사 관련">
                                                    <div class="circlesub">
                                                        <div class="circle"></div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="기능사 관련"> 기능사 </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 order-sm-5 order-first">
                                        <div class="row">
                                            <div class="col-12 cir">
                                                <a href="서비스 관련">
                                                    <div class="circlesub">
                                                        <div class="circle"></div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="서비스 관련"> 서비스 </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 d-none d-sm-block order-sm-last">
                                        <div class="row">
                                            <div class="col-12 cir">
                                                <a href="국가기술자격 관련">
                                                    <div class="circlesub">
                                                        <div class="circle"></div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="국가기술자격 관련"> 국가기술자격 </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 d-none d-sm-block order-sm-last">
                                        <div class="row">
                                            <div class="col-12 cir">
                                                <a href="국가전문자격 관련">
                                                    <div class="circlesub">
                                                        <div class="circle"></div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="국가전문자격 관련">국가전문자격</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 d-sm-none d-block order-last">
                                        <div class="row">
                                            <div class="col-12 cir">
                                                <a href="더보기 관련">
                                                    <div class="circlesub">
                                                        <div class="circle"></div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="더보기 관련"> 더보기 </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-12">공백</div>
                        </div>
                        <div class="row">
                            <div class="col-12 joongo">
                                <div class="row 중고책1">
                                    <div class="col-1 col-sm-2">공백</div>
                                    <div class="col-10 col-sm-8">
                                        <div class="row 중고책2">
                                            <div class="col-12">공백</div>
                                            <div class="col-12">
                                                <a href="/selectBound.secondHand">중고책</a>
                                            </div>
                                            <div class="col-12">
                                                <div class="row">
                                                    <div class="col-1 col-lg-2">공백</div>
                                                    <div class="col-10 col-lg-8">
                                                        <div class="row" id="joong">

                                                        </div>
                                                    </div>
                                                    <div class="col-1 col-lg-2">공백</div>
                                                </div>
                                            </div>

                                            <div class="col-12">공백</div>
                                        </div>
                                    </div>
                                    <div class="col-1 col-sm-2">공백</div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="row 중고책">
                                    <div class="col-1 col-sm-2">공백</div>
                                    <div class="col-10 col-sm-8">
                                        <div class="row 사진">
                                            <div class="col-12">공백</div>
                                            <div class="col-12 col-sm-6">
                                                <div class="col">
                                                    <div class="card">
                                                        <img src="..." class="card-img-top" alt="..." height="200px">
                                                        <div class="card-body">
                                                            <h5 class="card-title">LET'STUDY란?</h5>
                                                            <p class="card-text">LET'STUDY가 무슨 의미를 할까요?</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <div class="col">
                                                    <div class="card">
                                                        <img src="..." class="card-img-top" alt="..." height="200px">
                                                        <div class="card-body">
                                                            <h5 class="card-title">LET'STUDY가 만들어진 이유</h5>
                                                            <p class="card-text">이유</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12">공백</div>
                                        </div>
                                    </div>
                                    <div class="col-1 col-sm-2">공백</div>
                                </div>
                            </div>
                        </div>

                        <!-- 풋터 -->
                        <div class="row">
                            <div class="col-12 footer">풋터</div>
                        </div>
                    </div>
        </body>
        <script>
            var slide = $('.slide').width();
            $('.slide').height(slide * 0.5)
            var banner = $('.banner').width();
            $('.navi').width(banner);
            var cirsWidth = $('.circlesub').width();
            var cirWidth = $('.circle').width();
            var cir = $('.cir').width();
            $('.cir').height(cir * 1);
            $('.circlesub').height(cirsWidth * 1);
            $('.circle').height(cirWidth * 1);

            $(window).resize(function () {
                var cirsWidth = $($('.circlesub')[2]).width();
                var cirWidth = $($('.circle')[2]).width();
                var cir = $($('.cir')[2]).width();//none된거에 사이즈 잡아서 변하지 않음
                $('.cir').height(cir * 1);
                $('.circlesub').height(cirsWidth * 1);
                $('.circle').height(cirWidth * 1);

                var slide = $('.slide').width();
                $('.slide').height(slide * 0.5)
                var banner = $('.banner').width();
                $('.navi').width(banner);
            });

            var hamberger = document.querySelector("#hamberger");
            var navisub = document.querySelector(".navisub");
            navisub.style.display = "none";

            hamberger.addEventListener("click", function () {
                if (navisub.style.display === "block") {
                    navisub.style.display = "none";
                } else {
                    navisub.style.display = "block";
                }
            });

            var searsub = document.querySelector(".subsearchbox");
            var searsubswitch = document.querySelector("#subsearchclick")
            var searsubback = document.querySelector("#searsubback");
            searsub.style.display = "none";
            searsubswitch.addEventListener("click", function () {
                if (searsub.style.display === "none") {
                    searsub.style.display = "block";
                }
            });
            searsubback.addEventListener("click", function () {
                if (searsub.style.display === "block") {
                    searsub.style.display = "none";
                }
            });


            $("#study").on("cilck", function () {
                location.href = "/select.studyboard"
            })

            $(window).on("load", function () {
                $.ajax({
                    url: "/mainjoongolist.maincontroller",
                    dataType: "json"
                }).done(function (resp) {
                	for (var a = 0; a < 4; a++) {
                    var textfront1 = $('<div class="col-6"></div>');
                    var textfront2 = $('<a href="최신 올라온 중고책 게시글"></a>')
                    var textfront3 = $('<div class="card mb-3" style = "max-width: 540px;"> </div>')
                    var textfront4 = $('<div class="row g-0"></div>')
                    var textfront5 = $('<div class="col-md-4"></div>')
                    var textfront6 = $('<img src="..." class="img-fluid rounded-start" alt="...">')
                    var textfront7 = $('<div class="col-md-8"></div>')
                    var textfront8 = $('<div class="card-body"></div>')
                    var subtitle = $('<h5 class="card-title" id="subtitle"></h5>')
                    var textmiddle1 = $('<p class="card-text"></p>')
                    var textmiddle2 = $('<p class="card-text"></p>')
                    var subwriter = $('<small class="text-body-secondary" id="subwriter"></small>')
                        var title = resp[a].title;
                        var writer = resp[a].writer;
                        $("#joong").append(textfront1);
                        textfront1.append(textfront2);
                        textfront2.append(textfront3);
                        textfront3.append(textfront4);
                        textfront4.append(textfront5);
                        textfront5.append(textfront6);
                        textfront4.append(textfront7);
                        textfront7.append(textfront8);
                        textfront8.append(subtitle);
                        textfront8.append(textmiddle1);
                        textfront8.append(textmiddle2);
                        textmiddle2.append(subwriter);
                        subtitle.append(title);
                        subwriter.append(writer);
                        
                    }
                })
            });
            
        </script>

        </html>