import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="zrno")
@SessionScoped

public class Zrno {
	
String test=" hallo";	
 DAO dao=new DAO();

 
public DAO getDao() {
	return dao;
}

public void setDao(DAO dao) {
	this.dao = dao;
}

public String getTest() {
	return test;
}

public void setTest(String test) {
	this.test = test;
}





 
}
