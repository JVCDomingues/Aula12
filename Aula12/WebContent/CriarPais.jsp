<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<title>Criar País</title>
</head>
<body>
    
	<c:import url="Menu.jsp"/>
    
    <div id="main" class="container">
        <h3 class="page-header">Incluir País</h3>
        
        <form action="controller.do" method="post">
            
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" name="nome" id="nome" placeholder="Nome">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="pop">População</label>
                    <input type="text" class="form-control" name="populacao" id="populacao" placeholder="População">
                </div>

                <div class="form-group col-md-6">
                    <label for="area">Área</label>
                    <input type="text" class="form-control" name="area" id="area" placeholder="Área">
                </div>
            </div>
            <hr />
            <div id="actions" class="row">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary" name="command" value="CriarPais">Salvar</button>
                    <a href="index.jsp" class="btn btn-default">Cancelar</a>
                </div>
            </div>
        </form>
    </div>
    
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>