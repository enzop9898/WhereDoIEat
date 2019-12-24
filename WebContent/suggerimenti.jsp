<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="bean.*" import="dao.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>WhereDoIEat</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">

  <link rel="stylesheet" href="STILI/suggerimenti.css">

</head>
<body>
<%@ include file="header.jsp"%>

<div id="suggerimenti">
<%
   Boolean done=(Boolean) request.getAttribute("done");
   if(done!=null) {
%>
   <h5>Suggerimento effettuato con successo</h5>	   
<%
   }
%>
<div id="effettuaSug" >
   <form action="ServletSuggerimenti" method="post" name="suggerimenti">
       <input type="text" placeholder="Titolo" name="titolo" size="50">
       <input type="text" placeholder="Descrizione del problema"  size="100" name="descrizione">
       <button type="submit">Invia</button>
   </form>
   


</div>

<div id="visualizzaSug">

   <% 
      ArrayList<SuggerimentiBean> sList=new ArrayList<SuggerimentiBean> ();
      SuggerimentiDAO sdao=new SuggerimentiDAO();
      sList=sdao.doRetrieveAll();
      if(sList.size()>0) {
    	  for(int i=0; i<sList.size();i++) {
    		  SuggerimentiBean s=new SuggerimentiBean();
        	  s=sList.get(i);
    	  %>
    	    <h6><%=s.getTitolo() %></h6>
    	    <p><%=s.getTesto() %></p>
    	  <%
    	  }
      } else {
    	  %>
    	  <h4>Non hai effettuato ancora nessun suggerimento</h4>
    	  
    	  <%
      }
    	  
   %>

</div>


</div>



 <div id="spaziohome"> <br><br><br> <br><br> </div>
         

<%@ include file="footer.jsp"%>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>