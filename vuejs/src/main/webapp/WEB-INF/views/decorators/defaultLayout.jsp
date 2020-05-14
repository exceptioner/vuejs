<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
	  	<title>SB Admin 2 - Dashboard</title>
		
		<jsp:include page="../includes/css.jsp"></jsp:include>  
		<jsp:include page="../includes/js.jsp"></jsp:include>
	</head>
	
	<body id="page-top">
	  	<!-- Page Wrapper -->
	  	<div id="wrapper">
	    	<jsp:include page="../includes/lnb.jsp"></jsp:include>
	
	    	<!-- Content Wrapper -->
	    	<div id="content-wrapper" class="d-flex flex-column">
				<!-- Main Content -->
				<div id="content">
					<jsp:include page="../includes/gnb.jsp"></jsp:include>
					
					<!-- Begin Page Content -->
					<div class="container-fluid">
						<!-- content -->
						<decorator:body></decorator:body>
					</div>
					<!-- End Page Content -->
				</div>
				<!-- End of Main Content -->
		
		      	<!-- Footer -->
		      	<footer class="sticky-footer bg-white">
		        	<div class="container my-auto">
		          		<div class="copyright text-center my-auto">
		            		<span>Copyright &copy; Your Website 2020</span>
		          		</div>
		        	</div>
		      	</footer>
		      	<!-- End of Footer -->
		
			</div>
			<!-- End of Content Wrapper -->
		</div>
		<!-- End of Page Wrapper -->
	
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top">
			<i class="fas fa-angle-up"></i>
		</a>
	
		<!-- Logout Modal-->
	  	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	    	<div class="modal-dialog" role="document">
	      		<div class="modal-content">
	        		<div class="modal-header">
	          			<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
	          			<button class="close" type="button" data-dismiss="modal" aria-label="Close">
	            			<span aria-hidden="true">×</span>
	          			</button>
	        		</div>
	        		<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
		        	<div class="modal-footer">
		          		<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
		          		<a class="btn btn-primary" href="login.html">Logout</a>
		        	</div>
	      		</div>
	   	 	</div>
		</div>
	</body>
</html>