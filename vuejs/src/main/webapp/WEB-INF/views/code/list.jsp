<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<head>
	<title>코드 관리</title>
</head>
<body>
	<div class="card shadow mb-4" id="app">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">코드 관리</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<colgroup>
						<col width="70px"/>
						<col width="100px"/>
						<col width="100px"/>
						<col width="20px"/>
						<col width="*"/>
						<col width="*"/>
					</colgroup>
	                <thead>
						<tr>
							<th>번호</th>
							<th>코드그룹</th>
							<th>코드</th>
							<th>코드명</th>
							<th>비고1</th>
							<th>비고2</th>
						</tr>
					</thead>
					<tbody>
						<tr v-if="list.length == 0">
							<td class="tc" colspan="6">등록된 데이터가 없습니다.</td>
						</tr>
						<tr v-for="(data, index) in list">
							<td>{{index }}</td>
							<td>{{data.codeGrp }}</td>
							<td>{{data.code }}</td>
							<td>{{data.codeNm }}</td>
							<td>{{data.rmk1}}</td>
							<td>{{data.rmk2}}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script>
		new Vue({
			el: "#app",
			data: {
				name:"가자",
				list: [
					{codeGrp:"1", code:"2", codeNm:"3", rmk1:"", rmk2:""},
					{codeGrp:"1", code:"3", codeNm:"4", rmk1:"", rmk2:""},
					{codeGrp:"1", code:"4", codeNm:"5", rmk1:"", rmk2:""},
					{codeGrp:"1", code:"5", codeNm:"6", rmk1:"", rmk2:""},
				]
			}
		});
	</script>
</body>