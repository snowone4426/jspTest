package dto;
import java.io.Serializable;


public class Product implements Serializable {
	private static final long serialVersionUID= 1L;

	private String productId;
	private String pname;
	private Integer unitPrice;
	private String description;
	private String manufacturer; // 제조사
	private String category;
	private long unitsInstock;
	private String condition; // 신상품 or 중고품 or 재생품
	private String productImage;

	public Product() {
		super();
	}
	public Product(String id, String name, Integer price) {
		this.productId = id;
		this.pname = name;
		this.unitPrice = price;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitsInstock() {
		return unitsInstock;
	}
	public void setUnitsInstock(long unitsInstock) {
		this.unitsInstock = unitsInstock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
}
