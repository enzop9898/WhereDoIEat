<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="bean.*" import="dao.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>wheredoieat</title>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>WhereDoIEat</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="STILI/header.css">
  <link rel="stylesheet" href="STILI/footer.css">
  
  <script src="footer.js"></script> 
</head>
<body>

    <!-- example 7 - center on mobile 2-->
<nav id="navbar1" class="navbar navbar-expand-lg">
  <div class="d-flex flex-grow-1">
      <span class="w-100 d-lg-none d-block"><!-- hidden spacer to center brand on mobile --></span>
      <a class="navbar-brand" href="Home.jsp">
         <img src="foto/final.PNG" alt="WhereDoIEat" id="logo">
      </a>
  </div>
              
              <%
                 PersonaBean p= new PersonaBean();
                 p=(PersonaBean) request.getSession().getAttribute("cliente");
                 if (p!=null) {
              %>
              <a id="collegamento2" href="suggerimenti.jsp" class="nav-link">Suggerimenti</a>
              <a id="collegamento" href="ServletLogout" class="nav-link">Logout</a>
              <a id="collegamento" href="areaPersonale.jsp" class="nav-link">Area Personale</a>
              <% } else { %>
              <a id="collegamento" href="login.jsp" class="nav-link">Accedi</a>
     
              <a id="collegamento" href="registrazione.jsp" class="nav-link">Registrati ora</a>  
          <%} %>    
          
</nav>

     

<!-- example 8 - center logo on mobile, search right -->
<nav id="navbar2" class="navbar navbar-expand-lg">
  <div class="collapse navbar-collapse flex-grow-1 text-right" id="myNavbar8">

  <div class="input-group-append">
      <button class="btn btn-outline-secondary dropdown-toggle" id="locali" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Cosa vuoi mangiare?</button>
      <div class="dropdown-menu">
        <a class="dropdown-item tipi" href="#">Ristorante</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item tipi" href="#">Pizzeria</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item tipi" href="#">Rosticceria</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item tipi" href="#">Pub</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item tipi" href="#">FastFood</a>
      </div>
      </ul>
  </div>

  <div class="input-group-append">
    <button class="btn btn-outline-secondary dropdown-toggle" id="comuni" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Dove vuoi mangiare?</button>
    <div class="dropdown-menu">
      <a class="dropdown-item tipi" href="#">Baronissi</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item tipi" href="#">Salerno</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item tipi" href="#">Agropoli</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item tipi" href="#">San Cipriano Picentino</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item tipi" href="#">Roccadaspide</a>
    </div>
    
</div>
 
      <div class="d-flex w-100 justify-content-end order-3">
          <form class="d-flex flex-nowrap align-items-center" method="post" action="AltreRicerche">
              <input type="hidden" name="action" value="SearchNome">
              <input class="form-control border-right-0 mr-n1" name="daCercare" type="search" size="50" placeholder="Cerca" aria-label="Search">
              <button id="cerca" class="btn btn-outline-secondary" type="submit"><i class="fa fa-search">Search</i></button>
            </form>
      </div>
  </div>
</nav>



</body>
</html>