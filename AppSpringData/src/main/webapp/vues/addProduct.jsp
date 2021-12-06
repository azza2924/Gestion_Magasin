<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Add Client </title>
</head>
<body>
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand active" href="home" >Home <span class="sr-only">(current)</span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="addProduct">Add Produit</a></li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="//{orderId}">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
		<h1>Ajouter un produit</h1>
		
		<form:form method="POST" action="ajouterProduct" modelAttribute="produit">
		  <div class="form-group">
		    <label for="exampleFormControlInput1">Description </label>
		    <form:input type="text" path="description" class="form-control" id="exampleFormControlInput1" />
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlInput2">Date d'ajout</label>
		    <form:input type="date" path="dateAjout" class="form-control" id="exampleFormControlInput2" />
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlInput3">Quantite </label>
		    <form:input type="number" path="quantite" class="form-control" id="exampleFormControlInput3" />
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlInput4">Prix Achat </label>
		    <form:input type="number" path="prixAchat" class="form-control" id="exampleFormControlInput4" />
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlInput5">Prix Vente </label>
		    <form:input type="number" path="prixVente" class="form-control" id="exampleFormControlInput5" />
		  </div>
		  <div class="form-group">
				    <label for="exampleFormControlInput6">Magasin</label>
				    <form:select path="magasin.id" class="form-control" id="exampleFormControlInput6" itemLabel="titre" itemValue="id" items="${listeMagasin}" />
				  </div>
		  <div class="form-group">
		    <input type="submit" />
		  </div>
		</form:form>
</body>
</html>