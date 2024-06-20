package org.example.pojo;

public class purchase_item {
    private String id;
    private String name;
    private int price;
    private String description;
    private String user_id;

    public purchase_item(String id, String name, int price, String description,  String user_id) {
        this.id = id;
        this.name = name;
        this.user_id = user_id;
        this.price = price;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
}
