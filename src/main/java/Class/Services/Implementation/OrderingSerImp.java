package Class.Services.Implementation;

import Class.DAO.OrderingDAO;
import Class.Entity.Ordering;
import Class.Services.OrderingSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderingSerImp implements OrderingSer {
    @Autowired
    private OrderingDAO orderingDAO;

    @Override
    public void add(Ordering ordering) {
        orderingDAO.addOrdering(ordering);
    }

    @Override
    public void edit(Ordering ordering) {
        orderingDAO.editOrdering(ordering);

    }

    @Override
    public void delete(int id_order) {
        Ordering ordering = orderingDAO.findOneById(id_order);
        orderingDAO.deleteOrdering(ordering);

    }

    @Override
    public Ordering findOneById(int id_order) {
        return orderingDAO.findOneById(id_order);
    }

    @Override
    public List<Ordering> findAll() {
        return orderingDAO.findAll();
    }
}
