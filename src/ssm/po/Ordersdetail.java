package ssm.po;

public class Ordersdetail {
    private Integer id;

	private Integer orders_id;

	private Integer dish_id;

	private Integer dish_num;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	public Integer getOrders_id() {
		return orders_id;
	}

	public void setOrders_id(Integer orders_id) {
		this.orders_id = orders_id;
	}

	public Integer getDish_id() {
		return dish_id;
	}

	public void setDish_id(Integer dish_id) {
		this.dish_id = dish_id;
	}

	public Integer getDish_num() {
		return dish_num;
	}

	public void setDish_num(Integer dish_num) {
		this.dish_num = dish_num;
	}


}