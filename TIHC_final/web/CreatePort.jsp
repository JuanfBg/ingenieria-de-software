
<%@page import="java.util.List"%>
<%@page import="dao.DAOCountryImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%DAOCountryImpl country=new DAOCountryImpl();
  List<Object> litsCountry=country.read();
  request.setAttribute("countries", litsCountry);
%>
<html lang="en">
    <head>
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TIHC</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
         <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/business-casual.css" rel="stylesheet">
    </head>
    <body>
       <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block">TIHC</div>
    <div class="tagline-lower text-center text-expanded text-shadow text-uppercase text-white mb-5 d-none d-lg-block">TRANSPORTES INTERCONTINENTALES
EL HOMBRE CAIMÁN</div>
  <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-faded py-lg-4">
      <div class="container">
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav mx-auto">
              
               <li class="nav-item active px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="Index.jsp">Principal
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item active px-lg-4">
                <a class="nav-link text-uppercase text-expanded" href="Login.jsp">Login
             
              </a>
            </li>
            <li class="nav-item px-lg-4">
                <a class="nav-link text-uppercase text-expanded" href="CrudPort.jsp">Puertos</a>
            </li>
            <li class="nav-item px-lg-4">
                <a class="nav-link text-uppercase text-expanded" href="CrudCrewman.jsp">Tripulación</a>
            </li>
            <li class="nav-item px-lg-4">
                <a class="nav-link text-uppercase text-expanded" href="CrudCountry.jsp">Países</a>
            </li>
            <li class="nav-item px-lg-4">
                <a class="nav-link text-uppercase text-expanded" href="CrudShip.jsp">Barcos</a>
            </li>

          </ul>
        </div>
      </div>
    </nav>
  <div class="container">

   

      <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">Añadir
          <strong>Puertos</strong>
      <hr class="divider">
        
           <form action="CreatePort" method="post">
                <input type="number" placeholder="Number ID" name="id">
                <input type="text" placeholder="Name Port" name="namePort">
                <select name="country">
                    <c:forEach var="pais" items="${countries}">
                        <option > ${pais.getName()}</option>       
                    </c:forEach>
                </select>
             <button type="submit" class="btn btn-secondary">Ingresar</button>  
        </form>
      </div>
   
        
        
        
        
          <footer class="bg-faded text-center py-5">
      <div class="container">
        <p class="m-0">Copyright &copy; Your Website 2017</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>