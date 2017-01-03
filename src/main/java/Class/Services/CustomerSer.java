package Class.Services;

import Class.Entity.Customer;

import java.util.List;

public interface CustomerSer {
     void add(String name, String surname, String email, String mobile_phone, String password);
     void edit(int id_customer, String name, String surname, String email, String mobile_phone, String password);
     void delete(int id_customer);
     Customer findOneById(int id_customer);
     List<Customer> findAll();
     void add(Customer customer);
}
