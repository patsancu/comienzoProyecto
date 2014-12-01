<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css"
	rel="stylesheet">

<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<c:url var="jq"
	value="/js/bootstrap-datetimepicker-0.0.11/js/bootstrap-datetimepicker.min.js" />
<script type="text/javascript" src="${jq}"></script>


<title>Crear aviso</title>
</head>
<body>
	<section>
		<div class="jumbotron">

			<div class="container">
				<%-- <a href="<c:url value="/j_spring_security_logout" />"
					class="btn btn-danger btn-mini pull-right">logout</a> --%>
				<h1>Avisos</h1>
				<p>Crear aviso</p>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form modelAttribute = "nuevoAviso" class="form-horizontal">
		<!-- enctype="multipart/form-data" SOLO cuando haya subida de archivos -->
			<%-- nuevoAviso is called form-backing bean --%>
			<%-- <form:errors path="*" cssClass="alert alert-danger" element="div" /> --%>
			<fieldset>
				<legend>A�adir nuevo aviso</legend>



				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="titulo"><spring:message
							code="addAviso.form.titulo.label" /></label>
					<div class="col-lg-10">
						<form:input id="titulo" path="titulo" type="text"
							class="form:input-large" />
						<form:errors path="titulo" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="contenidoAviso">Contenido
						de aviso</label>
					<div class="col-lg-10">
						<form:textarea id="contenidoAviso" path="contenidoAviso"
							type="text" class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="tipoAviso">Tipo
						de aviso</label>
					<div class="col-lg-10">
						<form:radiobutton path="tipoAviso" value="Importante" />
						Importante
						<form:radiobutton path="tipoAviso" value="Normal" />
						Normal
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="etiqueta">Etiqueta</label>
					<div class="col-lg-10">
						<form:input id="etiqueta" path="etiqueta" type="text"
							class="form:input-large" />
						<form:errors path="etiqueta" cssClass="text-danger" />
					</div>
				</div>

				<div id="datetimepicker" class="form-group input-append date">
				<label class="control-label col-lg-2 col-lg-2" for="fechaPublicacion">Fecha</label>
					<input type="text"> <span class="add-on"> 
						<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
					</span></input> 
					
				</div>
				
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="Crear aviso" />
					</div>
				</div>

				
			</fieldset>
		</form:form>
	</section>



	<!-- jQuery y librer�a JS para fecha -->

	<script type="text/javascript"
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js">
    </script>
	<script type="text/javascript"
		src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js">
    </script>
	<script type="text/javascript"
		src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
    </script>
	<script type="text/javascript"
		src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js">
    </script>
	<script type="text/javascript">
      $('#datetimepicker').datetimepicker({
        //format: 'dd/MM/yyyy hh:mm:ss',
        format: 'dd/MM/yyyy hh:mm',
        //language: 'pt-BR'
        language: 'en-US'
      });
    </script>





</body>
</html>