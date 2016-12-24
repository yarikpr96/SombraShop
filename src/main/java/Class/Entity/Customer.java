package Class.Entity;

import javax.persistence.*;
import java.util.List;

@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id_customer;
    @Column(nullable = false)
    private String name ;
    @Column(nullable = false)
    private String surname;
    @Column(nullable = false,unique = true)
    private String email;
    @Column(nullable = false,unique = true)
    private String mobile_phone;
    @Column(nullable = false)
    private String password ;
    @OneToMany(fetch = FetchType.LAZY,mappedBy = "customer")
    List<Ordering>orderingList ;

    public Customer() {
    }

    public Customer(String name, String surname, String email, String mobile_phone, String password) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.mobile_phone = mobile_phone;
        this.password = password;
    }

    public int getId_customer() {
        return id_customer;
    }

    public void setId_customer(int id_customer) {
        this.id_customer = id_customer;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile_phone() {
        return mobile_phone;
    }

    public void setMobile_phone(String mobile_phone) {
        this.mobile_phone = mobile_phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
