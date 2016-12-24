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

//    public void add(String name_product, String brand, double price_product, String description_product) {
//        Product product = new Product();
//        product.setName_product(name_product);
//        product.setBrand(brand);
//        product.setPrice_product(price_product);
//        product.setDescription_product(description_product);
//        productDAO.addProduct(product);
//
//    }
    public void add(Product product){
        productDAO.addProduct(product);
    }
    public void edit(Product product){productDAO.editProduct(product);}
//    public void adit(int id_product, String name_product, String brand, double price_product, String description_product) {
//        Product product = productDAO.findOneById(id_product);
//        if (name_product != null) {
//            product.setName_product(name_product);
//        }
//        if (brand != null) {
//            product.setName_product(brand);
//        }
//
//        product.setPrice_product(price_product);
//
//
//        if (description_product != null) {
//            product.setDescription_product(description_product);
//        }
//        productDAO.editProduct(product);
//    }

    public void delete(int id_product) {
        Product product = productDAO.findOneById(id_product);
        productDAO.deleteProduct(product);

    }

    public Product findOneById(int id_product) {
        return productDAO.findOneById(id_product);
    }

    @Override
    public ProductDTO findOne(int id_product) {
        Product product = productDAO.findOneById(id_product);
        ProductDTO productDTO= new ProductDTO();
        productDTO.setName_product(product.getName_product());
        productDTO.setBrand(product.getBrand());
        productDTO.setPrice_product(product.getPrice_product());
        productDTO.setDescription_product(product.getDescription_product());
        String image = Base64.getEncoder().encodeToString(product.getImage());
        productDTO.setImage(image);
        return productDTO;

    }

    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public List<ProductDTO> findAllDto() {
        List<ProductDTO>productDTOs= new ArrayList<>();
        List<Product>productList = productDAO.findAll();

        for (Product product:productList){
            ProductDTO productDTO= new ProductDTO();
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
}
