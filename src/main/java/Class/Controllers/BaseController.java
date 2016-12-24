package Class.Controllers;

import Class.Entity.Customer;
import Class.Entity.Ordering;
import Class.Entity.Product;

import Class.Services.CustomerSer;
import Class.Services.OrderingSer;
import Class.Services.ProductSer;
;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
public class BaseController {


    @Autowired
    private ProductSer productSer;
    @Autowired
    private CustomerSer customerSer;
    @Autowired
    private OrderingSer orderingSer;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    private String home() {
        return "views-base-home";
    }


    @RequestMapping(value = "/allProduct", method = RequestMethod.GET)
    private String allProduct(Model model) {
        List<Product> productList = productSer.findAll();
        model.addAttribute("product", productList);
        return "views-product-allProduct";


    }

    @RequestMapping(value = "/newProduct", method = RequestMethod.GET)
    private String createNewProduct() {
        return "views-product-newProduct";
    }


    @RequestMapping(value = "/newProduct", method = RequestMethod.POST)
    public String createProduct(@RequestParam(value = "name_product") String name_product,
                                @RequestParam(value = "brand") String brand,
                                @RequestParam(value = "price_product") double price_product,
                                @RequestParam(value = "description_product") String description_product,
                                @RequestParam("image") MultipartFile multipartFile) {
        Product product = new Product();
        product.setName_product(name_product);
        product.setBrand(brand);
        product.setPrice_product(price_product);
        product.setDescription_product(description_product);
        try {
            product.setImage(multipartFile.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        productSer.add(product);
        return "redirect:/allProduct";
    }

//    @RequestMapping(value = "/newProduct", method = RequestMethod.POST)
//    public String createProduct(@ModelAttribute Product product) {
//        productSer.add(product);
//        return "redirect:/allProduct";
//    }


//
//    @RequestMapping(value = "/loginpage", method = RequestMethod.GET)
//    public String login() {
//        return "login";
//    }
//
//    @RequestMapping(value = "/registration", method = RequestMethod.GET)
//    public String registration(Model model) {
//        model.addAttribute("customer", new Customer());
//        return "registration";
//    }
//
//    @RequestMapping(value = "/registration", method = RequestMethod.POST)
//    public String registration(@ModelAttribute Customer customer) {
//        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//        customer.setPassword(bCryptPasswordEncoder.encode(customer.getPassword()));
//        customerSer.add(customer);
//        return "redirect:/";
//    }
//
//
//
//    @RequestMapping(value = "/productEdit/{id_product}", method = RequestMethod.GET)
//    public String dit(@PathVariable String id_product, Model model){
//        model.addAttribute("product",productSer.findOneById(Integer.parseInt(id_product)));
//        return "productEdit";
//    }
//
//    @RequestMapping(value = "/productEdit", method = RequestMethod.POST)
//    public String edit(@ModelAttribute Product product){
//        productSer.adit(product);
//        return "redirect:/allProduct";
//    }
//
//    @RequestMapping(value = "/product/delete/{id_product}", method = RequestMethod.POST)
//    public String delete(@PathVariable String id_product){
//        productSer.delete(Integer.parseInt(id_product));
//        return "redirect:/allProduct";
//    }
}
