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

<br><br>
<%Boolean successo = (Boolean) request.getAttribute("successo");
  if(successo!=null && successo==true){%>
  <p>Attivita aggiunta con successo nel sistema.</p>
  <%}else{ %>
<div class="container">
    <div class="card">
        <div class="card-header carta1">
            COMPILA I CAMPI E INSERISCI LA TUA NUOVA ATTIVITA'
        </div>
        <div class="card-body">
            <form action="AggiungiAttivitaControl" method="post">
                <br>
                <div class="form-group">
                <% Boolean err = (Boolean) request.getAttribute("errore");
                   if(err!=null && err==true){ 
                %>
                <p id="errore">L'ora di chiusura deve essere maggiore di quella di apertura</p>
                <%} %>
                    <label for="inputMessage">Nome:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                    <input type="text" name="nome" class="BORDONERO" required>
                    <br>
                    <label for="inputMessage">Indirizzo:&nbsp&nbsp&nbsp</label>
                    <input type="text" name="indirizzo" class="BORDONERO" required>
                    <br>
                    <label for="inputMessage">Comune:&nbsp&nbsp&nbsp</label>
                    <input type="text" name="comune" class="BORDONERO" required>
                    <br>
                    <label for="inputMessage">Telefono:&nbsp&nbsp&nbsp</label>
                    <input type="text" name="telefono" class="BORDONERO" required>
                    <br>
                    <label for="inputMessage">Giorno di chiusura:&nbsp</label>
                    <select name="giornoChiusura" class="BORDONERO" required>
                       <option value="nessuno">nessuno</option>
                       <option value="Lunedi">Lunedi</option>
                       <option value="Martedi">Martedi</option>
                       <option value="Mercoledi">Mercoledi</option>
                       <option value="Giovedi">Giovedi</option>
                       <option value="Venerdi">Venerdi</option>
                       <option value="Sabato">Sabato</option>
                       <option value="Domenica">Domenica</option>
                    </select>
                    <br>
                    <label for="inputMessage">Ora apertura:&nbsp</label>
                    <select name="oraApertura" class="BORDONERO" id="a">
                       <option value="12">12:00</option>
                       <option value="13">13:00</option>
                       <option value="14">14:00</option>
                       <option value="15">15:00</option>
                       <option value="16">16:00</option>
                       <option value="17">17:00</option>
                       <option value="18">18:00</option>
                       <option value="19">19:00</option>
                       <option value="20">20:00</option>
                    </select>
                    <br>
                    <label for="inputMessage">Ora chiusura:&nbsp</label>
                    <select name="oraChiusura" class="BORDONERO" id="c">
                       <option value="15">15:00</option>
                       <option value="16">16:00</option>
                       <option value="17">17:00</option>
                       <option value="18">18:00</option>
                       <option value="19">19:00</option>
                       <option value="20">20:00</option>
                       <option value="20">21:00</option>
                       <option value="20">22:00</option>
                       <option value="20">23:00</option>
                       <option value="20">24:00</option>
                    </select>
                    <br>
                    <label for="inputMessage">Numero posti:&nbsp</label>
                    <input type="number" min=1 max=200 name="posti" class="BORDONERO" required>
                    <br>
                    <label for="inputMessage">Mappa:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                    <input type="text" name="mappa" class="BORDONERO" required>
                    <br>
                    <label for="inputMessage">Foto del profilo:&nbsp&nbsp</label>
                    <input type="text" name="foto" class="BORDONERO" required>
                    <br>
                </div><br>
                    <button type="submit" class="btn btn-dark btn-lg float-left pren">Conferma</button>
                <br>
           

            </form>
        </div>
    </div>

</div>
<%} %>
<div id="spaziohome"><br><br><br><br><br></div>
</div>
         
    <%@ include file="footer.jsp"%>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>