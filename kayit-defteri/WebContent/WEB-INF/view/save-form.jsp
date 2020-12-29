<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Yeni Kişi Ekle</title>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="${pageContext.request.contextPath}">Kayıt
				Defteri</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}">Anasayfa</a> <a
						class="nav-link"
						href="${pageContext.request.contextPath}/person/list">Kişileri
						Listele</a> <a class="nav-link active"
						href="${pageContext.request.contextPath}/person/showFormForAdd">Yeni
						Kişi Ekle</a>
				</div>
			</div>
		</div>
	</nav>


	<div class="container">
		<div class="row justify-content-center">
			<div class="col-auto">
				<h2 class="text-center mb-4 mt-4">Yeni Kişi Ekle</h2>
				<form:form action="savePerson" modelAttribute="person" method="POST">
					<form:hidden path="id" />


					<form:input path="isim" class="form-control mb-2"
						placeholder="İsim" />



					<form:input path="soyisim" class="form-control mb-2"
						placeholder="Soyisim" />


					<form:input path="kanGrubu" class="form-control mb-2"
						placeholder="Kan Grubu" />


					<form:input path="cepTel" class="form-control mb-2"
						placeholder="Cep Telefonu" />


					<form:textarea path="adres" class="form-control mb-2"
						placeholder="Adres Bilgisi" />

					<input type="submit" class="btn btn-primary" value="Kaydet"
						class="save">


				</form:form>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>

<footer class="my-5 pt-5 text-muted text-center text-small fixed-bottom">
	<p class="mb-1">&copy; İbrahim Yüce</p>
	<ul class="list-inline">
		<li class="list-inline-item"><a
			href="https://github.com/ibrahimyuce07">Github</a></li>
		<li class="list-inline-item"><a
			href="https://www.linkedin.com/in/ibrahim-yuce-07/">Linkedin</a></li>
	</ul>
</footer>
</html>