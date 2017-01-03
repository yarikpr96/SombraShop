package Class.Entity;

import javax.persistence.*;
import java.util.List;

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id_product;
    @Column
    private String name_product;
    @Column
    private String brand;
    @Column
    private double price_product;
    @Column
    private String description_product;
    @Column
    @Lob
    private byte [] image = new byte[1];

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    @JoinTable(name = "product_ordering", joinColumns = @JoinColumn(name = "id_product"), inverseJoinColumns = @JoinColumn(name = "id_order"))
    List<Ordering> orderingList;

    public Product() {
    }

    public Product(String name_product, String brand, double price_product, String description_product, byte[] image) {
        this.name_product = name_product;
        this.brand = brand;
        this.price_product = price_product;
        this.description_product = description_product;
        this.image = image;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public int getId_product() {
        return id_product;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }

    public String getName_product() {
        return name_product;
    }

    public void setName_product(String name_product) {
        this.name_product = name_product;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public double getPrice_product() {
        return price_product;
    }

    public void setPrice_product(double price_product) {
        this.price_product = price_product;
    }

    public String getDescription_product() {
        return description_product;
    }

    public void setDescription_product(String description_product) {
        this.description_product = description_product;
    }

    public List<Ordering> getOrderingList() {
        return orderingList;
    }

    public void setOrderingList(List<Ordering> orderingList) {
        this.orderingList = orderingList;
    }

    @Override
    public String toString() {
        return "Product{" +

                ", name_product='" + name_product + '\'' +
                ", brand='" + brand + '\'' +
                ", price_product=" + price_product +
                '}';
    }
}
