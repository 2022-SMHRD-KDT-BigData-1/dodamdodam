<%@page import="kr.smhrd.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% MemberVO member = (MemberVO)session.getAttribute("member"); %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>2021 MINI HOMEPAGE</title>
    <link rel="stylesheet" href="./static/font.css" />
    <link rel="stylesheet" href="./static/layout.css" />
    <link rel="stylesheet" href="./static/home.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link
      href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com"  />
    <link
      href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&family=Poor+Story&family=Single+Day&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com"  />
    <link
      href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&family=Single+Day&display=swap"
      rel="stylesheet"
    />
    <style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    outline: none;
}

ul,
li {
    list-style: none;
}

a {
    color: #000;
    text-decoration: none;
}

input,
textarea {
    outline: none;
}

.clearfix {
    clear: both;
}

.container {
    width: 1130px;
    margin: 0 auto;
}

button {
    border: none;
}


/*main_blog*/
#blog_wrap {
    padding-top: 35px;
}

.blog_header {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: center;
    padding-bottom: 17px;
}

.left_header {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
}

.left_header h3 {
    font-size: 14px;
    margin-right: 8px;
}

.left_header span {
    font-size: 12px;
    color: gray;
}

.right_header {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-end;
    align-items: center;
}

.right_header span {
    font-size: 12px;
    color: gray;
}

.right_header span strong {
    color: #000;
}

/*main_blog_nav*/
.blog_nav ul {
    overflow: hidden;
    border: solid 1px #eae1e6;
}

.blog_nav ul li {
    float: left;
    width: 12.5%;
    height: 49px;
    border-right: solid 1px #eae1e6;
}

.blog_nav ul li:last-child {
    border-right: none;
}

.blog_nav ul li a {
    display: block;
    width: 100%;
    height: 100%;
    line-height: 49px;
    text-align: center;
}

/*main_blog_list*/
.blog_list_wrap {
    padding-top: 18px;
    border-bottom: solid 1px #dae1e6;
    width: max-content;
    display: flex;
    flex-direction: row;
    float: left;
    margin-left: 50px;

}

.blog_list_wrap li {
    margin-bottom: 18px;
}

.blog_list_wrap li a {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    align-items: center;
}

.blog_list_wrap li a img {
    width: 170px;
    height: 114px;
    margin-right: 21px;
}

.blog_list_info {
    width: 559px;
    padding-right: 47px;
}

.blog_list_info span {
    font-size: 12px;
    color: #35ae5e;
}

.blog_list_info h4 {
    font-size: 13px;
}

.blog_list_info p {
    font-size: 13px;
}

.date_wrap span {
    color: #505050;
}

.age_info{
    display: table;
    float: right;
    color: black;
    font-size: 20px;
    font-weight: 900;
    font-family: 'Single Day', cursive;
}
.age_info span{
    display: table;
    padding-left: 3px;
    margin-right: 150px;
    margin-top: 40px;
    text-align: left;
    vertical-align: middle;
    font-size: 30px;
}
.age_info:hover{
    cursor: pointer;
}

/*blog_media*/
.blog_media_wrap {
    clear: both;
    height: 200px;
}

.blog_media_wrap ul {
  display: flex; 
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center; 
  padding: 18px 0;
  border-bottom: solid 1px #dae1e6;
}

.blog_media_wrap ul li {}

.blog_media_wrap ul li img {}

.blog_media_info {
  padding-top: 12px;
  color: black;
}

.blog_media_info h4 {
  font-size: 13px;
}

.blog_media_info span {
  font-size: 12px;
}
</style>
  </head>
  <body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <div class="logo_main">
    <img src="static/images/도담도담 갈색버전.png" width="200px" />
   </div>
   <div class="name_main">
    <img src="static/images/도담도담 로고.png" width="250px" />
  </div>

    <div class="bookcover">
      <div class="bookdot">
        <div class="page">
          <div class="home">
            <div class="upside">
              <br /><strong
                >&emsp;&emsp;&emsp; <span style="color: coral"></span> 
              </strong>
              &emsp;&emsp;&emsp; &emsp;
              <span class="title"></span>
              &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            </div>
            <div class="home_main">
              <div class="home_contents">
                 <div class="miniroom_contents">
                    <div class="blog_list_wrap">
                        <ul>
                            <strong style="color: #000; font-family: 'Single Day', cursive; font-size: 24px;">최신 인기글</strong>
                          <li>
                            <a href="#">
                              <img src="/static/images/baby.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>1살 육아정보</span>
                                <h4>아이가 밥을 잘 먹지 않을때 어떻게 해야할까?</h4>
                                <p>
                                  아이가 밥을 잘 먹지 않을 때는 잘 먹으면 장난감을 사준다고 하면 됩니당~!
                                </p>
                                <div class="date_wrap">
                                  <span>차노뉴스</span>
                                  <span>7일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <img src="/static/images/baby.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>2살 육아정보</span>
                                <h4>아이가 새벽까지 잠이 안들고 칭얼거려요</h4>
                                <p>
                                   아이 옆에 앉아서 '파스칼 부뤼크네르'의 '아직 오지 않은 날들을 위하여'를 읽어주시면 본인도 자고 아이도 같이 잘 수 있답니다~!
                                </p>
                                <div class="date_wrap">
                                  <span>준선일보</span>
                                  <span>13일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <img src="/static/images/baby.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>2살 육아정보</span>
                                <h4>우리 아이 말하기 잘 되고 있는걸까?</h4>
                                <p>
                                  아이가 엄마를 먼저 불렀다고 서운해하면 안되여 아직 응애여서 아빠의 소중함을 잘 깨닫지 못한 나이니까요 아빠가 간식과 장난감을 계속 사다준다면 아빠 알라븅~ 이라고 할지도??
                                </p>
                                <div class="date_wrap">
                                  <span>아빠의청춘</span>
                                  <span>24일전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <img src="/static/images/baby.jpg" width="170px" height="114px">
                              <div class="blog_list_info">
                                <span>4살 육아정보</span>
                                <h4>우리 아이가 또래보다 더 작은 거 같은데 어떡하죠??</h4>
                                <p>
                                    아이가 키가 작은건 부모 키 때문이에요..! 당신의 키가 크다면 아이도 성장기에 더 쭉쭉 자랄겁니당. 주워 온 아이가 아니라면요..!
                                </p>
                                <div class="date_wrap">
                                  <span>성규's 뉴스</span>
                                  <span>2달전</span>
                                </div>
                              </div>
                            </a>
                          </li>
                        </ul>
                      </div>
                      
                      <div class="age_info">
                          <span style="background-color: rgb(255, 232, 197);">1살 육아정보</span>
                        </br>
                          <span style="background-color: rgb(255, 207, 188);">2살 육아정보</span>
                        </br>
                          <span style="background-color: rgb(255, 189, 151);">3살 육아정보</span>
                        </br>
                          <span style="background-color:#ffa977;">4살 육아정보</span>
                        </br>
                          <span style="background-color: rgb(255, 158, 94);">5살 육아정보</span>
                      </div>
                      <div class="blog_media_wrap">
                        <strong style="color: #000; font-family: 'Single Day', cursive; font-size: 24px; margin-left: 50px;">인기 블로그</strong>
                        <ul>
                            
                          <li>
                            <img src="/static/images/baby.jpg" width="140px" style="margin-left: 100px;">
                            <div class="blog_media_info">
<h4 style="margin-left: 100px;">응애 블로그</h4>
                            </div>
                          </li>
                          <li>
                            <img src="/static/images/baby.jpg" width="140px">
                            <div class="blog_media_info">
                                <h4>응애 블로그</h4>
                            </div>
                          </li>
                          <li>
                            <img src="/static/images/baby.jpg" width="140px" style="margin-right: 100px;">
                            <div class="blog_media_info">
                                <h4>응애 블로그</h4>
                            </div>
                          </li>
                        </ul>
</div>
                 </div>
            </div>
            </div>
          </div>
          <div class="menu_bar">
            <a href="./home.html" class="menu_button1">&nbsp;&nbsp;홈</a>
            <a href="./diary.html" class="menu_button2">&nbsp;&nbsp;육아일기</a>
            <a href="./photo.html" class="menu_button3">&nbsp;&nbsp;사진첩</a>
            <a href="./board.html" class="menu_button4">&nbsp;&nbsp;게시판</a>
            <a href="./diary2.html" class="menu_button4">&nbsp;&nbsp;육아수첩</a>
            <a href="./info.html" class="menu_button4"
              >&nbsp;&nbsp;육아 정보</a
            >
            <a href="./video.html" class="menu_button4"
              >&nbsp;&nbsp;교육용 컨텐츠</a
            >
          </div>
        </div>
      </div>
    </div>
    <div class="sideform_main" style="background-color: #faf3dd; border: 3px solid rgb(165, 165, 165); border-radius: 5%;" >
      <img src="static/images/baby.jpg" width="225px" />
      <a
        style="
          font-style: inherit;
          font-size: 15px;
          color: black;
          font-weight: bold;
          margin: auto;
          text-align: center;
        "
        >오늘은 사랑스러운 aaa와의</a
      >
      <a
        style="
          font-style: inherit;
          font-size: 15px;
          color: black;
          font-weight: bold;
          margin: auto;
          text-align: center;
        "
        >--------nnnn일 째입니다--------</a
      >
      <button type="button" class="btn_main1" style="background-color: rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">로그인</button
        ><button type="button" class="btn_main2" style="background-color:  rgb(209, 191, 224); color: rgb(15, 15, 13); margin-left: 30px; margin-top: 10px;">회원가입</button>
      <div class="lb-audio">
        <audio controls>
          <source src="static/audios/order-99518.mp3" type="audio/mp3">  
        </audio>
    </div>
  </body>
</html>