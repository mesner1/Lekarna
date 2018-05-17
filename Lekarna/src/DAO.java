

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;





public class DAO {

	
	
	private DataSource baza;
   
	
    public DAO() {
		try {
			baza=(DataSource)new InitialContext().lookup("java:jboss/datasources/lekarna");	
			kreirajTabele();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

	public void kreirajTabele() throws Exception {
		
		Connection conn=null;
		try {
			conn=baza.getConnection();
			
			conn.createStatement().execute("create table if not exists zdravilo (ime varchar(45))");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}
	
}