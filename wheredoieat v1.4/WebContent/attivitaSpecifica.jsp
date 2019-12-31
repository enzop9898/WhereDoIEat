<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dao.*"  import="bean.*" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WhereDoIEat</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="STILI/centroAttivita.css">
    <link rel="stylesheet" href="STILI/attivitaSpecifica.css">

</head>
<body>
 
    

<%@ include file="header.jsp"%>

  <script src="formPrenota.js"></script>
  <script src="prenotaControlForm.js"></script>
  <%
    PersonaBean p2=new PersonaBean();
    p2=(PersonaBean)request.getSession().getAttribute("cliente");
    if(p2!=null) {
  %>
 <button name="prenota" onClick="prenota()">prenota</button>
 <% } else {%>
 <p>Per poter prenotare devi prima effettuare il <a href="login.jsp">login</a></p> 
 <%}
              Boolean giornoChiusura=(Boolean)request.getAttribute("giornoChiusura");
             if(giornoChiusura!=null) {
            %>
            <p>Ci dispiace, ma il giorno selezionato è il nostro giorno di chiusura</p>
         <%} 
           Boolean postiNonDisp=(Boolean)request.getAttribute("postiNonDisp");
           if(postiNonDisp!=null) {
         %>
         <p>Nella data e nell'ora inserita non ci sono sufficienti posti a disposizione.</p>
          
         <%} 
           Boolean ok=(Boolean) request.getAttribute("ok");
           if(ok!=null) {
        	   
         %>
           <p>Prenotazione Effettuata con successo. Trovi la tua prenotazione nella tua area personale.</p>
         <%} %>
<% 
   AttivitaBean a=new AttivitaBean();
   a=(AttivitaBean)request.getAttribute("singolaAttivita");
   FotoDAO fdao= new FotoDAO();
   ArrayList<FotoBean> fList=new ArrayList<FotoBean>();
   fList=fdao.doRetrieveGroupby();
   String url="";
   if(a!=null) {
	   for(int i=0;i<fList.size();i++) {
	     if(fList.get(i).getAttivitaIDAttivita()==a.getIdAttivita()) {
  		    url=fList.get(i).getFoto();
  	     }
	   }
	   
%>
  <div id="attivita" onClick="chiudiDiv()">
  <h1 id="nomeAtt"><%=a.getNome() %></h1>
  <img id="fotoCons" src="<%=url%>" height=300px width=300px><br>
  <div id="chiusure">
  <p id="orario">ORARIO: <%=a.getOraApertura() %>h - <%=a.getOraChiusura()%>h</p>
  <p id="giornoChiusura">Il giorno di chiusura di questo locale &egrave : <%=a.getGiornoChiusura() %></p>
  </div>

 
  <h4 id="mappa">Come raggiungere il locale:</h4>
  <iframe id="frameMaps" src="<%=a.getMappa() %>" width="400" height="250" frameborder="0" style="border:0;"></iframe>
  <div id="fotoLocaleDiv">
  <h4 id="fotoTitolo">Le foto del locale</h4>
  <%
    fList.clear();
    fList=fdao.doRetrieveByAttivita(a.getIdAttivita());
    int cont=0; //serve per far andare a capo le foto ogni 4
    for(int i=0;i<fList.size();i++) {
        cont++;
        if(cont>4) {
        	%>
        	<div id="separaFoto"></div>
        	<%
        cont=0;	 
        }
    	FotoBean f1=new FotoBean();
    	f1=fList.get(i);
  %>
  <img src="<%=f1.getFoto() %>" width=130px height=130px id="fotoLocale">
 
   
 <%} %>
</div>

<br>
<div id="separazione"></div>
<div id="piattiLocale">
<h4 id="titoloPiatti">I piatti Consigliati del locale</h4>
<%
  
   PiattiDAO piattodao=new PiattiDAO();
   ArrayList<PiattiBean> pList=new ArrayList<PiattiBean>();
   pList=piattodao.doRetrieveByAttivita(a.getIdAttivita());
   for(int i=0;i<pList.size();i++) {
	   PiattiBean piatto= new PiattiBean();
	   piatto=pList.get(i);
%>
<div>
  <p> <%=piatto.getPiatto() %>: <%=piatto.getDescrizione() %> </p>
</div>

<%} %>
</div>
 
 <%} %>
</div>

<div id="prenotazione">
   <h4 id="titoloPren">Inserisci i dati per la prenotazione</h4>
   <img src="foto/x.png" id="chiudiDiv" onMouseOver="effettoX()" onMouseOut="effettoXEsce()" onClick="chiudiDiv()">
   <div>
      <form action="ServletPrenotazione?id=<%=a.getIdAttivita() %>" method="post" name="prenotazione" id="formPren" onsubmit="return controlPrenota(this)">
         <fieldset id="data" onMouseOver="effettoData()" onMouseOut="effettoDataEsce()">
            <legend id="legendData">Data</legend>
            <input type="date" name="data" required onclick="startData()" onkeyup="startData()" id="dataInput">
            <p id="errorData"></p>
         </fieldset>
         <fieldset id="ora" onMouseOver="effettoOra()" onMouseOut="effettoOraEsce()">
            <legend id="legendOra">Ora</legend>
            <%
             for(int x=a.getOraApertura();x<a.getOraChiusura();x++) {
            %>
            <div class="oraRadio">
               <input type="radio" name="ora" value="<%=x%>00" required><p><%=x %>:00</p>
            </div>
            <div class="oraRadio">
               <input type="radio" name="ora" value="<%=x %>30" required><p><%=x %>:30</p>
            </div>
        <%} %>  
                     <p id="errorOra"></p>
         </fieldset>

         <fieldset id="posti" onMouseOver="effettoPosti()" onMouseOut="effettoPostiEsce()">
            <legend id="legendPosti">Posti</legend>
            <input type="number" name="posti" min="1" max="<%=a.getNumPosti() %>" value="1" id="numberPosti">
         </fieldset>
         <input type="submit" name="conferma" value="Prenota" id="buttonPrenota" onMouseOver="confermaPren()" onMouseOut="confermaPrenEsce()">
      </form> 
   </div>
</div>

<div id="spaziohome"><br><br><br><br><br><br><br><br> <br><br><br> <br><br> </div>
         
    <%@ include file="footer.jsp"%>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>