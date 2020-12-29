<%@ page contentType="text/html;charset=UTF-8" language="java"%>


<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Anasayfa</title>
</head>

<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Kayıt Defteri</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link active" aria-current="page"
						href="${pageContext.request.contextPath}">Anasayfa</a> <a
						class="nav-link"
						href="${pageContext.request.contextPath}/person/list">Kişileri
						Listele</a> <a class="nav-link"
						href="${pageContext.request.contextPath}/person/showFormForAdd">Yeni
						Kişi Ekle</a>
				</div>
			</div>
		</div>
	</nav>

	<!-- Container -->
	<div class="container">
		<h2 class="text-center mb-4 mt-4">Web Tabanlı Kayıt Defteri
			Uygulaması</h2>

		<table class="table table-striped table-bordered table-responsive col text-center">
			<tr >
				<td><a
					href="${pageContext.request.contextPath}/person/list"
					class="btn btn-primary"><p>Kişileri Listele</p></a></td>
				<td><a
					href="${pageContext.request.contextPath}/person/showFormForAdd"
					class="btn btn-success"><p>Yeni Kişi Ekle</p></a></td>
			</tr>
		</table>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>

</body>

<!-- Footer -->
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