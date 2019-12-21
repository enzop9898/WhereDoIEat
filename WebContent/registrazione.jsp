


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
	<link rel="icon" href="foto/logoDef.png" sizes="9x9">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>WhereDoIEat</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="STILI/registrazione.css">
      <link rel="stylesheet" href="STILI/header.css">
  <link rel="stylesheet" href="STILI/footer.css">
    <script src="controlli.js"></script>
</head>
<body>

   <nav id="navbar1" class="navbar navbar-expand-lg">
  <div class="d-flex flex-grow-1">
      <span class="w-100 d-lg-none d-block"><!-- hidden spacer to center brand on mobile --></span>
      <a class="navbar-brand" href="Home.jsp">
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
                        <div class="card rounded-0 CDtot" id="contenitoreTotale">
                            <div class="card-header carta1">
                                <h3 class="mb-0">REGISTRATI</h3>
                            </div>
                            <div class="card-body">
                         
                            <p id="error">
		                    </p> 
                                  <form action="servletRegister" method="post" onsubmit="return control(this)">                                    
                                  <div class="form-group">
                                        <label  class="grassetto">&nbspNome</label>
                                        <input type="text" class="form-control form-control-lg rounded-0 BORDONERO" name="nome" id="nome" onclick="startNome()" onkeyup="startNome()">
                                        <p id="errorNome"></p>
                                    </div>
                                    <div class="form-group">
                                        <label  class="grassetto">&nbspCognome</label>
                                        <input type="text" class="form-control form-control-lg rounded-0 BORDONERO" name="cognome" id="cognome" onclick="startCognome()" onkeyup="startCognome()">
                                        <p id="errorCognome"></p>
                                    </div>
                                    <div class="form-group">
                                        <label  class="grassetto"><img src="foto/ominoLogin.png" alt="">&nbspUsername</label>
                                        <input type="text" class="form-control form-control-lg rounded-0 BORDONERO" name="username" id="username" onclick="startUsername()" onkeyup="startUsername()">
                                        <p id="errorU" class="suggerimento">Deve contenere almeno 1 carattere e al massimo 32</p>
                                    </div>
                                    <div class="form-group">
                                        <label  class="grassetto">&nbspTelefono</label>
                                        <input type="text" class="form-control form-control-lg rounded-0 BORDONERO" name="telefono" id="telefono" onclick="startTelefono()" onkeyup="startTelefono()">
                                         <p id="errorTel" class="suggerimento">Deve contenere anche il prefisso.</p>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label  class="grassetto">&nbspCitt&agrave</label>
                                        <input type="text" class="form-control form-control-lg rounded-0 BORDONERO" name="citta" id="citta" onclick="startCitta()" onkeyup="startCitta()">
                                         <p id="errorCitta"></p>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label  class="grassetto">&nbspComune</label>
                                        <input type="text" class="form-control form-control-lg rounded-0 BORDONERO" name="comune" id="comune" onclick="startComune()" onkeyup="startComune()">
                                         <p id="errorComune"></p>
                                    </div>
                                    
                                     <div class="form-group">
                                        <label  class="grassetto">&nbspTipo</label>
                                        <select name="tipo" class="form-control form-control-lg rounded-0 BORDONERO">
                                            <option value="cliente">Cliente</option>
                                            <option value="ristoratore">Ristoratore</option>
                                        </select>  
                                    </div>
                                    
                                    
                                    
                                    
                                    <div class="form-group">
                                        <label  class="grassetto"><img src="foto/email.png" alt="">&nbspE-mail</label>
                                        <input type="text" class="form-control form-control-lg rounded-0 BORDONERO" name="email" id="email" onclick="startEmail()" onkeyup="startEmail()">
                                         <p id="errorEmail"></p>
                                    </div>
                                    
                                       <p id="errorE"></p>
                                    <div class="form-group">
                                        <label class="grassetto"><img src="foto/chiave.png" alt="">&nbspPassword</label>
                                        <input type="password" class="form-control form-control-lg rounded-0 BORDONERO" name="password" id="password" onclick="startPassword()" onkeyup="startPassword()">
                                         <p id="errorP1" class="suggerimento">La password deve avere almeno 8 caratteri, massimo 25 caratteri e deve contenere un valore numerico e una lettera maiuscola</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="grassetto"><img src="foto/chiave.png" alt="">&nbspRipeti&nbspPassword</label>
                                        <input type="password" class="form-control form-control-lg rounded-0 BORDONERO" name="password2" id="password2" onclick="startPassword2()" onkeyup="startPassword2()">
                                        <p id="errorP2" class="suggerimento"><p>
                                    </div>
                                    <button type="submit" class="btn btn-danger btn-lg float-right btn-mio" id="btnLogin">Crea il tuo Account</button>
                                    <div>
                                     <p>Hai gia un account? <a id="linkReg" href="#">Accedi</a> </p> 
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

      <!-- Footer -->
  <footer class="page-footer font-small unique-color-dark">
      <div style="background-color: #000000;">
        <div class="container">
  
          <!-- Grid row-->
          <div class="row py-4 d-flex align-items-center">
  
            <!-- Grid column -->
            <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
              <h6 id="headfoot" class="mb-0">Resta connesso con noi sui social</h6>
            </div>
            <!-- Grid column -->
  
            <!-- Grid column -->
            <div class="col-md-6 col-lg-7 text-center text-md-right">
  
              <!-- Facebook -->
                <a href="https://www.facebook.com/ElDiezShop/?ref=bookmarks" id="img" onMouseOver="cambiaFacebook()" onMouseOut="ricambiaFacebook()"><img id="facebook" src="foto/facebook2.png" class="fb-ic">
                <i class="fab fa-facebook-f white-text mr-4"> </i>
              </a>
              <!--Youtube -->
                  <a href="https://www.youtube.com/watch?v=lH1m5zOImJU" id="img" onMouseOver="cambiaYouTube()" onMouseOut="ricambiaYouTube()"><img id="youtube" src="foto/youtube2.png"  class="fb-ic">
               <i class="fab fa-linkedin-in white-text mr-4"> </i>
               </a>
              <!--Instagram-->
                  <a href="https://www.instagram.com/eldiezshop2019" id="img" onMouseOver="cambiaInstagram()" onMouseOut="ricambiaInstagram()"><img id="instagram" src="foto/Instagram2.png"  class="fb-ic" >
            <i class="fab fa-instagram white-text"> </i>
          </a>
          <!-- Grid column -->
      </div>
          </div>
  
          <!-- Grid row-->
  
        </div>
      </div>
  
      <!-- Footer Links -->
      <div class="container text-center text-md-left mt-5">
  
        <!-- Grid row -->
        <div class="row mt-3">
  
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
  
            <!-- Content -->
            <h6 class="text-uppercase font-weight-bold">CHI SIAMO</h6>
            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
            <p>Salve,siamo tre ragazzi appassionati di Informatica e studenti del Dipartimento di Informatica di UNISA (unico dipartimento in area Informatica del Sud Italia). Abbiamo sviluppo questo sito con lo scopo di fornire ai nostri clienti un modo comodo di conoscere attività e gustare i loro cibi in base ad un sistema di recensioni e valutazioni su queste ultime.</p>
  
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
  
            <!-- Links -->
            <h6 class="text-uppercase font-weight-bold">AIUTO</h6>
            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
            <p>
              <a class="linkfoot" href="terminiecondizioni.html">Termini & Condizioni</a>
            </p>
            <p>
              <a class="linkfoot" href="policy.html">Privacy Policy</a>
            </p>
            <p>
              <a class="linkfoot" href="recesso.html">Diritto di Recesso</a>
            </p>
            <p>
              <a class="linkfoot" href="faq.html">FAQ</a>
            </p>
  
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
  
            <!-- Links -->
            <h6 class="text-uppercase font-weight-bold">LINK UTILI</h6>
            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
            <p>
              <a class="linkfoot" href="#!">Area Personale</a>
            </p>
            <p>
              <a class="linkfoot" href="registrazione.jsp">Registrati</a>
            </p>
            <p>
              <a class="linkfoot" href="taglia home.html">Tabella delle Taglie</a>
              
            </p>
  
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
  
            <!-- Links -->
            <h6 class="text-uppercase font-weight-bold">Contatti</h6>
            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
            <p>
              <img src="foto/luogo.png" alt="volevi">
            <i class="fas fa-home mr-3"></i> <a class="linkfoot" href="https://www.google.it/maps/place/Via+Roma,+Salerno+SA/@40.6783183,14.756089,17z/data=!3m1!4b1!4m5!3m4!1s0x133bc22609d11f13:0x7a65ed64b91a7408!8m2!3d40.6783183!4d14.758283">Salerno,Via Roma,156</a></p>
          <p>
            <img src="foto/email.png" alt="volevi">
            <i class="fas fa-envelope mr-3"></i><a class="linkfoot" href="https://accounts.google.com/signin/v2/sl/pwd?hl=it&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin">wheredoieat_shop@gmail.com</a> </p>
          <p>
            <img src="foto/phone.png" alt="volevi">
            <i class="fas fa-phone mr-3"></i> +39 348 32 09 519 </p>
          <p>
            <img src="foto/fisso.png" alt="volevi">
            <i class="fas fa-print mr-3"></i> + 089 89 32 63</p>
  
          </div>
          <!-- Grid column -->
  
        </div>
        <!-- Grid row -->
  
      </div>
      <!-- Footer Links -->
  
      <!-- Copyright -->
      <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a class="linkfoot" href="index.jsp">WhereDoIEat </a>
      </div>
      <!-- Copyright -->
  
    </footer>
    <!-- Footer -->
     
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
</body>

