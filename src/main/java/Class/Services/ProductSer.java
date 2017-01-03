package Class.Services;

import Class.DTO.ProductDTO;
import Class.Entity.Product;

import java.util.List;

public interface ProductSer {
    void add(Product product);

    void delete(int id_product);

    Product findOneById(int id_product);

    ProductDTO findOne(int id_product);

    List<Product> findAll();

    List<ProductDTO> findAllDto();

    void edit(Product product);
}
