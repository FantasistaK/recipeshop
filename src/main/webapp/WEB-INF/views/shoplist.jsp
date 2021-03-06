<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>recipe</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    
    <style>
    	table, tr, td, th {
    		border : 1px black solid;
    		border-collapse : collapse;
    	}
    	
    	th {
    		text-align : center;
    	}
    	
    	.left {
    		float: left;
    		width: 263px;
    		margin-left: 20%;
    	}
    	
    </style>
    <script>
	function shopUpdate(snumber) {
		location.href="shopupdate?snumber="+snumber;
	}
</script>
<script src="https://kit.fontawesome.com/fb3cf1687b.js" crossorigin="anonymous"></script>
</head>

<body>
    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                            	<c:if test="${not empty sessionScope.loginMember}">
                                	<li><i class="fa fa-envelope"></i>${sessionScope.loginMember}님 반갑습니다!</li>
                                </c:if>
                            </ul>
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6">
                     	<div class="header__top__right">
                     		<div class="header__top__right__menu">
                        		<div>menu</div>
                                	<span class="arrow_carrot-down"></span>
                                	<ul>
                                    	<li><a href="recipewritepage">레시피등록</a></li>
                    					<li><a href="#">찜한레시피</a></li>
                                	</ul>
                          	</div>
                          		<div class="header__top__right__join">
                          			<c:choose>
                            		<c:when test="${empty sessionScope.loginMember}">
               							<a href="memberjoinform">Join</a>
            						</c:when>
            						<c:when test="${sessionScope.loginMember eq ('admin')}">
               							<a href="adminpage">관리자페이지</a>
               						</c:when>
               						<c:otherwise>
               							<a href="mypage">마이페이지</a>
               						</c:otherwise>
            						</c:choose>
            					</div>
                            	<div class="header__top__right__auth">
                         			<c:if test="${empty sessionScope.loginMember}">
               							<a href="memberloginform">Login</a>
            						</c:if>
            						<c:if test="${not empty sessionScope.loginMember}">
            						<a href="memberlogout">로그아웃</a>
                                	</c:if>
                            	</div>
                            </div>
                        </div> 
					</div> 
				</div>	 
           	</div>
       
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./"><img src="resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="./">Home</a></li>
                            <li><a href="recipelist">Recipe</a>
                            	<ul class="header__menu__dropdown">
                            		<li><a href="recipewritepage">레시피 등록</a></li>
									<li><a>랭킹</a></li>                            	
                            	</ul>
                            </li>
                           	<li class="active"><a href="shoplist">Shop</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                	<c:if test="${sessionScope.loginMember ne ('admin')}">				
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="basklist?loginMember=${sessionScope.loginMember}"><i class="fa fa-shopping-bag"></i> <span>장바구니</span></a></li>
                        </ul>
                    </div>
                    </c:if>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    
	<!-- <div class="left">
		<div class="hero__categories">
			<div class="hero__categories__all">
				<i class="fa fa-bars"></i>
				<span>종류</span>
			</div>
			<ul>
				<li><a href="categorysearch?keyword=한식">한식</a></li>
				<li><a href="categorysearch?keyword=중식">중식</a></li>
				<li><a href="categorysearch?keyword=디저트">디저트</a></li>
				<li><a href="#">Fresh Berries</a></li>
				<li><a href="#">Ocean Foods</a></li>
				<li><a href="#">Butter & Eggs</a></li>
				<li><a href="#">Fastfood</a></li>
				<li><a href="#">Fresh Onion</a></li>
				<li><a href="#">Papayaya & Crisps</a></li>
				<li><a href="#">Oatmeal</a></li>
				<li><a href="#">Fresh Bananas</a></li>
			</ul>
		</div>
	</div> -->
    <div class="hero__search__form" style="margin-left : 675px;">
    <!-- <div class="hero__search__form__shoplist" style="margin-left : 675px;"> -->
    	<form action="shopsearch" method="get">
			<input type="text" name="keyword" placeholder="검색하세요">
            <button type="submit" class="site-btn">SEARCH</button>
		</form>
	</div>
    <br><br>
    <!-- 상품목록 -->
    <c:if test="${empty sessionScope.loginMember}">
    로그인해주세요</c:if>
    <div>
    
    <c:if test="${not empty sessionScope.loginMember}"> 
    
	
    <table style="margin-left : 674px; margin-top : 30px;">
		<tr style="height : 50px;">
			<th style="width : 50px;">번호</th>
			<th style="width : 100px;">상품이름</th>
			<th style="width : 200px;">상품사진</th>
			<th style="width : 100px;">가격</th>
			<c:if test="${sessionScope.loginMember eq 'admin'}">
     			<th>수정</th>
			</c:if>
		</tr>
	<c:forEach var="shoplist" items="${ShopList}">
		<tr style="height : 200px;">
			<td style="text-align : center;">${shoplist.snumber}</td>
			<td style="text-align : center;">${shoplist.sname}</td>
			<td><a href="shopview?snumber=${shoplist.snumber}"><img src="resources/upload/shop_a/${shoplist.sfilename}" height="200" width="200"></a></td>
			<td style="text-align : center;">${shoplist.sprice}</td>
			<c:if test="${sessionScope.loginMember eq 'admin'}">
     			<td><button onclick="shopUpdate('${shoplist.snumber}')">수정</button></td>
			</c:if>
		</tr>
		</c:forEach>
	</table>
	
	</c:if>
	</div>

	
	
	

    <!-- Js Plugins -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.nice-select.min.js"></script>
    <script src="resources/js/jquery-ui.min.js"></script>
    <script src="resources/js/jquery.slicknav.js"></script>
    <script src="resources/js/mixitup.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/main.js"></script>



</body>

</html>