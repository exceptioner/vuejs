<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>


<div id="app">
	<h1>
		This is {{ person.name }}'s Home.
	</h1>
	<P>  The time on the server is ${serverTime}. </P>
</div>

<script>
	new Vue({
		el:'#app',
		data:{
			person:{
				name:'홍길동'
			}
		}
	});
</script>