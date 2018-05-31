package si.feri.vao;

import java.util.List;

public class Dopolnilo {
	
	public enum PrintFormat{
	    F1, F2, F3
	}

	private int id;
	private String naziv;
	private int naRecept;
	private int trajanje;
	private int kolicina;
	private String opis;

	public Dopolnilo() {
	}

	public Dopolnilo(String naziv, int naRecept, int trajanje) {
		this.naziv = naziv;
		this.naRecept = naRecept;
		this.trajanje = trajanje;
	}
	
	public Dopolnilo(String naziv, int naRecept, int trajanje, String opis) {
		this.naziv = naziv;
		this.naRecept = naRecept;
		this.trajanje = trajanje;
		this.opis = opis;
	}

	public Dopolnilo(String naziv, int naRecept, int trajanje, int kolicina) {
		this.naziv = naziv;
		this.naRecept = naRecept;
		this.trajanje = trajanje;
		this.kolicina = kolicina;
	}
	
	public Dopolnilo(int id, String naziv, int naRecept, int trajanje) {
		this.id = id;
		this.naziv = naziv;
		this.naRecept = naRecept;
		this.trajanje = trajanje;
	}

	public Dopolnilo(String naziv, int naRecept, int trajanje, int kolicina, String opis) {
		this.naziv = naziv;
		this.naRecept = naRecept;
		this.trajanje = trajanje;
		this.kolicina = kolicina;
		this.opis = opis;
	}
	
	public Dopolnilo(int id, String naziv, int naRecept, int trajanje, String opis) {
		this.id = id;
		this.naziv = naziv;
		this.naRecept = naRecept;
		this.trajanje = trajanje;
		this.opis = opis;
	}
	
	public String getNaziv() {
		return naziv;
	}

	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}

	public int getNaRecept() {
		return naRecept;
	}

	public void setNaRecept(int naRecept) {
		this.naRecept = naRecept;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

	public int getTrajanje() {
		return trajanje;
	}

	public void setTrajanje(int trajanje) {
		this.trajanje = trajanje;
	}
	
	

	public int getKolicina() {
		return kolicina;
	}

	public void setKolicina(int kolicina) {
		this.kolicina = kolicina;
	}
	
	
	public String getOpis() {
		return opis;
	}

	public void setOpis(String opis) {
		this.opis = opis;
	}


//	// private static SimpleDateFormat sdf=new SimpleDateFormat("dd. MM. yyyy");
//	@Override
//	public String toString() {
//		return naziv + " (" + kolicina + "x)";
//	}


	// private static SimpleDateFormat sdf=new SimpleDateFormat("dd. MM. yyyy");
	@Override
	public String toString() {
		return naziv;
	}
}
