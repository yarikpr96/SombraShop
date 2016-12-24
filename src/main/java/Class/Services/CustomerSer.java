package Class.Services;

import Class.Entity.Customer;

import java.util.List;

public interface CustomerSer {
    public void add(String name, String surname, String email, String mobile_phone, String password);
    public void adit(int id_customer, String name, String surname, String email, String mobile_phone, String password);
    public void delete(int id_customer);
    public Customer findOneById(int id_customer);
    public List<Customer> findAll();
    public void add(Customer customer);
}
