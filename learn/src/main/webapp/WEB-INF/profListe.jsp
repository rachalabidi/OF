<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib   uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
 <style>
<%@include file="/WEB-INF/CSS/liste.css"%>

</style> 
<title>Liste des Enseignants</title>
</head>
<body>
<div class="video-bg">
        <video width="320" height="240" autoplay loop muted>
         <source src="https://assets.codepen.io/3364143/7btrrd.mp4" type="video/mp4">
     
       </video>
    </div> 

<a href="http://localhost:8676/learn/myServlet"> back
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-video2" viewBox="0 0 16 16">
                        <path d="M10 9.05a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                        <path d="M2 1a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2H2ZM1 3a1 1 0 0 1 1-1h2v2H1V3Zm4 10V2h9a1 1 0 0 1 1 1v9c0 .285-.12.543-.31.725C14.15 11.494 12.822 10 10 10c-3.037 0-4.345 1.73-4.798 3H5Zm-4-2h3v2H2a1 1 0 0 1-1-1v-1Zm3-1H1V8h3v2Zm0-3H1V5h3v2Z"/>
                      </svg>
                </a>
  <section>
<div class="table">
    
    <div class="row header rgba ">
      <div class="th">
        prenom
      </div>
      <div class="th">
        nom
      </div>
      <div class="th">
        mot de passe
      </div>
      <div class="th">
        module
      </div>
       <div class="th">
        Supprimer
      </div>
       <div class="th">
       Modifier
      </div>
     
      </div>
     
     
      
  
  
  <c:forEach begin="0" end="${ensList.size()-1}" var="i"  step="1" >  
  
    <div class="row">
      <div class="th" >
        <c:out value="${ensList[i].nom_prof}" />
      </div>
      <div class="th" >
        <c:out value="${ensList[i].prenom_prof}" />
      </div>
      
      <div class="th" >
        <c:out value="${ensList[i].password}" />
      </div>
      <div class="th" >
        <c:out value="${ensList[i].module}" />
      </div>
      
     <div class="th" >
      <form action="SuppEnsServlet" method ="post">
      <button  value="${ensList[i].idprof}" name="did" onclick="window.location.href='/SuppEnsServlet'">Supprimer</button>
      
      </form>
      </div>
      
      <div class="th" data-title="Status">
      <form action="ModifierEnsServlet" method ="post">
      <button  value="${ensList[i].idprof}" name="did" onclick="window.location.href='/delProfServlet'">Modifier</button>
      
      </form>
      </div>
    </div>

  </c:forEach>
      
    </section>
 
  
    
    
   <!--   <section> 
                        <div class="tbl-header">
                      
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="cell">ID</th>
          <th class="cell">Nom</th>
          <th class="cell">Prenom</th>
          <th class="cell">Modifier</th>
          <th class="cell">Supprimer</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
       
         
      </tbody>
    </table>
  </div>
</section> -->
 

</body>
</html>