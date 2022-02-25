package models;

import java.sql.Timestamp;


public class Product {
    protected int id;
    protected String title;
    protected String description;
    protected double price;
    protected Timestamp deal_timer;
    protected int discount;
    protected String image;
    protected boolean cover;
    protected boolean hot_deal;
    protected boolean hot_new;
    protected boolean hot_best;
    protected boolean trend;
    protected boolean latest_review;    
    protected String address;
    protected String category;
    protected String catname;
    protected double price_net;
    protected int article_number;
    protected String guarantee;
    protected String delivery_time;
    protected String availability;
    protected String manufacturer;
    protected String specification;
    protected int amount;
    
    public Product() {  }
    public Product(int id, String title, String image, double price) {
    	this.id = id;
    	this.title = title;
    	this.image = image;
    	this.price = price;
    }
    public Product(int id, String title, String description, String image, double price) {
    	this.id = id;
    	this.title = title;
    	this.description = description;
    	this.image = image;
    	this.price = price;
    }
    public Product(int id, String title,String image, String address) {
    	this.id = id;
    	this.title = title;
    	this.image = image;
    	this.address = address;
    }
    public Product(int id, String catname,String image) {
    	this.id = id;
    	this.catname = catname;
    	this.image = image;
    }
    public Product(int id, String catname,String image, int discount) {
    	this.id = id;
    	this.catname = catname;
    	this.image = image;
    	this.discount = discount;
    }
    public Product(int id, double price, double price_net, String title, String description, String manufacturer,
    		int article_number, String guarantee, String delivery_time, String availability, String image) {
    	this.id = id;
    	this.price = price;
    	this.price_net = price_net;
    	this.title = title;
    	this.description = description;
    	this.manufacturer = manufacturer;
    	this.article_number = article_number;
    	this.guarantee = guarantee;
    	this.delivery_time = delivery_time;
    	this.availability = availability;
    	this.image = image;
    }
    
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public int getDiscount() {
        return discount;
    }
    public void setDiscount(int discount) {
        this.discount = discount;
    }
    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image=image;
    }
    public boolean getHotDeal() {
        return hot_new;
    }
    public void setHotDeal(boolean hot_deal) {
        this.hot_deal=hot_deal;
    }
    public boolean getHotNew() {
        return hot_new;
    }
    public void setHotNew(boolean hot_new) {
        this.hot_new=hot_new;
    }
    public boolean getHotBest() {
        return hot_best;
    }
    public void setHotBest(boolean hot_best) {
        this.hot_best=hot_best;
    }
    public boolean getLatestReview() {
        return latest_review;
    }
    public void getLatestReview(boolean latest_review) {
        this.latest_review=latest_review;
    }
    public String getAddress() {
    	return address;
    }
    public void setRegion(String address) {
    	this.address = address;
    }
    public String getCategory() {
    	return category;
    }
    public void setCategory(String category) {
    	this.category = category;
    }
    public String getCategoryName() {
    	return catname;
    }
    public void setCategoryName(String catname) {
    	this.catname = catname;
    }
    public double getPriceNet() {
    	return price_net;
    }
    public void setPriceNet(double price_net) {
    	this.price_net = price_net;
    }
    public int getArticleNumber() {
    	return article_number;
    }
    public void setArticleNumber(int article_number) {
    	this.article_number = article_number;
    }
    public String getGuarantee() {
    	return guarantee;
    }
    public void setGuarantee(String guarantee) {
    	this.guarantee = guarantee;
    }
    public String getSpecification() {
    	return specification;
    }
    public void setSpecification(String specification) {
    	this.specification = specification;
    }
    public String getDeliveryTime() {
    	return delivery_time;
    }
    public void setDeliveryTime(String delivery_time) {
    	this.delivery_time = delivery_time;
    }
    public String getAvailability() {
    	return availability;
    }
    public void setAvailability(String availability) {
    	this.availability = availability;
    }
    public String getManufacturer() {
    	return manufacturer;
    }
    public void setManufacturer(String manufacturer) {
    	this.manufacturer = manufacturer;
    }
    
    
}