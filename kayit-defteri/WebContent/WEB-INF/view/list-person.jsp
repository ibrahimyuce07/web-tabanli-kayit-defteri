<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>Person List</title>
</head>

<body>
	<!-- Navbar -->
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
						class="nav-link active"
						href="${pageContext.request.contextPath}/person/list">Kişileri
						Listele</a> <a class="nav-link"
						href="${pageContext.request.contextPath}/person/showFormForAdd">Yeni
						Kişi Ekle</a>
				</div>
			</div>
		</div>
	</nav>



	<div class="container">
		<div class="row justify-content-center">
			<div class="col-auto">

				<input type="button" value="Yeni Kişi Ekle"
					onclick="window.location.href='showFormForAdd'; return false;"
					class="mt-4 mb-2 btn btn-success" />

				<table class="table table-responsive table-striped table-bordered">
					<tr>
						<th>Id</th>
						<th>İsim</th>
						<th>Soyisim</th>
						<th>Kan Grubu</th>
						<th>Cep Telefonu</th>
						<th>Adres Bilgisi</th>
						<th>İşlem</th>
					</tr>

					<c:forEach var="tempPerson" items="${personList}">

						<!-- construct and UPDATE link with person id -->
						<c:url var="updateLink" value="/person/showFormForUpdate">
							<c:param name="personId" value="${tempPerson.id}" />
						</c:url>

						<!-- construct and DELETE link with person id -->
						<c:url var="deleteLink" value="/person/delete">
							<c:param name="personId" value="${tempPerson.id}" />
						</c:url>

						<tr>
							<td>${tempPerson.id}</td>
							<td>${tempPerson.isim}</td>
							<td>${tempPerson.soyisim}</td>
							<td>${tempPerson.kanGrubu}</td>
							<td>${tempPerson.cepTel}</td>
							<td>${tempPerson.adres}</td>
							<td>
								<!-- display the update link --> <a href="${updateLink}"
								class="btn btn-success">Güncelle</a> <a href="${deleteLink}"
								class="btn btn-danger"
								"
							onclick="if (!(confirm('Emin misiniz?'))) return false">Sil</a>
							</td>
						</tr>

					</c:forEach>
				</table>
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