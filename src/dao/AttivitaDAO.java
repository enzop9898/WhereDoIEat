package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.AttivitaBean;
import bean.PersonaBean;
import server.DriverManagerConnectionPool;

public class AttivitaDAO {
	
	public synchronized void doSave(AttivitaBean a) throws SQLException {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		String insertSQL = "insert into attivita" 
				+ " (idAttivita, nome, comune, oraApertura, oraChiusura, giornoChiusura, indirizzo, telefono, numPosti, mappa, personaUsername) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setInt(1, a.getIdAttivita());
			preparedStatement.setString(2, a.getNome());
			preparedStatement.setString(3, a.getComune());
			preparedStatement.setInt(4, a.getOraApertura());
			preparedStatement.setInt(5, a.getOraChiusura());
			preparedStatement.setString(6, a.getGiornoChiusura());
			preparedStatement.setString(7, a.getIndirizzo());
			preparedStatement.setString(8, a.getTelefono());
			preparedStatement.setInt(9, a.getNumPosti());
			preparedStatement.setString(10, a.getMappa());
			preparedStatement.setString(11, a.getPersonaUsername());
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
		this.doSaveSelection(a);
		
	}
	public void doSaveSelection(AttivitaBean a) {
	}

	public synchronized AttivitaBean doRetrieveByKey(int idAttivita){
		 
		 Connection conn = null;
		 PreparedStatement ps = null;
		 try {
			AttivitaBean a= new AttivitaBean(idAttivita); 
			conn = DriverManagerConnectionPool.getConnection();
			ps = conn.
					prepareStatement("SELECT * FROM wheredoieat.attivita WHERE idAttivita = ?");
			ps.setInt(1, idAttivita);
					
			ResultSet res = ps.executeQuery();

			// 4. Prendi il risultato
			if(res.next())
			{
				a.setIdAttivita(res.getInt("idAttivita"));
				a.setNome(res.getString("nome"));
				a.setComune(res.getString("comune"));
				a.setOraApertura(res.getInt("oraApertura"));
				a.setOraChiusura(res.getInt("oraChiusura"));
				a.setGiornoChiusura(res.getString("giornoChiusura"));
				a.setIndirizzo(res.getString("indirizzo"));
				a.setTelefono(res.getString("telefono"));
				a.setNumPosti(res.getInt("numPosti"));
				a.setMappa(res.getString("mappa"));
				a.setPersonaUsername(res.getString("personaUsername"));
				return a;
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
	
	
	public synchronized boolean doDelete(int idAttivita) throws SQLException {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		int result = 0;

		String deleteSQL = "delete from attivita" + " where idAttivita = ?";

		try {
			connection = DriverManagerConnectionPool.getConnection();
			connection.setAutoCommit(true);
			preparedStatement = connection.prepareStatement(deleteSQL);
			preparedStatement.setInt(1, idAttivita);

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
	
	public synchronized void doUpdate(AttivitaBean a) throws SQLException {

		Connection connection = null;
	PreparedStatement preparedStatement = null;
	
	String updateSQL ="UPDATE attivita"+
            " SET idAttivita= ?, nome=?, comune=?, oraApertura=? , oraChiusura=?, giornoChiusura=?, indirizzo=?, telefono=?, numPosti=?, mappa=?, personaUsername=? WHERE idAttivita=?";
	try {
		connection = DriverManagerConnectionPool.getConnection();
		preparedStatement = connection.prepareStatement(updateSQL);
		preparedStatement.setInt(1, a.getIdAttivita());
		preparedStatement.setString(2, a.getNome());
		preparedStatement.setString(3, a.getComune());
		preparedStatement.setInt(4, a.getOraApertura());
		preparedStatement.setInt(5, a.getOraChiusura());
		preparedStatement.setString(6, a.getGiornoChiusura());
		preparedStatement.setString(7, a.getIndirizzo());
		preparedStatement.setString(8, a.getTelefono());
		preparedStatement.setInt(9, a.getNumPosti());
		preparedStatement.setString(10, a.getMappa());
		preparedStatement.setString(11, a.getPersonaUsername());
		preparedStatement.setInt(12, a.getIdAttivita());
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
	
	public synchronized ArrayList<AttivitaBean> doRetrieveAll() throws SQLException {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		ArrayList<AttivitaBean> a = new ArrayList<AttivitaBean>();

		String selectSQL = "SELECT * FROM attivita;";
		
		

		try {
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = connection.prepareStatement(selectSQL);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				AttivitaBean bean = new AttivitaBean();
				
				
				bean.setIdAttivita(rs.getInt("idAttivita"));
				bean.setNome(rs.getString("nome"));
				bean.setComune(rs.getString("comune"));
				bean.setOraApertura(rs.getInt("oraApertura"));
				bean.setOraChiusura(rs.getInt("oraChiusura"));
				bean.setGiornoChiusura(rs.getString("giornoChiusura"));
                bean.setIndirizzo(rs.getString("indirizzo"));
                bean.setTelefono(rs.getString("telefono"));
                bean.setNumPosti(rs.getInt("numPosti"));
                bean.setMappa(rs.getString("mappa"));
                bean.setPersonaUsername(rs.getString("personaUsername"));
                
				a.add(bean);
			}

		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				if (connection != null)
					connection.close();
			}
		}
		return a;
	}
	
	
	public synchronized float doRetrieveByMediaVal(int idAttivita){
		 
		 Connection conn = null;
		 PreparedStatement ps = null;
		 try {
			 float result;
			conn = DriverManagerConnectionPool.getConnection();
			ps = conn.
					prepareStatement("SELECT AVG(valutazione) FROM wheredoieat.recensione WHERE attivitaIDAttivita = ?");
			ps.setInt(1, idAttivita);
					
			ResultSet res = ps.executeQuery();

			// 4. Prendi il risultato
			if(res.next())
			{   
				result=res.getFloat("AVG(valutazione)");
				return result;
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
		return 0;
	 }
	
}
