package Class.Services;

import Class.Entity.Ordering;

import java.util.Date;
import java.util.List;

public interface OrderingSer {
    public void add(Date date);
    public void adit(int id_order, Date date);
    public void delete(int id_order);
    public  Ordering findOneById(int id_order);
    public List<Ordering> findAll();
}
