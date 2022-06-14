<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="main.PgConnector"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="tr">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Arac Satis-Kiralama</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/album/">



<!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"
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

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

</head>
<header>
	<div class="collapse bg-dark" id="navbarHeader">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-md-7 py-4">
					<h4 class="text-white">Hakkımızda</h4>
					<p class="text-muted">2012 yılında satış hizmetleri vermek
						üzere kurulan Araç Satış- Kiralama , tüketicilerden gelen yoğun
						talep üzerine 2014 yılında bireysel müşterilere günlük araç
						kiralama hizmeti de sağlamaya başlamıştır. Araç Satış- Kiralama,
						kurulduğu günden itibaren güçlü sermayesi, tecrübeli ekibi, geniş
						araç filosu, sürdürdüğü dürüst ve ilkeli hizmet anlayışı ile siz
						değerli müşterilerimizin tam desteğini kazanmış ve yıllarca
						şirketinizin veya şahsınızın ihtiyaç duyduğu tüm araçlara
						Türkiye’nin her yerinde güvenli, yedeklenmek suretiyle devamlı ve
						satış sonrası hizmet kalitesiyle sorunsuz bir şekilde sahip
						olmanızı sağlamıştır.</p>
				</div>
				<div class="col-sm-4 offset-md-1 py-4">
					<h4 class="text-white">İletişim</h4>
					<ul class="list-unstyled">
						<li><p class="text-white">Telefon: 0312 45 45</p></li>
						<li><p class="text-white">Adres: Koru Mah. Dumlupınar
								Blv. No :351, Eskişehir Yolu Üzeri Prestij Konutları Karşısı
								Petrol Ofisi İçi, 06810</p></li>
						<li><p class="text-white">Email:
								aracsatiskiralama@gmail.com</p></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="navbar navbar-dark bg-dark shadow-sm">
		<div class="container">
			<a href="#" class="navbar-brand d-flex align-items-center"> <strong>Anasayfa</strong>
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarHeader"
				aria-controls="navbarHeader" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</div>
</header>
<body>
	<section class="py-5 text-center container">
		<div class="row py-lg-5">
			<div class="col-lg-6 col-md-8 mx-auto">
				<h1 class="fw-light">Hoşgeldiniz</h1>
				<p class="lead text-muted">Size en uygun aracı bulmamızda bize
					yardımcı olun.</p>
				<p>
					<a href="giris.jsp" class="btn btn-primary my-2">Giris Yap</a>

				</p>
			</div>
		</div>
	</section>

	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<div class="col">
					<div class="card shadow-sm">
						<img src="image/Maserati_Ghibli.jpg" width="100%" height="225">


						<div class="card-body">
							<p class="card-text">Maserati Ghabli 3.0</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">İncele</a>
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">Satın
										Al/Kirala</a>
								</div>
								<small class="text-muted">Stokta</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img src="image/Porsche_Panamera.jpg" width="100%" height="225">

						<div class="card-body">
							<p class="card-text">Porsche Panamera</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">İncele</a>
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">Satın
										Al/Kirala</a>
								</div>
								<small class="text-muted">Stokta</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img src="image/Chevrolet_Corvette_Stingray.jpg" width="100%"
							height="225">

						<div class="card-body">
							<p class="card-text">Chevrolet Corvette Stingray</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">İncele</a>
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">Satın
										Al/Kirala</a>
								</div>
								<small class="text-muted">Stokta</small>
							</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-sm">
						<img src="image/Mercedes_Benz_AMG_GT.jpg" width="100%"
							height="225">

						<div class="card-body">
							<p class="card-text">Mercedes-Benz AMG GT</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">İncele</a>
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">Satın
										Al/Kirala</a>
								</div>
								<small class="text-muted">Stokta</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img src="image/Alfa_Romeo_Giulietta.jpg" width="100%"
							height="225">

						<div class="card-body">
							<p class="card-text">Alfa Romeo Giulietta</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">İncele</a>
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">Satın
										Al/Kirala</a>
								</div>
								<small class="text-muted">Stokta</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img src="image/Bentley_Continental_GT.jpg" width="100%"
							height="225">

						<div class="card-body">
							<p class="card-text">Bentley Continental GT</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">İncele</a>
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">Satın
										Al/Kirala</a>
								</div>
								<small class="text-muted">Stokta</small>
							</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-sm">
						<img src="image/Ferrari_458.jpg" width="100%" height="225">

						<div class="card-body">
							<p class="card-text">Ferrari 458</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">İncele</a>
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">Satın
										Al/Kirala</a>
								</div>
								<small class="text-muted">Stokta</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img src="image/Bugatti_Chiron.jpg" width="100%" height="225">

						<div class="card-body">
							<p class="card-text">Bugatti Chiron</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">İncele</a>
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">Satın
										Al/Kirala</a>
								</div>
								<small class="text-muted">Stokta</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img src="image/Lamborghini_Aventador.jpg" width="100%"
							height="225">

						<div class="card-body">
							<p class="card-text">Lamborghini Aventador</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">İncele</a>
									<a href="giris.jsp" class="btn btn-sm btn-outline-secondary">Satın
										Al/Kirala</a>
								</div>
								<small class="text-muted">Stokta</small>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	</main>

	<footer class="text-muted py-5">
		<div class="container">
			<p class="float-end mb-1">
				<a href="#">Yukarı Çık</a>
			</p>
			<p class="mb-1">Ayrıntılı bilgi için giriş yapın!</p>
			

		</div>
	</footer>


	<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>

