package Class.DAO;

import Class.Entity.Product;

import java.util.List;

public interface ProductDAO {

    public void addProduct(Product product);
    public void editProduct(Product product);
    public void deleteProduct(Product product);
    public Product findOneById(int id_product);
    public List<Product> findAll();



}
