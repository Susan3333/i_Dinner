package ssm.po;

public class Dish {
    private Integer id;

    private String name;

	// private Float normalPrice;
	private Float normal_price;
    private String type;

	// private Float discountPrice;
	private Float discount_price;

    private String pitcure;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

	// public Float getNormalPrice() {
	// return normalPrice;
	// }
	//
	// public void setNormalPrice(Float normalPrice) {
	// this.normalPrice = normalPrice;
	// }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

	// public Float getDiscountPrice() {
	// return discountPrice;
	// }
	//
	// public void setDiscountPrice(Float discountPrice) {
	// this.discountPrice = discountPrice;
	// }

    public String getPitcure() {
        return pitcure;
    }

    public void setPitcure(String pitcure) {
        this.pitcure = pitcure == null ? null : pitcure.trim();
    }

	public Float getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(Float discount_price) {
		this.discount_price = discount_price;
	}

	public Float getNormal_price() {
		return normal_price;
	}

	public void setNormal_price(Float normal_price) {
		this.normal_price = normal_price;
	}
}