<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
    
    <script>
		function updatefn() {
			recipeupdate.submit();
		}
		function canclefn() {
			location.href="recipelist";
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
                                	<li><i class="fa fa-envelope"></i>${sessionScope.loginMember}??? ???????????????!</li>
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
                                    	<li><a href="#">???????????????</a></li>
                    					<li><a href="#">???????????????</a></li>
                                	</ul>
                          	</div>
                          		<div class="header__top__right__join">
                          			<c:choose>
                            		<c:when test="${empty sessionScope.loginMember}">
               							<a href="memberjoinform">Join</a>
            						</c:when>
            						<c:when test="${sessionScope.loginMember eq ('admin')}">
               							<a href="adminpage">??????????????????</a>
               						</c:when>
               						<c:otherwise>
               							<a href="mypage">???????????????</a>
               						</c:otherwise>
            						</c:choose>
            					</div>
                            	<div class="header__top__right__auth">
                         			<c:if test="${empty sessionScope.loginMember}">
               							<a href="memberloginform">Login</a>
            						</c:if>
            						<c:if test="${not empty sessionScope.loginMember}">
            						<a href="memberlogout">????????????</a>
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
                        <a href="./index.html"><img src="resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="./">Home</a></li>
                            <li class="active"><a href="recipelist">Recipe</a>
                            	<ul class="header__menu__dropdown">
                            		<li><a>????????? ??????</a></li>
									<li><a>??????</a></li>                            	
                            	</ul>
                            </li>
                           	<li><a href="shoplist">Shop</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                	<c:if test="${sessionScope.loginMember ne ('admin')}">				
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="basklist?loginMember=${sessionScope.loginMember}"><i class="fa fa-shopping-bag"></i> <span>????????????</span></a></li>
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
    <!-- Header Section End -->
    <div style="width: 1400px; left: 50%; margin-left: 700px;">
	<h2 style="color: #7fad39"><b>???????????????</b></h2><br>
	
	<form action="recipeupdateprocess" method="post" name="recipeupdate" enctype="multipart/form-data">
		<input type="text" name="rnumber" value=${recipeUpdate.rnumber} hidden>
		<input type="text" name="mtnumber" value=${materialUpdate.mtnumber} hidden>
		<input type="text" name="mtrnumber" value=${materialUpdate.mtrnumber} hidden>
		<input type="text" name="onumber" value=${orderUpdate.onumber} hidden>
		<input type="text" name="ornumber" value=${orderUpdate.ornumber} hidden>
		?????????:<br>
		<input type="text" name="rname" value="${sessionScope.loginMember}" readonly><br>
		??????:<br>
		<input type="text" name="rtitle" value="${recipeUpdate.rtitle}"><br>
		??????:<br>
		<input type="text" name="rcontents" value="${recipeUpdate.rcontents}"><br>
		????????????:<br>
		<select name="rcategory">
			<option value="${recipeUpdate.rcategory}" selected>${recipeUpdate.rcategory}</option>
			<option value="??????">??????</option>
			<option value="??????">??????</option>
			<option value="??????">??????</option>
			<option value="??????">??????</option>
			<option value="??????">??????</option>
		</select><br><br>
		?????????:<br>
		<select name="rperson">
			<option value="${recipeUpdate.rperson}" selected>${recipeUpdate.rperson}</option>
			<option value="1??????">1??????</option>
			<option value="2??????">2??????</option>
			<option value="3??????">3??????</option>
			<option value="4??????">4??????</option>
			<option value="5??????">5??????</option>
			<option value="6????????????">6????????????</option>
		</select><br><br>
		?????????:<br>
		<select name="rlevel">
			<option value="${recipeUpdate.rlevel}" selected>${recipeUpdate.rlevel}</option>
			<option value="?????????">?????????</option>
			<option value="??????">??????</option>
			<option value="??????">??????</option>
			<option value="??????">??????</option>
			<option value="????????????">????????????</option>
		</select><br><br>
		??????:<br>
		<input type="text" name="rtag" value="${recipeUpdate.rtag}"><br>
		??????:<br>
		<input type="text" name="rprice" value="${recipeUpdate.rprice}"><br>
		????????????:<br>
		<img src="resources/upload/recipe_a/${recipeUpdate.rfilename}" height="150" width="150">
		<input type="text" name="rfilename" value="${recipeUpdate.rfilename}" hidden>
		<input type="file" name="rfile"><br>
		<br>
		??????<br>
		<input type="text" name="mtname1" value="${materialUpdate.mtname1}">
		<input type="text" name="mtvolume1" value="${materialUpdate.mtvolume1}"><br><br>
		<input type="text" name="mtname2" placeholder="????????????" value="${materialUpdate.mtname2}">
		<input type="text" name="mtvolume2" placeholder="????????????" value="${materialUpdate.mtvolume2}"><br><br>
		<input type="text" name="mtname3" placeholder="????????????" value="${materialUpdate.mtname3}">
		<input type="text" name="mtvolume3" placeholder="????????????" value="${materialUpdate.mtvolume3}"><br><br>
		<input type="text" name="mtname4" placeholder="????????????" value="${materialUpdate.mtname4}">
		<input type="text" name="mtvolume4" placeholder="????????????" value="${materialUpdate.mtvolume4}"><br><br>
		<input type="text" name="mtname5" placeholder="????????????" value="${materialUpdate.mtname5}">
		<input type="text" name="mtvolume5" placeholder="????????????" value="${materialUpdate.mtvolume5}"><br><br>
		<br>
		
		1. ??????????????????:<br>
		<img src="resources/upload/recipe_a/${orderUpdate.ofilename1}" height="150" width="150">
		<input type="text" name="ofilename1" value="${orderUpdate.ofilename1}" hidden>
		<input type="file" name="ofile1"><br><br>
		<textarea cols="50" rows="3" name="ocontents1" placeholder="????????? ???????????????">${orderUpdate.ocontents1}</textarea>
		<br><br>
		2. ??????????????????:<br>
		<c:if test="${not empty orderUpdate.ocontents2}">
		<img src="resources/upload/recipe_a/${orderUpdate.ofilename2}" height="150" width="150">
		</c:if>
		<input type="text" name="ofilename2" value="${orderUpdate.ofilename2}" hidden>
		<input type="file" name="ofile2"><br><br>
		<textarea cols="50" rows="3" name="ocontents2" placeholder="????????? ???????????????">${orderUpdate.ocontents2}</textarea>
		<br><br>
		3. ??????????????????:<br>
		<c:if test="${not empty orderUpdate.ocontents3}">
		<img src="resources/upload/recipe_a/${orderUpdate.ofilename3}" height="150" width="150">
		</c:if>
		<input type="text" name="ofilename3" value="${orderUpdate.ofilename3}" hidden>
		<input type="file" name="ofile3"><br><br>
		<textarea cols="50" rows="3" name="ocontents3" placeholder="????????? ???????????????">${orderUpdate.ocontents3}</textarea>
		<br><br>
		4. ??????????????????:<br>
		<c:if test="${not empty orderUpdate.ocontents4}">
		<img src="resources/upload/recipe_a/${orderUpdate.ofilename4}" height="150" width="150">
		</c:if>
		<input type="file" name="ofile4"><br>
		<input type="text" name="ofilename4" value="${orderUpdate.ofilename4}" hidden>
		<textarea cols="50" rows="3" name="ocontents4" placeholder="????????? ???????????????">${orderUpdate.ocontents4}</textarea>
		<br><br>
		5. ??????????????????:<br>
		<c:if test="${not empty orderUpdate.ocontents5}">
		<img src="resources/upload/recipe_a/${orderUpdate.ofilename5}" height="150" width="150">
		</c:if>
		<input type="text" name="ofilename5" value="${orderUpdate.ofilename5}" hidden>
		<input type="file" name="ofile5"><br>
		<textarea cols="50" rows="3" name="ocontents5" placeholder="????????? ???????????????">${orderUpdate.ocontents5}</textarea>
		<br><br>
		
	</form>
	
	<br>
	<input type="button" value="??????" onclick="updatefn()">
	<input type="button" value="????????????" onclick="canclefn()">
	</div>
	
</body>
</html>