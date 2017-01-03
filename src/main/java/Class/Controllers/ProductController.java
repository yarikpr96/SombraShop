package Class.Controllers;

import Class.DTO.ProductDTO;
import Class.Entity.Product;
import Class.Services.CustomerSer;
import Class.Services.OrderingSer;
import Class.Services.ProductSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;



@Controller
public class ProductController {
    @Autowired
    private ProductSer productSer;
    @Autowired
    private CustomerSer customerSer;
    @Autowired
    private OrderingSer orderingSer;

//Всі продукти
    @RequestMapping(value = "/allProduct", method = RequestMethod.GET)
    private String allProduct(Model model) {
        List<ProductDTO> productList = productSer.findAllDto();
        model.addAttribute("product", productList);
        return "views-product-allProduct";


    }
// додати продукт гет
    @RequestMapping(value = "/newProduct", method = RequestMethod.GET)
    private String createNewProduct() {
        return "views-product-newProduct";
    }

    // додати продукт пост
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
    // змінити продукт гет
    @RequestMapping(value = "/productEdit/{id_product}", method = RequestMethod.GET)
    public String dit(@PathVariable String id_product, Model model) {
        model.addAttribute("product", productSer.findOneById(Integer.parseInt(id_product)));
        return "views-product-productEdit";
    }
    // змінити продукт пост
    @RequestMapping(value = "/productEdit", method = RequestMethod.POST)
    public String edit(@RequestParam(value = "id_product") int id_product,
                       @RequestParam(value = "name_product") String name_product,
                       @RequestParam(value = "brand") String brand,
                       @RequestParam(value = "price_product") double price_product,
                       @RequestParam(value = "description_product") String description_product,
                       @RequestParam("image") MultipartFile multipartFile) {
        Product product = productSer.findOneById(id_product);
        product.setName_product(name_product);
        product.setBrand(brand);
        product.setPrice_product(price_product);
        product.setDescription_product(description_product);
        try {
            product.setImage(multipartFile.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        productSer.edit(product);
        return "redirect:/allProduct";
    }
//вилдалити продукт
    @RequestMapping(value = "/product/delete/{id_product}", method = RequestMethod.POST)
    public String delete(@PathVariable String id_product) {
        productSer.delete(Integer.parseInt(id_product));
        return "redirect:/allProduct";
    }
//Сторінка з продуктом
    @RequestMapping(value = "/productPage/{id_product}", method = RequestMethod.GET)
    public String productPage(@PathVariable String id_product, Model model) {
        ProductDTO product = productSer.findOne(Integer.parseInt(id_product));
        model.addAttribute("product", product);
        return "views-product-productPage";
    }
//додати в корзину
    @RequestMapping(value = "/product/{id_product}", method = RequestMethod.GET)
    public String addToBasket(HttpSession httpSession, @PathVariable String id_product) {
        List<Product> products = (List<Product>) httpSession.getAttribute("products");
        Product product = productSer.findOneById(Integer.parseInt(id_product));
        if (products == null) {
            products = new ArrayList<Product>();
        }
        products.add(product);
        System.out.println(products);
        httpSession.setAttribute("products", products);
        return "redirect:/allProduct";
    }
    //додати в корзину за допомогою ajax
    @RequestMapping(value = "/addToCard", method = RequestMethod.GET)
    public
    @ResponseBody
    String addToCard(@RequestParam("id_product") String id_product, HttpSession httpSession) {
        List<Product> products = (List<Product>) httpSession.getAttribute("products");
        Product product = productSer.findOneById(Integer.parseInt(id_product));
        if (products == null) {
            products = new ArrayList<Product>();
        }
        products.add(product);
        System.out.println(products);
        httpSession.setAttribute("products", products);
        return "";

    }
//вивести корзину замовлень
    @RequestMapping(value = "/productCard", method = RequestMethod.GET)
    private String addToBasket(HttpSession httpSession, Model model) {
        List<Product> products = (List<Product>) httpSession.getAttribute("products");
        if (products == null) {
            products = new ArrayList<Product>();
        }
        double d = 0;
        for (Product p : products) {
            d += p.getPrice_product();
        }
        model.addAttribute("price", d);
        model.addAttribute("products", products);
        return "views-product-productCard";
    }
//Очистити всю корзину
    @RequestMapping(value = "/productCardDell", method = RequestMethod.POST)
    public String dellBasket(HttpSession httpSession) {
        List<Product> products = (List<Product>) httpSession.getAttribute("products");
        httpSession.removeAttribute("products");
        return "redirect:/allProduct";
    }
    //видалити з корзини
//    @RequestMapping(value = "/productCardDel/{id_product}", method = RequestMethod.POST)
//    public String dellBasketid(HttpSession httpSession, @PathVariable String id_product) {
//        List<Product> products = (List<Product>) httpSession.getAttribute( "products" );
//        Product pizzas1 = productSer.findOneById( Integer.parseInt( id_product ) );
//        Iterator<Product> iter = products.iterator();
//        int count = 0;
//        while (iter.hasNext()) {
//            if (iter.next().getId_product() == pizzas1.getId_product() && (count == 0)) {
//                iter.remove();
//                count++;
//            }
//            products = (List<Product>) httpSession.getAttribute( "products" );
//        }
//        return "redirect:/productCard";
//    }
    //видалити з корзини за допомогою Ajax
    @RequestMapping(value = "/delFromCard", method = RequestMethod.GET)
    public
    @ResponseBody
    String deleteFromCard(@RequestParam("id_product") String id_product, HttpSession httpSession) {
        List<Product> products = (List<Product>) httpSession.getAttribute("products");
        Product pizzas1 = productSer.findOneById(Integer.parseInt(id_product));
        Iterator<Product> iter = products.iterator();
        int count = 0;
        while (iter.hasNext()) {
            if (iter.next().getId_product() == pizzas1.getId_product() && (count == 0)) {
                iter.remove();
                count++;
            }
            products = (List<Product>) httpSession.getAttribute("products");
        }
        return "";
    }



}