


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="icon" href="foto/logoDef.png" sizes="9x9">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>WhereDoIEat</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="STILI/login.css">
      <link rel="stylesheet" href="STILI/header.css">
  <link rel="stylesheet" href="STILI/footer.css">
</head>
<body>
<nav id="navbar1" class="navbar navbar-expand-lg"> 
  <div class="d-flex flex-grow-1">
      <span class="w-100 d-lg-none d-block"><!-- hidden spacer to center brand on mobile --></span>
      <a class="navbar-brand" href="index.jsp">
         <img src="foto/final.PNG" alt="WhereDoIEat" id="logo">
      </a>
  </div>
              <a id="collegamento2" href="faq.html" class="nav-link">Domande Frequenti</a>
              <a id="collegamento" href="login.jsp" class="nav-link">Accedi</a>
     
          
              <a id="collegamento" href="registrazione.jsp" class="nav-link">Registrati ora</a>
                
          
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



    <!--<div id="MIODIV">-->
    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6 mx-auto">
    
                        <!-- form card login -->
                        <div class="card rounded-0 CDtot">
                            <div class="card-header carta1">
                                <h3 class="mb-0">Login</h3>
                            </div>
                            <div class="card-body">
                                <form class="form" action="ServletLogin" method="POST">
                                    <div class="form-group">
                                        <label for="uname1" class="grassetto"><img src="foto/ominoLogin.png" alt="">&nbspUsername</label>
                                        <input type="text" class="form-control form-control-lg rounded-0 BORDONERO" name="username" id="username" required="">
                                    </div> 
                                    <div class="form-group">
                                        <label class="grassetto"><img src="foto/chiave.png" alt="">&nbspPassword</label>
                                        <input type="password" class="form-control form-control-lg rounded-0 BORDONERO" name="password" id="password" required="" autocomplete="new-password">
                                    </div>
                                    <button type="submit" class="btn btn-danger btn-lg float-right btn-mio" id="btnLogin">Accedi</button>
                                    <div>
                                     <p>Non hai un Account? <a id="linkReg" href="registrazione.jsp">Registrati</a> </p> 
                                    </div>
                                </form>
                            </div>
                            <!--/card-block-->
                        </div>
                        <!-- /form card login -->
    
                    </div>
    
    
                </div>
                <!--/row-->
    
            </div>
            <!--/col-->
        </div>
        <!--/row-->
    </div>
    <!--/container-->
  <!--</div>-->


     
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
</body>

