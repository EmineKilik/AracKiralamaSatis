<!doctype html>
<%@page import="java.awt.event.ActionEvent"%>
<%@page import="java.awt.event.ActionListener"%>
<%@page import="java.awt.Button"%>
<%@page import="java.io.File"%>
<%@page import="javax.swing.JFileChooser"%>
<%@ page import="java.io.File"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Arac Satis-Kiralama</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/checkout/">



<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.1/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="form-validation.css" rel="stylesheet">
</head>

<body class="bg-light">

	<div class="container">
		<main>
			<div class="py-5 text-center">
				<img class="d-block mx-auto mb-4"
					src="https://cdn-icons-png.flaticon.com/512/3410/3410318.png"
					alt="" width="150" height="150">
				<h1>Yeni Arac</h1>
			</div>
	</div>
	<div class="col-md-7 col-lg-8" style="margin-left: 600px">

		<form action="aracilan.ek" method="post">


			<div class="col-md-4	">
				<label for="vites" class="form-label">Marka</label> <select
					class="form-select" name="marka" required>
					<option value="">Secin...</option>
					<option>Volvo</option>
					<option>Bugatti</option>
					<option>Mercedes</option>
					<option>BMW</option>
					<option>Chevrolet</option>
					<option>Citroen</option>
					<option>Ford</option>
					<option>Fiat</option>
					<option>Honda</option>
					<option>Hyundai</option>
					<option>Maserati</option>
					<option>Nissan</option>
					<option>Mitsubishi</option>
					<option>Renault</option>
					<option>Toyota</option>
					<option>Volkswagen</option>
				</select>
				<div class="invalid-feedback">Lütfen marka bilgisi seçin.</div>
			</div>

			<!-- 									<div class="col-sm-3"> -->
			<!-- 										<label for="marka" class="form-label">Marka</label> -->
			<!-- 										<select name="marka" id="marka" class="form-control"> -->
			<!-- 											<option value="Volvo">Volvo</option> -->
			<!-- 											<option value="Bugatti">Bugatti</option> -->
			<!-- 											<option value="Mercedes">Mercedes</option> -->
			<!-- 											<option value="BMW">BMW</option> -->
			<!-- 											<option value="Chevrolet">Chevrolet</option> -->
			<!-- 											<option value="Citroen">Citroen</option> -->
			<!-- 											<option value="Ford">Ford</option> -->
			<!-- 											<option value="Fiat">Fiat</option> -->
			<!-- 											<option value="Honda">Honda</option> -->
			<!-- 											<option value="Hyundai">Hyundai</option> -->
			<!-- 											<option value="Maserati">Maserati</option> -->
			<!-- 											<option value="Nissan">Nissan</option> -->
			<!-- 											<option value="Mitsubishi">Mitsubishi</option> -->
			<!-- 											<option value="Renault">Renault</option> -->
			<!-- 											<option value="Toyota">Toyota</option> -->
			<!-- 											<option value="Volkswagen">Volkswagen</option> -->
			<!-- 											</select> -->
			<!-- 											<div class="invalid-feedback">Lütfen marka bilgisi girin.</div> -->

			<!-- 									</div> -->

			<div class="col-sm-3">
				<label for="model" class="form-label">Model</label> <input
					type="text" class="form-control" name="model" placeholder=""
					value="" required>
				<div class="invalid-feedback">Lütfen model bilgisi girin.</div>

			</div>

			<div class="col-sm-3">
				<label for="yas" class="form-label">Yas</label> <input type="number"
					class="form-control" name="yas" placeholder="" value="" required>
				<div class="invalid-feedback">Lütfen yas bilgisi girin.</div>
			</div>

			<div class="col-sm-3">
				<label for="km" class="form-label">Km</label> <input type="text"
					class="form-control" name="km" placeholder="" value="" required>
				<div class="invalid-feedback">Lütfen km bilgisi girin.</div>
			</div>

			<div class="col-sm-3">
				<label for="renk" class="form-label">Renk</label> <input type="text"
					class="form-control" name="renk" placeholder="" value="" required>
				<div class="invalid-feedback">Lütfen renk bilgisi girin.</div>
			</div>

			<div class="col-sm-3">
				<label for="fiyat" class="form-label">Fiyat</label> <input
					type="number" class="form-control" name="fiyat" placeholder=""
					value="" required>
				<div class="invalid-feedback">Lütfen fiyat bilgisi girin.</div>
			</div>

			<div class="col-md-4	">
				<label for="vites" class="form-label">Vites</label> <select
					class="form-select" name="vites" required>
					<option value="">Secin...</option>
					<option>Manuel</option>
					<option>Otomatik</option>
				</select>
				<div class="invalid-feedback">Lütfen vites tipi seçin.</div>
			</div>

			<div class="col-md-4">
				<label for="yakit" class="form-label">Yakit</label> <select
					class="form-select" name="yakit" required>
					<option value="">Secin...</option>
					<option>Benzin</option>
					<option>Dizel</option>
					<option>LPG</option>
					<option>Elektrik</option>
				</select>
				<div class="invalid-feedback">Lütfen yakıt türü seçin.</div>
			</div>





			<button class="btn btn-primary" type="submit"
				style="margin-right: 500px; width: 300px;">Ekle</button>
			<p style="line-height: 100px;">
		</form>
	</div>
	</div>
	</main>

	<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>






</body>

</html>