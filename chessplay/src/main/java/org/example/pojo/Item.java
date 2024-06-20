package org.example.pojo;

import lombok.Setter;

public class Item {
    private int id;
    private String name;
    private String price;
    private String description;
    private String product_image;

    public Item(){}

    public Item(int id, String name, String price, String description, String product_image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.product_image = product_image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProduct_image() {
        return product_image;
    }

    public void setProduct_image(String product_image) {
        this.product_image = product_image;
    }

    public String toString(){
        return "Item [id=" + id + ", name=" + name + ", price=" + price + ", description=" + description;
    }
}



