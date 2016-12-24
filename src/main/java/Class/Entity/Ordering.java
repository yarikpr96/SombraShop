package Class.Entity;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class Ordering {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id_order;
    @Column
    @Temporal(TemporalType.DATE)
    private Date date;

    @ManyToOne(fetch = FetchType.LAZY)
    Customer customer;
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "product_ordering", joinColumns = @JoinColumn(name = "id_order"), inverseJoinColumns = @JoinColumn(name = "id_product"))
    List<Product> productList;

    public Ordering() {
    }

    public Ordering(Date date) {
        this.date = date;

    }

    public int getId_order() {
        return id_order;
    }

    public void setId_order(int id_order) {
        this.id_order = id_order;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }


    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }

    @Override
    public String toString() {
        return "Ordering{" +
                "id_order=" + id_order +
                ", date=" + date +
                '}';
    }
}

