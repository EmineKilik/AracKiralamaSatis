package main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AnasayfaGiris extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
	}
	public List<Arac> getirTumListe() {
		List<Arac> r = new ArrayList<Arac>();
		PgConnector pgc = new PgConnector();
		Connection dbcon = null;
		try {
			dbcon = pgc.getConnection();
			dbcon.setAutoCommit(false);
			String query = "SELECT arac_id, arac_marka, arac_model,arac_fiyat\r\n"
					+ "	FROM public.t_arac_ilan;";
			PreparedStatement psmt = dbcon.prepareStatement(query);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				Arac arac = new Arac(rs.getInt("arac_id"), rs.getString("arac_marka"), rs.getString("arac_model"),
						 rs.getInt("arac_fiyat"));
				r.add(arac);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;

	}

	
}
