package models;

import java.util.ArrayList;

public class CartBean {
	private ArrayList list = new ArrayList();
	private double total;
	
	public ArrayList getList() {
		return list;
	}
	public void setList(ArrayList list) {
		this.list = list;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public int getLineItemCount() {
		return list.size();
	}
	public void deleteCart(String stt) {
		int iSTT=0;
		try {
			iSTT = Integer.parseInt(stt);
			list.remove(iSTT-1);
			calculateOrderTotal();
		}
		catch(NumberFormatException nfe) {
			nfe.printStackTrace();
		}
	}
	public void updateCart(String stt, String quantity) {
		int iSTT = Integer.parseInt(stt);
		CartProduct cartItem = (CartProduct) list.get(iSTT-1);
		double iPrice = cartItem.getPrice();
		int iQuantity = Integer.parseInt(quantity);
		try {
			if(iQuantity>0) {
				cartItem.setQuantity(iQuantity);
				cartItem.setTotalCost(iPrice * iQuantity);
				calculateOrderTotal();
			}
		}
		catch(NumberFormatException nfe) {
			nfe.printStackTrace();
		}
	}
	public void calculateOrderTotal() {
		double plus = 0;
		for(int i=0;i < list.size(); i++) {
			CartProduct cartItem = (CartProduct) list.get(i);
			plus+= cartItem.getTotalCost();
		}
		setTotal(plus);
	}
	public void addCart(String image, String title, String description, String price, String quantity) {
		double iPrice = Double.parseDouble(price);
		int iQuantity = Integer.parseInt(quantity);
		CartProduct cartItem = new CartProduct();
		try {
			if(iQuantity>0) {
				cartItem.setImage(image);
				cartItem.setTitle(title);
				cartItem.setDescription(description);
				cartItem.setPrice(iPrice);
				cartItem.setQuantity(iQuantity);
				cartItem.setTotalCost(iPrice * iQuantity);
				list.add(cartItem);
				calculateOrderTotal();
			}
		}
		catch(NumberFormatException nfe) {
			nfe.printStackTrace();
		}
	}
	public void addCart(String iDescription, String iPrice, String iQuantity) {
		// TODO Auto-generated method stub
		
	}
}
