package prova;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.PersonaBean;
import server.DriverManagerConnectionPool;

public class Provola {
static final String TABLE_NAME = "persona";
	
	public synchronized void doSave(PersonaBean persona) throws SQLException {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		String insertSQL = "insert into " + Provola.TABLE_NAME
				+ " (username, nome, cognome, email, telefono, citta, tipo, comune, password) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setString(1, persona.getUsername() );
			preparedStatement.setString(2, persona.getNome());
			preparedStatement.setString(3, persona.getCognome());
			preparedStatement.setString(4, persona.getEmail());
			preparedStatement.setString(5, persona.getTelefono());
			preparedStatement.setString(6, persona.getCitta());
			preparedStatement.setInt(7, persona.getTipo());
			preparedStatement.setString(8, persona.getComune());
			preparedStatement.setString(9, persona.getPassword());
			preparedStatement.executeUpdate();

			connection.commit();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				if (connection != null)
					connection.close();
			}
		}
		this.doSaveSelection(persona);
	}
	
	public void doSaveSelection(PersonaBean persona) {
	}
}
