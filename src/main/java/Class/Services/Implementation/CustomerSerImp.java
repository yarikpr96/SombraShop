package Class.Services.Implementation;

import Class.DAO.CustomerDAO;
import Class.Entity.Customer;
import Class.Services.CustomerSer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.persistence.NoResultException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Service
public class CustomerSerImp implements CustomerSer, UserDetailsService {
    @Autowired
    private CustomerDAO customerDAO;

    public void add(String name, String surname, String email, String mobile_phone,String  password) {
        Customer customer = new Customer();
        customer.setName(name);
        customer.setSurname(surname);
        customer.setEmail(email);
        customer.setMobile_phone(mobile_phone);
        customer.setPassword(password);
        customerDAO.addCustomer(customer);
    }

    public void edit(int id_customer, String name, String surname, String email, String mobile_phone,String  password) {
        Customer customer = customerDAO.findOneById(id_customer);
        if (name != null) {
            customer.setName(name);
        }
        if (surname != null) {
            customer.setName(surname);
        }
        if (email != null) {
            customer.setName(email);
        }
        if (mobile_phone != null) {
            customer.setMobile_phone(mobile_phone);
        }
        if (password != null) {
            customer.setMobile_phone(password);
        }
        customerDAO.editCustomer(customer);
    }

    public void delete(int id_customer) {
        Customer customer = customerDAO.findOneById(id_customer);
        customerDAO.deleteCustomer(customer);
    }

    public Customer findOneById(int id_customer) {
        return customerDAO.findOneById(id_customer);
    }

    public List<Customer> findAll() {
        return customerDAO.findAll();
    }

    public void add(Customer customer) {
        customerDAO.addCustomer(customer);
    }


    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        Customer customer;

        try {
            customer=customerDAO.findUserByLogin(login);
        } catch (NoResultException e) {
            return null;
        }
        Collection<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        return new org.springframework.security.core.userdetails.User(String.valueOf(customer.getId_customer()), customer.getPassword(),authorities);
    }
}
