<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header role="banner">
        <div class="top-bar">
          <div class="container">
            <div class="row">
              <div class="col-8 social">
                <a href="#"><span class="fa fa-twitter"></span></a>
                <a href="https://www.facebook.com/ttd303"><span class="fa fa-facebook"></span></a>
                <a href="#"><span class="fa fa-instagram"></span></a>
                <a href="#"><span class="fa fa-youtube-play"></span></a>
              </div>
              <div class="col-4 search-top">
                <!-- <a href="#"><span class="fa fa-search"></span></a> -->
                <form action="#" class="search-top-form">
                  <span class="icon fa fa-search"></span>
                  <input type="text" id="s" placeholder="Type keyword to search...">
                </form>
              </div>
            </div>
          </div>
        </div>

        <div class="container logo-wrap">
          <div class="row pt-5">
            <div class="col-12 text-center">
              <a class="absolute-toggle d-block d-md-none" data-toggle="collapse" href="#navbarMenu" role="button" aria-expanded="false" aria-controls="navbarMenu"><span class="burger-lines"></span></a>
              <h1 class="site-logo"><a href="web-home">JBlog</a></h1>
            </div>
          </div>
        </div>
        <nav class="navbar navbar-expand-md  navbar-light bg-light">
          <div class="container">
            
           
            <div class="collapse navbar-collapse" id="navbarMenu">
              <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                  <a class="nav-link active" href="index.html">Trang chủ </a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="category.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">JunCode </a>
                  <div class="dropdown-menu" aria-labelledby="dropdown04">
                    <a class="dropdown-item" href="category.html">C++</a>
                    <a class="dropdown-item" href="category.html">Java</a>
                    <a class="dropdown-item" href="category.html">HTML/CSS</a>
                    <a class="dropdown-item" href="category.html">Bootstrap</a>
                    <a class="dropdown-item" href="category.html">SpringMVC/SpringBoot</a>
                  </div>

                </li>

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="category.html" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Thể Loại </a>
                  <div class="dropdown-menu" aria-labelledby="dropdown05">
                    <a class="dropdown-item" href="category">Cuộc sống</a>
                    <a class="dropdown-item" href="category">Ẩm thực</a>
                    <a class="dropdown-item" href="category">Adventure</a>
                    <a class="dropdown-item" href="category">Du lịch</a>
                    <a class="dropdown-item" href="category">Business</a>
                  </div>

                </li>
                <li class="nav-item">
                  <a class="nav-link" href="web-about">Về tôi</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Liên hệ</a>
                </li>
              </ul>
              
            </div>
          </div>
        </nav>
      </header>
</body>
</html>