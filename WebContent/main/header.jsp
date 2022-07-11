
<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Starbucks Coffee JIHUN</title>

<link rel="icon" href="<%=request.getContextPath() %>/favicon.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<!-- <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/footers/"> -->

</head>
<body>
	<!-- HEADER -->
	<header>
		<main>
			<nav class="py-2 bg-light border-bottom">

				<ul class="nav">
					<div class="container d-flex flex-wrap">
						<ul class="nav me-auto">
							<li class="nav-item" style="font-size: 60px;"><a
								href="<%=request.getContextPath() %>/main/main.jsp"
								class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
									<img alt="" src="<%=request.getContextPath() %>/images/logo.png">
							</a></li>
						</ul>
						
						<li class="nav-item" style="padding-top: 50px; padding-right: 30px">
							<form action="/something">
								<label for="searchbar">검색창</label> <input type="text"
									id="searchbar" name="searchbar">
								<button type="submit" form="searchbar" onclick="movieSearch()">검색</button>
								<script type="text/javascript">
								function movieSearch(){
									let moviesr = document.getElementById("searchbar").value.trim();
									if(moviesr == null || moviesr.trim()==""){
										alert("검색어를 입력하세요.");
									}else{
										location.href = "<%=request.getContextPath() %>/Movielist?param=movieSe&movieSearch="+moviesr;	
									}
								}
								</script>
							</form>
						</li>
						<%
						if (session.getAttribute("login") == null) {
						%>

						<li class="nav-item"><a href="<%=request.getContextPath() %>/member/login.jsp"
							class="nav-link link-dark px-2"> <img alt=""
								src="<%=request.getContextPath() %>/images/loginPassword.png"
								class="bi d-block mx-auto mb-1" class="bi d-block mx-auto mb-1"
								width="48" height="48" href="<%=request.getContextPath() %>/member?param=login"> 로그인
						</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath() %>/member/regi.jsp"
							class="nav-link link-dark px-2"> <img alt=""
								src="<%=request.getContextPath() %>/images/loginJoin.png" class="bi d-block mx-auto mb-1"
								width="48" height="48" href="<%=request.getContextPath() %>/member?param=regi"> 회원가입
						</a></li>

						<%
						} else {
						MemberDto dto = (MemberDto) session.getAttribute("login");
						%>

						<li class="nav-item"><a href="<%=request.getContextPath() %>/member/mypage.jsp"
							class="nav-link link-dark px-2"> <img alt=""
								src="<%=request.getContextPath() %>/images/loginMember.png" class="bi d-block mx-auto mb-1"
								width="48" height="48" href="<%=request.getContextPath() %>/member?param=mypage">
								마이페이지
						</a></li>

						<li class="nav-item"><a href="<%=request.getContextPath() %>/member?param=logout"
							class="nav-link link-dark px-2"> <img alt=""
								src="<%=request.getContextPath() %>/images/loginMember.png" class="bi d-block mx-auto mb-1"
								width="48" height="48" href="<%=request.getContextPath() %>/member?param=logout"> 로그아웃
						</a></li>

						<li class="nav-item"><a href="<%=request.getContextPath() %>/member?param=withdraw"
							class="nav-link link-dark px-2"> <img alt=""
								src="<%=request.getContextPath() %>/images/loginMember.png" class="bi d-block mx-auto mb-1"
								width="48" height="48" href="<%=request.getContextPath() %>/member?param=withdraw">
								회원탈퇴
						</a></li>
						<%
						}
						%>
						
				</ul>
				</div>
			</nav>
		</main>
</header>
</body>
</html>
