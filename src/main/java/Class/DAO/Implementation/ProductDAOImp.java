package Class.DAO.Implementation;

import Class.DAO.ProductDAO;
import Class.Entity.Product;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ProductDAOImp implements ProductDAO {

    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Override
    @Transactional
    public void addProduct(Product product) {
        entityManager.persist(product);

    }

    @Override
    @Transactional
    public void editProduct(Product product) {
        entityManager.merge(product);

    }

    @Transactional
    public void deleteProduct(Product product) {
        entityManager.remove(entityManager.contains(product) ? product : entityManager.merge(product));

    }

    @Override
    @Transactional
    public Product findOneById(int id_product) {
        return entityManager.find(Product.class, id_product);
    }

    @Override
    @Transactional
    public List<Product> findAll() {
        return entityManager.createQuery("from Product ").getResultList();
    }


}