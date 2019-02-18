package ssm.po;

public class Orders {
    private Integer id;

	private Integer table_id;

	private Integer coutom_num;

	private Integer waiter_id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	public Integer getTable_id() {
		return table_id;
	}

	public void setTable_id(Integer table_id) {
		this.table_id = table_id;
	}

	public Integer getCoutom_num() {
		return coutom_num;
	}

	public void setCoutom_num(Integer coutom_num) {
		this.coutom_num = coutom_num;
	}

	public Integer getWaiter_id() {
		return waiter_id;
	}

	public void setWaiter_id(Integer waiter_id) {
		this.waiter_id = waiter_id;
	}


}