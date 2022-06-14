package main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import main.Musteri;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import main.PgConnector;

public class MusteriKayit extends HttpServlet{
	public static boolean gonder;
	
@Override

protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
	Musteri musteri=new Musteri();
	musteri.musteri_adi= req.getParameter("ad");
	musteri.musteri_soyadi= req.getParameter("soyad");
	musteri.musteri_mail= req.getParameter("mail");
	musteri.musteri_sifre= req.getParameter("sifre");

	PgConnector pgc=new PgConnector();
	Connection dbcon=null;
	try {
		dbcon=pgc.getConnection();
		dbcon.setAutoCommit(false);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	PreparedStatement pstmt=null;
	try { 
		String sorgu="INSERT INTO public.t_kisiler(\r\n"
				+ "	kisi_id, kisi_ad, kisi_soyad, kisi_mail, kisi_sifre,rol)\r\n"
				+ "	VALUES (nextval('s_kisiler'), ?, ?, ?, ?,?);";
		pstmt=dbcon.prepareStatement(sorgu);
		pstmt.setString(1, musteri.musteri_adi);
		pstmt.setString(2, musteri.musteri_soyadi);
		pstmt.setString(3, musteri.musteri_mail);
		pstmt.setString(4, musteri.musteri_sifre);
		pstmt.setString(5, "M");
		int rows =pstmt.executeUpdate();			
		dbcon.commit();	
		gonder=true;
	} catch (Exception ex) {	
		System.out.println("ilk"+ex);
		gonder=false;
	}
	finally {
		try {
			dbcon.close();
			resp.sendRedirect("giris.jsp");
		}
		catch(Exception e){
			gonder=false;
			System.out.println("ikinci"+e);
		}
	}
	
}
}
