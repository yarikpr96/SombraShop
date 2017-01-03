package Class.Services.Implementation;

import Class.DAO.ProductDAO;
import Class.DTO.ProductDTO;
import Class.Entity.Product;
import Class.Services.ProductSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

@Service
public class ProductSerImp implements ProductSer {

    @Autowired
    private ProductDAO productDAO;

    @Override
    public void add(Product product) {
        productDAO.addProduct(product);
    }

    @Override
    public void delete(int id_product) {
        Product product = productDAO.findOneById(id_product);
        productDAO.deleteProduct(product);
    }

    @Override
    public Product findOneById(int id_product) {
          return productDAO.findOneById(id_product);
    }

    @Override
    public ProductDTO findOne(int id_product) {
        Product product = productDAO.findOneById(id_product);
        ProductDTO productDTO = new ProductDTO();
        productDTO.setName_product(product.getName_product());
        productDTO.setBrand(product.getBrand());
        productDTO.setPrice_product(product.getPrice_product());
        productDTO.setDescription_product(product.getDescription_product());
        String image = Base64.getEncoder().encodeToString(product.getImage());
        productDTO.setImage(image);
        return productDTO;
    }

    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public List<ProductDTO> findAllDto() {
        List<ProductDTO> productDTOs = new ArrayList<>();
        List<Product> productList = productDAO.findAll();

        for (Product product : productList) {
            ProductDTO productDTO = new ProductDTO();
            productDTO.setId_product(product.getId_product());
            productDTO.setName_product(product.getName_product());
            productDTO.setBrand(product.getBrand());
            productDTO.setPrice_product(product.getPrice_product());
            productDTO.setDescription_product(product.getDescription_product());
            String image = Base64.getEncoder().encodeToString(product.getImage());
            productDTO.setImage(image);
            productDTOs.add(productDTO);
        }

        return productDTOs;

    }

    @Override
    public void edit(Product product) {
        productDAO.editProduct(product);
    }

 }



