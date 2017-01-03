package Class.DAO;


import Class.Entity.Ordering;

import java.util.List;

public interface OrderingDAO {

     void addOrdering(Ordering ordering);
     void editOrdering(Ordering ordering);
     void deleteOrdering(Ordering ordering);
     Ordering findOneById(int id_order);
     List<Ordering> findAll();
}
