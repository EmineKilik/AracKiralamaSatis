package main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class PersonelKayit extends HttpServlet{
	public static boolean gonder;
	
	@Override

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		Personel personel=new Personel();
		personel.personel_mail= req.getParameter("mail");
		personel.personel_sifre= req.getParameter("sifre");

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
					+ "	VALUES (nextval('s_kisiler'), 'Personel', 'Personel', ?, ?,?);";
			pstmt=dbcon.prepareStatement(sorgu);
			pstmt.setString(1, personel.personel_mail);
			pstmt.setString(2, personel.personel_sifre);
			pstmt.setString(3, "P");
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
