package co.com.psl.januarywebpage.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RsvpController {

	@RequestMapping(value = "submitrsvp", method = RequestMethod.POST)
	public String test(@RequestBody RsvpResponseDto dto) throws SQLException, URISyntaxException {
		save(dto);
		return "success";
	}

	public void save(RsvpResponseDto dto) throws SQLException, URISyntaxException {
		String username = null;
		String password = null;
		String dbUrl = null;

		String databaseUrlString = System.getenv("DATABASE_URL");
		if (StringUtils.isNotEmpty(databaseUrlString)) {
			URI dbUri = new URI(databaseUrlString);
			username = dbUri.getUserInfo().split(":")[0];
			password = dbUri.getUserInfo().split(":")[1];
			dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
		} else {
			dbUrl = "jdbc:postgresql://localhost:5432/matrimonio";
			username = "postgres";
			password = "footprints";
		}
		try (Connection con = DriverManager.getConnection(dbUrl, username, password);) {
			for (ResponseGuestDetail detail : dto.getGuestDetails()) {
				PreparedStatement ps = createPreparedStatement(con, detail, dto);
				ps.execute();
			}
		} catch (SQLException e) {
			throw e;
		}
	}

	private PreparedStatement createPreparedStatement(Connection con, ResponseGuestDetail guestDetail,
			RsvpResponseDto dto) throws SQLException {
		String sql = "INSERT INTO public.rsvp(name, is_vegetarian, is_diabetic, is_drinker, assist_to_party, brings_car, rsvp_date) VALUES (?, ?, ?, ?, ?, ?, ?);";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, guestDetail.getName());
		ps.setBoolean(2, guestDetail.isVeggie());
		ps.setBoolean(3, guestDetail.isDiabetic());
		ps.setBoolean(4, guestDetail.isDrinker());
		ps.setBoolean(5, dto.isAssistingToParty());
		ps.setBoolean(6, dto.bringsCar());
		ps.setDate(7, new java.sql.Date(Calendar.getInstance().getTimeInMillis()));
		return ps;
	}

}
