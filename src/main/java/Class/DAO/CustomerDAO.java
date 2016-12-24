package Class.DAO;

import Class.Entity.Customer;

import java.util.List;


public interface CustomerDAO {
    public void addCustomer(Customer customer);
    public void editCustomer(Customer customer);
    public void deleteCustomer(Customer customer);
    public Customer findOneById(int id_customer);
    public List<Customer> findAll();
    public Customer findUserByLogin(String login);
}
