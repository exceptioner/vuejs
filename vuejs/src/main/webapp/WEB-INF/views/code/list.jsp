<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page session="false" %> --%>
<html>
	<head>
		<title>코드 관리</title>
	</head>
	<body>
		<div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <colgroup>
					<col width="70px"/>
					<col width="100px"/>
					<col width="200px"/>
					<col width="60px"/>
					<col width="60px"/>
					<col width="*"/>
				</colgroup>
                  <thead>
                    <tr class="underline">
						<th class="pb10 tc">번호</th>
						<th class="pb10 tc">ID</th>
						<th class="pb10 tc">날짜</th>
						<th class="pb10 tc">조회</th>
						<th class="pb10 tc">추천</th>
						<th class="pb10 tc">제목</th>
					</tr>
                  </thead>
<!--                   <tfoot> -->
<!--                     <tr> -->
<!--                       <th>Name</th> -->
<!--                       <th>Position</th> -->
<!--                       <th>Office</th> -->
<!--                       <th>Age</th> -->
<!--                       <th>Start date</th> -->
<!--                       <th>Salary</th> -->
<!--                     </tr> -->
<!--                   </tfoot> -->
                  <tbody>
                    <c:if test="${empty list }">
						<tr>
							<td class="tc" colspan="6">등록된 게시글이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="data" items="${list }" varStatus="i">
						<tr>
							<td class="tc">${data.boardNo }</td>
							<td class="text">${data.regr }</td>
							<td class="tc">${data.regDate }</td>
							<td class="number">18</td>
							<td class="number">0</td>
							<td class="text"><a href="">${data.boardNm }</a></td>
						</tr>
					</c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

		<jsp:include page="../includes/pagination.jsp">
		    <jsp:param name="owner" value="board"/>
		</jsp:include>

		<div class="mt10 fr">
			<a href="/board/regist">[글작성]</a>
		</div>
	</body>
</html>