package main;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import java.nio.channels.FileChannel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

public class AracIlan extends HttpServlet{
	public static boolean gonder;

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	Arac arac=new Arac();
	arac.arac_marka= req.getParameter("marka");
	arac.arac_model= req.getParameter("model");
	arac.arac_yas= Integer.parseInt(req.getParameter("yas"));
	arac.arac_vites= req.getParameter("vites");
	arac.arac_yakit= req.getParameter("yakit");
	arac.arac_km= req.getParameter("km");
	arac.arac_renk= req.getParameter("renk");
	arac.arac_fiyat= Integer.parseInt(req.getParameter("fiyat"));

	
	
	
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
		String sorgu="INSERT INTO public.t_arac_ilan(\r\n"
				+ "	arac_id, arac_marka, arac_model, arac_yas, arac_vites, arac_yakit, arac_km, arac_renk, arac_fiyat)\r\n"
				+ "	VALUES (nextval('s_arac'), ?, ?, ?, ?, ?, ?, ?,?);";
		pstmt=dbcon.prepareStatement(sorgu);
		pstmt.setString(1, arac.arac_marka);
		pstmt.setString(2, arac.arac_model);
		pstmt.setInt(3, arac.arac_yas);
		pstmt.setString(4, arac.arac_vites);
		pstmt.setString(5, arac.arac_yakit);
		pstmt.setString(6, arac.arac_km);
		pstmt.setString(7, arac.arac_renk);
		pstmt.setInt(8, arac.arac_fiyat);
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
			resp.sendRedirect("anasayfagiris.jsp");
		}
		catch(Exception e){
			gonder=false;
			System.out.println("ikinci"+e);
		}
	}
	

}
    
    }
	
