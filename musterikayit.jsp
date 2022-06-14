<%@page import="javax.swing.JOptionPane"%>
<%@page import="main.MusteriKayit"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="tr">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">

<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">
<title>Arac Satis-Kiralama</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
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


<link href="signin.css" rel="stylesheet">
</head>
<body class="text-center">

	
	
			<img style="margin-top: 100px" class="mb-3"
				src="https://cdn-icons-png.flaticon.com/512/942/942748.png" alt=""
				width="120" height="120">
			<h1 class="h3 mb-3 fw-normal"></h1>
	
	
			<form action="musterikayit.ek" method="post">
		<div class="container" style="margin-left: 550px; margin-top: 20px">
				<div class="row">
					<div class="col-xl-4">
						<div class="form-floating">
							<input type="text" class="form-control" name="ad"
								placeholder="Adınızı Girin"> <label for="floatingInput">Ad</label>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="margin-left: 550px; margin-top: 20px">
				<div class="row">
					<div class="col-xl-4">
						<div class="form-floating">
							<input type="text" class="form-control" name="soyad"
								placeholder="Soyadınızı Girin"> <label
								for="floatingInput">Soyad</label>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="margin-left: 550px; margin-top: 20px">
				<div class="row">
					<div class="col-xl-4">
						<div class="form-floating">
							<input type="email" class="form-control" name="mail"
								placeholder="name@example.com"> <label
								for="floatingInput">Email</label>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="margin-left: 550px; margin-top: 20px">
				<div class="row">
					<div class="col-xl-4">
						<div class="form-floating">
							<input type="password" class="form-control" name="sifre"
								placeholder="text"> <label for="floatingPassword">Sifre</label>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="margin-left: 550px; margin-top: 50px">
				<div class="row">
					<div class="col-xl-4">
					
      
      
    	   <input type="submit" onclick="kontrolGonder()" class="w-100 btn btn-lg btn-primary" value="Kayit Ol"> 
    	
						
					</div>
				</div>
			</div>
	</form>


</body>

</html>


