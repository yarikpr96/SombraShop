package Class.Services;

import Class.DTO.ProductDTO;
import Class.Entity.Product;

import java.util.List;

public interface ProductSer {
    // public void add(String name_product, String brand, double price_product, String description_product);
    public void add(Product product);

    public void delete(int id_product);

    public Product findOneById(int id_product);
    public ProductDTO findOne(int id_product);

    public List<Product> findAll();
    public List<ProductDTO> findAllDto();


    public void edit(Product product);
}
