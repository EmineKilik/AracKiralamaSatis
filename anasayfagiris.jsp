<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.PgConnector"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/album/">

<title>Arac Satis-Kiralama</title>
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
<!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%
PgConnector pgc = new PgConnector();
Connection dbcon = null;
dbcon = pgc.getConnection();
dbcon.setAutoCommit(false);

Statement statement = null;
ResultSet resultSet = null;
String yol = "";
%>

<%
try {
	statement = dbcon.createStatement();
	String sql = "SELECT * FROM t_arac_ilan";

	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>
<div class="album py-5 bg-light">
		<div class="container" style="margin-left: 500px	">

			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<div class="col">
					<div class="card shadow-sm">
					<div style="display: none"><%=yol = "ilan_fotograflari\\" + resultSet.getString("arac_marka") + ".jpg"%></div>
									<a href="iletisim.jsp"><img src=<%=yol%> style="width: 420px; height: 400px;" /></a>


						<div class="card-body">
							<p class="card-text"><h1><%=resultSet.getString("arac_marka")%></h1><h2><%=resultSet.getString("arac_model")%></h2>
							</p>


							<p class="card-text">
							<div class="col-sm-8">
								<b>Yaş: </b><%=resultSet.getInt("arac_yas")%></div>
							<div class="col-sm-8">
								<b>Vites: </b><%=resultSet.getString("arac_vites")%></div>
							<div class="col-sm-8">
								<b>Yakıt: </b><%=resultSet.getString("arac_yakit")%></div>
							<div class="col-sm-8">
								<b>Km: </b><%=resultSet.getString("arac_km")%></div>
							<div class="col-sm-8">
								<b>Renk: </b><%=resultSet.getString("arac_renk")%></div>
							<div class="col-sm-8">
								<b>Fiyat: </b><%=resultSet.getInt("arac_fiyat")%></div>
							
							<p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="iletisim.jsp" class="btn btn-sm btn-outline-secondary">Detayli
										Bilgi Icin &raquo;</a>

								</div>

							</div>
								</div>
							
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
			










<!--  
	<div class="album py-5 bg-light">
		<div class="container">
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<div class="col">
					<div class="card shadow-sm">
						<img src=<%=yol%> style="width: 420px; height: 400px;" />

						<div class="card-body">
							<p class="card-text"><h1><%=resultSet.getString("arac_marka")%></h1><h2><%=resultSet.getString("arac_model")%></h2>
							</p>


							<p class="card-text">
							<div class="col-sm-8">
								<b>Yaş: </b><%=resultSet.getInt("arac_yas")%></div>
							<div class="col-sm-8">
								<b>Vites: </b><%=resultSet.getString("arac_vites")%></div>
							<div class="col-sm-8">
								<b>Yakıt: </b><%=resultSet.getString("arac_yakit")%></div>
							<div class="col-sm-8">
								<b>Km: </b><%=resultSet.getString("arac_km")%></div>
							<div class="col-sm-8">
								<b>Renk: </b><%=resultSet.getString("arac_renk")%></div>
							<div class="col-sm-8">
								<b>Fiyat: </b><%=resultSet.getInt("arac_fiyat")%></div>
							<div style="display: none"><%=yol = "ilan_fotograflari\\" + resultSet.getString("arac_marka") + ".jpg"%></div>
							<p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<a href="iletisim.jsp" class="btn btn-sm btn-outline-secondary">Detayli
										Bilgi Icin &raquo;</a>

								</div>

							</div>
						</div>
					</div>
				</div>

</div>

			</div>
		</div>
		<p>
		
		
-->



<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body>



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