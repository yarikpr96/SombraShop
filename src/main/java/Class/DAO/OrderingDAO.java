package Class.DAO;


import Class.Entity.Ordering;
import Class.Entity.Ordering;

import java.util.List;

public interface OrderingDAO {

    public void addOrdering(Ordering ordering);
    public void editOrdering(Ordering ordering);
    public void deleteOrdering(Ordering ordering);
    public Ordering findOneById(int id_order);
    public List<Ordering> findAll();
}
