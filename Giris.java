package main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import main.PgConnector;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Giris extends HttpServlet{
	public static Musteri musteri= new Musteri();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String mail = req.getParameter("mail");
		String sifre = req.getParameter("sifre");
		String rol = "M";

		PgConnector pgc = new PgConnector();
		Connection dbcon = null;
		
		try {
			dbcon = pgc.getConnection();
			dbcon.setAutoCommit(false);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		boolean loginflag = false;
		PreparedStatement pstmt = null;
		try {

			
			String sql = "SELECT kisi_id, kisi_ad, kisi_soyad, kisi_mail, kisi_sifre, rol\r\n"
					+ "	FROM public.t_kisiler where kisi_mail=? and kisi_sifre=?;";
			pstmt = dbcon.prepareStatement(sql);
			pstmt.setString(1, mail);
			pstmt.setString(2, sifre);
			ResultSet rs = pstmt.executeQuery();
			// pstmt.executeUpdate();
			int count = 0;
			while (rs.next()) {
				
				int user_id = rs.getInt("kisi_id");
				String kisi_ad = rs.getString("kisi_ad");
				String kisi_soyad = rs.getString("kisi_soyad");
				String kisi_mail = rs.getString("kisi_mail");
				String kisi_sifre = rs.getString("kisi_sifre");
				rol=rs.getString("rol");
			    musteri.musteri_id=user_id;
				musteri.musteri_adi=kisi_ad;
				musteri.musteri_soyadi=kisi_soyad;
				musteri.musteri_mail=kisi_mail;
				musteri.musteri_sifre=kisi_sifre;
				musteri.rol=rol;
				count++;

			}
			if (count > 0) {
				req.getSession().setAttribute("login", true);
				loginflag = true;
			} 
			else
			{
				req.getSession().setAttribute("login", false);
				loginflag = false;
			}
			// dbcon.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				dbcon.close();
				if (loginflag && rol.equals("M")) {
					resp.sendRedirect("anasayfagiris.jsp");
					System.out.println("baþarýlý müþteri");
				} else if(loginflag &&rol.equals("A")||rol.equals("P")) {
					resp.sendRedirect("admin.jsp");
					System.out.println("baþarýlý admin");
				}
				else if(loginflag &&rol.equals("P"))
				{
					resp.sendRedirect("personel.jsp");
					System.out.println("baþarýlý admin");
				}
				else
				{
					System.out.println("baþarýsýz");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}



}






