package tn.enig.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import tn.enig.dao.IMagasin;
import tn.enig.dao.IProduit;
import tn.enig.model.Magasin;
import tn.enig.model.Produit;
@Controller 
public class StockController {
	@Autowired
	private IMagasin dao;
	public void setDao(IMagasin dao ) {
		this.dao=dao;
	}
	@Autowired
	private IProduit daoProduit;
	public void setDaProduit(IProduit daoProduit) {
		this.daoProduit=daoProduit;
	}
	@GetMapping("/home")
	public String fn (Model m) {
		
		List<Produit> produits=daoProduit.findAll();
		List<Magasin>magasins=dao.findAll();
		m.addAttribute("listeMagasin", produits);
		m.addAttribute("listeProduit", magasins);
		return "home";
		
		
	}
	@GetMapping("/addProduct")
	public String fn1(Model m) {
		List<Magasin> liste=dao.findAll();
		Produit p=new Produit();
		m.addAttribute("produit", p);
		m.addAttribute("listeMagasin", liste);
		
		return "addProduct";
	}
	@PostMapping("/ajouterProduct")
	public String fn2(Model m,@ModelAttribute("produit") Produit produit) {
		daoProduit.save(produit);
		return "redirect:/addProduct";
		
	}
	@PostMapping("/ajouterProduct/{id}")
	public String fn1 (Model m, @PathVariable int id) {
		List<Produit>liste=daoProduit.findByIdMagasin(id);
		m.addAttribute("listeProduit" , liste);
		return "productsList";
		
	}
}
