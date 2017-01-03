package Class.DAO.Implementation;

import Class.DAO.CustomerDAO;
import Class.Entity.Customer;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class CustomerDAOImp implements CustomerDAO {
    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Transactional
    public void addCustomer(Customer customer) {
        entityManager.persist(customer);
    }

    @Transactional
    public void editCustomer(Customer customer) {
        entityManager.merge(customer);
    }

    @Transactional
    public void deleteCustomer(Customer customer) {
        entityManager.remove(entityManager.contains(customer) ? customer : entityManager.merge(customer));

    }

    @Transactional
    public Customer findOneById(int id_customer) {
        return entityManager.find(Customer.class, id_customer);
    }

    @Transactional
    public List<Customer> findAll() {
        return entityManager.createQuery("from Customer ").getResultList();
    }


    @Transactional
    public Customer findUserByLogin(String login) {
        return (Customer) entityManager.createQuery(" FroM Customer u WHERE u.email LIKE :email OR u.mobile_phone LIKE :mobile_phone").setParameter("email", login).setParameter("mobile_phone", login).getSingleResult();

    }
}