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
<script>	
	function canclefn() {
		location.href="recipelist";
	}
	function likefn() {
		location.href="recipelike?rnumber="+${recipeView.rnumber};
	}
	function reportfn() {
		location.href="recipereport?rnumber="+${recipeView.rnumber};
	}
	function updatefn() {
		location.href="recipeupdate?rnumber="+${recipeView.rnumber};
	}
	function deletefn() {
		location.href="recipedelete?rnumber="+${recipeView.rnumber};
	}
</script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
                            <li><a href=""><i class="fa fa-shopping-bag"></i> <span>????????????</span></a></li>
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
		<h2 style="color: #7fad39"><b>????????? ??????</b></h2><br>
	
	<table>
		<tr>
			<td colspan="3" style="width : 600px; text-align : center;"> ${recipeView.rtitle} </td>		
		</tr>
		
		<tr>
			<td colspan="3" style="width : 600px; text-align : center;">
				<img src="resources/upload/recipe_a/${recipeView.rfilename}" height="150" width="150">
			</td>
		</tr>
		
		<tr>
			<td colspan="3" style="width : 600px; text-align : center;"> ????????? ???????????? </td>
		</tr>
		
		<tr>
			<td colspan="3" style="width : 600px; text-align : center;"> ${recipeView.rcontents} </td>
		</tr>
		
		<tr>
			<td style="width : 200px; text-align : center;"> ${recipeView.rcategory} </td>
			<td style="width : 200px; text-align : center;"> ${recipeView.rperson} </td>
			<td style="width : 200px; text-align : center;"> ${recipeView.rlevel} </td>
		</tr>
		<tr>
		<td height="30px"> </td>
		</tr>
		<tr>
			<td colspan="3" style="width :600px; text-align : center;"> ?????? ?????? </td>
		</tr>
		
		<tr>
			<td style="width : 300px; text-align : center;"> ${materialView.mtname1} </td>
			<td style="width : 300px; text-align : center;"> ${materialView.mtvolume1} </td>
		</tr>
		
		<c:if test="${not empty materialView.mtname2}">
		<tr>
			<td style="width : 300px; text-align : center;"> ${materialView.mtname2} </td>
			<td style="width : 300px; text-align : center;"> ${materialView.mtvolume2} </td>
		</tr>
		</c:if>
		
		<c:if test="${not empty materialView.mtname3}">
		<tr>
			<td style="width : 300px; text-align : center;"> ${materialView.mtname3} </td>
			<td style="width : 300px; text-align : center;"> ${materialView.mtvolume3} </td>
		</tr>
		</c:if>
		
		<c:if test="${not empty materialView.mtname4}">
		<tr>
			<td style="width : 300px; text-align : center;"> ${materialView.mtname4} </td>
			<td style="width : 300px; text-align : center;"> ${materialView.mtvolume4} </td>
		</tr>
		</c:if>
		
		<c:if test="${not empty materialView.mtname5}">
		<tr>
			<td style="width : 300px; text-align : center;"> ${materialView.mtname5} </td>
			<td style="width : 300px; text-align : center;"> ${materialView.mtvolume5} </td>
		</tr>
		</c:if>
		
		<tr>
		<td height="30px"> </td>
		</tr>
		
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">?????? ??????</td>
		</tr>
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				<img src="resources/upload/recipe_a/${orderView.ofilename1}" height="150" width="150">
			</td>
		</tr>
		
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				1. ${orderView.ocontents1}
			</td>
		</tr>
		
		<c:if test="${not empty orderView.ocontents2}">
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				<img src="resources/upload/recipe_a/${orderView.ofilename2}" height="150" width="150">
			</td>
		</tr>
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				2. ${orderView.ocontents2}
			</td>
		</tr>
		</c:if>
		
		<c:if test="${not empty orderView.ocontents3}">
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				<img src="resources/upload/recipe_a/${orderView.ofilename3}" height="150" width="150">
			</td>
		</tr>
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				3. ${orderView.ocontents3}
			</td>
		</tr>
		</c:if>
		
		<c:if test="${not empty orderView.ocontents4}">
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				<img src="resources/upload/recipe_a/${orderView.ofilename4}" height="150" width="150">
			</td>
		</tr>
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				4. ${orderView.ocontents4}
			</td>
		</tr>
		</c:if>
		
		<c:if test="${not empty orderView.ocontents5}">
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				<img src="resources/upload/recipe_a/${orderView.ofilename5}" height="150" width="150">
			</td>
		</tr>
		<tr>
			<td colspan="3" style="width :600px; text-align : center;">
				5. ${orderView.ocontents5}
			</td>
		</tr>
		</c:if>
		
	</table>
	
	
	<%-- ??????????????? : ${recipeView.rnumber} <br>
	?????????????????? : ${recipeView.rname} <br>
	??????????????? : ${recipeView.rtitle} <br>
	??????????????? : ${recipeView.rcontents} <br>
	????????????????????? : ${recipeView.rcategory} <br>
	?????????????????? : ${recipeView.rperson} <br>
	?????????????????? : ${recipeView.rlevel} <br>
	??????????????? : ${recipeView.rtag} <br>
	??????????????? : ${recipeView.rprice} <br>
	????????????????????? : <img src="resources/upload/${recipeView.rfilename}" height="150" width="150"> <br>
	?????????????????? : ${recipeView.rhits} <br> --%>
	
		
	<br>
	<input type="button" value="?????????" onclick="likefn()">
	<input type="button" value="????????????" onclick="reportfn()">
	<input type="button" value="????????????" onclick="canclefn()">
	<c:if test="${sessionScope.loginMember eq recipeView.rname}">
	<input type="button" value="??????" onclick="updatefn()">
	<input type="button" value="??????" onclick="deletefn()">
	</c:if>
	<c:if test="${sessionScope.loginMember eq 'admin'}">
	<input type="button" value="??????" onclick="deletefn()">
	</c:if> 
	<br><br>	
	
	<!-- ?????? ???????????? ?????? -->
	<div id="comment-list">
		<table border="1">
			<c:forEach var="comment" items="${commentList}">
				<tr>
					<td>${comment.cname}</td>
					<td>${comment.cgrade}</td>
				</tr>
				<tr>
					<td colspan="2">${comment.ccontents}</td>
				</tr>
			</c:forEach>
		</table>	
	</div>
	
	<!-- ?????? ?????? ?????? -->
		<div id="comment-write">
		<input type="text" id="ccontents" placeholder="????????? ???????????????" style="width: 500px; height:48px;">
		<select id="cgrade" style="width: 70px; height:50px;">
			<option value="" selected>??????</option>
			<option value="???">???</option>
			<option value="??????">??????</option>
			<option value="?????????">?????????</option>
			<option value="????????????">????????????</option>
			<option value="???????????????">???????????????</option>
		</select>
		<button id="cwrite-btn" style="width: 70px; height:50px;">????????????</button>
		</div>
	</div>
	
	
	<script>
		$(document).ready(function(){
			$("#cwrite-btn").click(function(){
				var cname = '${sessionScope.loginMember}';
				var cgrade = document.getElementById('cgrade').value;
				var ccontents = document.getElementById('ccontents').value;
				var crnumber = '${recipeView.rnumber}';
				console.log(cname);
				console.log(ccontents);
				console.log(crnumber);
				$.ajax({
					type: 'post',
					url: 'comment/commentwrite',
					data: {
						'cname': cname,
						'cgrade': cgrade,
						'ccontents': ccontents,
						'crnumber': crnumber},
					dataType: 'json',
					success: function(list){
						console.log(list);
						var output = "<table border='1'>";
						for(var i in list){
							output += "<tr>";
							output += "<td>"+list[i].cname+"</td>";
							output += "<td>"+list[i].cgrade+"</td>";
							output += "</tr>";
							output += "<tr colspan='2'>";
							output += "<td>"+list[i].ccontents+"</td>";
							output += "</tr>";
						}
						output += "</table>";
						document.getElementById('comment-list').innerHTML = output;
						document.getElementById('cgrade').value='';
						document.getElementById('ccontents').value='';
					},
					error: function(){
						console.log('????????????.')
					}
				});
			});
		});
	</script>

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