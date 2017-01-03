package Class.Entity;

import javax.persistence.*;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Entity
public class Ordering {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id_order;
    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    @Column
    private double sum;
    @ManyToOne(fetch = FetchType.EAGER)
    Customer customer;
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    @JoinTable(name = "product_ordering", joinColumns = @JoinColumn(name = "id_order"), inverseJoinColumns = @JoinColumn(name = "id_product"))
    List<Product> productList;

    public Ordering() {
        this.date = Calendar.getInstance().getTime();
    }

    public Ordering(Date date, double sum, Customer customer) {
        this.date = date;
        this.sum = sum;
        this.customer = customer;
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

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
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

                ", date=" + date +
                ", sum=" + sum +
                ", customer=" + customer +
                '}';
    }
}

