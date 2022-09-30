package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepasitory {
	private ArrayList<Product> list = new ArrayList<>();
	private static ProductRepasitory instance = new ProductRepasitory();
	
	public static ProductRepasitory getInctance() {
		return instance;
	}
	
	private ProductRepasitory () {
		Product phone = new Product("P1234","iPhone 14", 130000);
		phone.setDescription("iPhone 14 및 iPhone 14 Plus. 15.4cm 및 17.0cm 디스플레이. 온종일 가는 배터리 사용 시간. 충돌 감지. 멋진 저조도 사진. 5가지 색상.");
		phone.setCategory("Smart Phone");
		phone.setCondition("New");
		phone.setManufacturer("Apple");
		phone.setUnitsInstock(10000);
		phone.setProductImage("phone.png");
		
		Product notebook = new Product("N1234","2022 맥북 프로 13", 1880000);
		notebook.setDescription("Apple의 가장 강력한 노트북, MacBook Pro가 막강한 성능의 M1 및 M2 칩을 탑재했습니다. 여기에 Magic Keyboard, Touch ID, 선명한 Retina 디스플레이까지 갖추었죠.");
		notebook.setManufacturer("Apple");
		notebook.setCategory("NoteBook");
		notebook.setUnitsInstock(5000);
		notebook.setCondition("New");
		notebook.setProductImage("notebook.png");
		
		Product desktop = new Product("D1234","Apple 2022 맥 미니", 870000);
		desktop.setDescription("M1 칩으로 재탄생한 iMac을 만날 시간. 1,690,000원부터. 지금 구입하기. 스튜디오급 마이크. 다양한 색상.");
		desktop.setCategory("Desktop");
		desktop.setCondition("New");
		desktop.setManufacturer("Apple");
		desktop.setUnitsInstock(7000);
		desktop.setProductImage("tablet.png");
		
		list.add(phone);
		list.add(notebook);
		list.add(desktop);
	}
	
	public ArrayList<Product> getAllProducts(){
		return list;
	}
	
	public Product getProductById (String id) {
		for (Product p:list) {
			if(p.getProductId().equals(id)) return p;
		}
		return null;
	}
	
	public void addProduct (Product p) {
		list.add(p);
	}
}
