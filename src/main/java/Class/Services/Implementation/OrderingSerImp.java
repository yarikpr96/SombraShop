package Class.Services.Implementation;

import Class.DAO.OrderingDAO;
import Class.Entity.Ordering;
import Class.Services.OrderingSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class OrderingSerImp implements OrderingSer {
    @Autowired
    private OrderingDAO orderingDAO;

    public void add(Date date) {
        Ordering ordering = new Ordering();
        ordering.setDate(date);
        orderingDAO.addOrdering(ordering);
    }

    public void adit(int id_order, Date date) {
        Ordering ordering = orderingDAO.findOneById(id_order);
        if (date != null) {
            ordering.setDate(date);
        }
        orderingDAO.editOrdering(ordering);

    }

    public void delete(int id_order) {
        Ordering ordering = orderingDAO.findOneById(id_order);
        orderingDAO.deleteOrdering(ordering);

    }

    public Ordering findOneById(int id_order) {
        return orderingDAO.findOneById(id_order);
    }

    public List<Ordering> findAll() {
        return orderingDAO.findAll();
    }
}
