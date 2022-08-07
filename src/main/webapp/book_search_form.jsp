<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교보문고</title>
<script type="text/javascript">
	function keywordCheck() {
		var str_keyword = window.searchform.keyword.value;
		if (!str_keyword || str_keyword === "") {
			window.alert("검색어를 입력하세요.");
			window.searchform.keyword.focus();
			return false;
		}
		window.searchform.submit();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/menu.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">

<style type="text/css" media="screen">
</style>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
         <!-- include_common_left.jsp start-->
         <jsp:include page="include_common_left.jsp"/>
         <!-- include_common_left.jsp end-->
      </div>
		<!-- navigation end-->
		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->
			<!-- include_content.jsp start-->
			<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>도서 검색</b></td>
								</tr>
							</table>
							</table>

				<form action="book_search_result.jsp" method="get">

						<div class="row">
							<select data-trigger="" name="searchType" style="width:60px;height:30px">
										<option value="all">통합</option>
										<option value="name">제목</option>
										<option value="class">분야</option>
										<option value="author">저자</option>
										<option value="publisher">출판사</option>
							</select>
			<input id="search" type="text" name="keyword" placeholder="검색어를 입력하세요" style="width:130px;height:25px"> 
				<input type="submit" value="검색" action="book_search_result.jsp" style="width:40px;height:30px">
			</div>
		</form>
	</div>
	<!-- include_content.jsp end-->
	<!-- content end -->
	</div>
	<!--wrapper end-->
	<div id="footer">
		<!-- include_common_bottom.jsp start-->
		<jsp:include page="include_common_bottom.jsp" />
		<!-- include_common_bottom.jsp end-->
	</div>
	</div>
	<!--container end-->


</body>
</html>