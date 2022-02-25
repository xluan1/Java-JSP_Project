package models;

public class CartProduct extends Product {
	private int quantity;
	private double TotalCost;
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalCost() {
		return TotalCost;
	}
	public void setTotalCost(double TotalCost) {
		this.TotalCost = TotalCost;
	}
}
