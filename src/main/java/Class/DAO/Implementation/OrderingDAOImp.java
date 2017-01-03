package Class.DAO.Implementation;

import Class.DAO.OrderingDAO;
import Class.Entity.Ordering;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class OrderingDAOImp implements OrderingDAO {
    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;
    @Override
    @Transactional
    public void addOrdering(Ordering ordering) {
        entityManager.persist(ordering);
    }
    @Override
    @Transactional
    public void editOrdering(Ordering ordering) {
        entityManager.merge(ordering);
    }
    @Override
    @Transactional
    public void deleteOrdering(Ordering ordering) {
        entityManager.remove(entityManager.contains(ordering) ? ordering : entityManager.merge(ordering));

    }
    @Override
    @Transactional
    public Ordering findOneById(int id_order) {
        return entityManager.find(Ordering.class,id_order);
    }
    @Override
    @Transactional
    public List<Ordering> findAll() {
        return entityManager.createQuery("from Ordering ").getResultList();
    }
}
