package Class.Services;

import Class.Entity.Ordering;

import java.util.List;

public interface OrderingSer {
    void add(Ordering ordering);

    void edit(Ordering ordering);

    void delete(int id_order);

    Ordering findOneById(int id_order);

    List<Ordering> findAll();
}
