package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.RecensioneBean;
import server.DriverManagerConnectionPool;

public class RecensioneDAO {
	
	public synchronized void doSave(RecensioneBean r) throws SQLException {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		String insertSQL = "insert into recensione" 
				+ " (valutazione, commento, personaUsername, attivitaIDAttivita) values (?, ?, ?, ?)";

		try {
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setInt(1, r.getValutazione());
			preparedStatement.setString(2, r.getCommento());
			preparedStatement.setString(3, r.getPersonaUsername());
			preparedStatement.setInt(4, r.getAttivitaIDAttivita());
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
		this.doSaveSelection(r);
		
	}
	public void doSaveSelection(RecensioneBean r) {
	}

	public synchronized RecensioneBean doRetrieveByKey(String personaUsername, int attivitaIDAttivita){
		 
		 Connection conn = null;
		 PreparedStatement ps = null;
		 try {
			RecensioneBean r = new RecensioneBean(personaUsername, attivitaIDAttivita); 
			conn = DriverManagerConnectionPool.getConnection();
			ps = conn.
					prepareStatement("SELECT * FROM wheredoieat.recensione WHERE personaUsername = ? AND attivitaIDAttivita = ?");
			ps.setString(1, personaUsername);
			ps.setInt(2,  attivitaIDAttivita);
					
			ResultSet res = ps.executeQuery();

			// 4. Prendi il risultato
			if(res.next())
			{
				r.setValutazione(res.getInt("valutazione"));
				r.setCommento(res.getString("commento"));
				r.setPersonaUsername(res.getString("personaUsername"));
				r.setAttivitaIDAttivita(res.getInt("attivitaIDAttivita"));
				
				return r;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				ps.close();
				DriverManagerConnectionPool.releaseConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	 }
	
	
	public synchronized boolean doDelete(String personaUsername, int attivitaIDAttivita) throws SQLException {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		int result = 0;

		String deleteSQL = "delete from recensione" + " where personaUsername = ? AND attivitaIDAttivita = ?";

		try {
			connection = DriverManagerConnectionPool.getConnection();
			connection.setAutoCommit(true);
			preparedStatement = connection.prepareStatement(deleteSQL);
			preparedStatement.setString(1, personaUsername);
			preparedStatement.setInt(2, attivitaIDAttivita);
			
			result = preparedStatement.executeUpdate();

		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				if (connection != null)
					connection.close();
			}
		}
		return (result != 0);
	}
	
	public synchronized void doUpdate(RecensioneBean r) throws SQLException {

		Connection connection = null;
	PreparedStatement preparedStatement = null;
	
	String updateSQL ="UPDATE recensione"+
            " SET valutazione= ?, commento=?, personaUsername=?, attivitaIDAttivita=? WHERE personaUsername=? AND attivitaIDAttivita = ?";
	try {
		connection = DriverManagerConnectionPool.getConnection();
		preparedStatement = connection.prepareStatement(updateSQL);
		preparedStatement.setInt(1, r.getValutazione());
		preparedStatement.setString(2, r.getCommento());
		preparedStatement.setString(3, r.getPersonaUsername());
		preparedStatement.setInt(4, r.getAttivitaIDAttivita());
		preparedStatement.setString(5, r.getPersonaUsername());
		preparedStatement.setInt(6, r.getAttivitaIDAttivita());

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
	}
	
	public synchronized ArrayList<RecensioneBean> doRetrieveAll(int idAtt) throws SQLException {
		Connection conn = null;
		 PreparedStatement ps = null;
		 ArrayList<RecensioneBean> r= new ArrayList<RecensioneBean>();
		 try {
			conn = DriverManagerConnectionPool.getConnection();
			ps = conn.
					prepareStatement("SELECT * FROM wheredoieat.recensione WHERE attivitaIDAttivita = ?");
			ps.setInt(1,  idAtt);
					
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				RecensioneBean bean = new RecensioneBean();
				bean.setValutazione(rs.getInt("valutazione"));
				bean.setCommento(rs.getString("commento"));
				bean.setPersonaUsername(rs.getString("personaUsername"));
				bean.setAttivitaIDAttivita(rs.getInt("attivitaIDAttivita"));

				r.add(bean);
			}

		} finally {
			try {
				if (ps != null)
					ps.close();
			} finally {
				if (conn != null)
					conn.close();
			}
		}
		return r;
	}
	
	
}
