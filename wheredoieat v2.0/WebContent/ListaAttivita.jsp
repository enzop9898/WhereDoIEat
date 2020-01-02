<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="dao.*"  import="bean.*" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WhereDoIEat</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="STILI/attivita.css">
 
</head>
<body>
 
<%@ include file="header.jsp"%>

<div class="row">
<%ArrayList<AttivitaBean> l = new ArrayList<AttivitaBean>();
 l = (ArrayList<AttivitaBean>) request.getAttribute("lista");
  if(l!=null && l.size()!=0){
	  for(AttivitaBean a : l){ 
		 
  %>
       
       <div class = "col-md-4" id="cardColumn">
       	<form id="ViewForm" method="get" action="###dove voglio andare">
        	<div id="cardProdotti" class="card">
          		<a href="quaa">
          		<div id="picc">  <!-- dove voglio anda -->
          			<img id="prodottoPic" src="fotoqui" class="card-img-top img-responsive" alt="...">
          		</div>
          		</a>
			
			<div class="card-body" id="cards">
			  <h5 class="card-title"><%=a.getNome()%></h5>
			    
			  	<div class="card-bottom">
			  		<h3><%=a.getComune() %></h3>
			  	</div>
			</div>
		    </div>
		 </form>
        </div>
       
       
<%}} %>
</div>

<div id="spaziohome"><br><br><br><br><br></div>

         
    <%@ include file="footer.jsp"%>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>