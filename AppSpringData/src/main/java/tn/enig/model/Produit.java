package tn.enig.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Produits")
public class Produit {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer num; 
	private String description ; 
	private float prix_a ;
	private float prix_v;
	private String date ; 
	private int q ;
	@ManyToOne
	@JoinColumn(name="magasin_Id")
	private Magasin magasin ;
	
	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Produit(Integer num, String description, float prix_a, float prix_v, String date, int q, Magasin magasin) {
		super();
		this.num = num;
		this.description = description;
		this.prix_a = prix_a;
		this.prix_v = prix_v;
		this.date = date;
		this.q = q;
		this.magasin = magasin;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrix_a() {
		return prix_a;
	}

	public void setPrix_a(float prix_a) {
		this.prix_a = prix_a;
	}

	public float getPrix_v() {
		return prix_v;
	}

	public void setPrix_v(float prix_v) {
		this.prix_v = prix_v;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getQ() {
		return q;
	}

	public void setQ(int q) {
		this.q = q;
	}

	public Magasin getMagasin() {
		return magasin;
	}

	public void setMagasin(Magasin magasin) {
		this.magasin = magasin;
	}
	
	

}
