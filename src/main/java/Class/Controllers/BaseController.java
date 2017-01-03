package Class.Controllers;

import Class.DTO.ProductDTO;
import Class.Entity.Customer;
import Class.Send.Mail;
import Class.Services.CustomerSer;
import Class.Services.OrderingSer;
import Class.Services.ProductSer;
import Class.Validations.CustomersVal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;


@Controller
public class BaseController {


    @Autowired
    private ProductSer productSer;
    @Autowired
    private CustomerSer customerSer;
    @Autowired
    private OrderingSer orderingSer;
    @Autowired
    private CustomersVal customersVal;

    //початкова сторінка
    @RequestMapping(value = "/", method = RequestMethod.GET)
    private String home() {
        return "views-base-home";
    }

    // метод гет для зворотнього зв’язку
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    private String contact() {
        return "views-base-contact";
    }

    //зворотній зв’язок
    @RequestMapping(value = "/contact", method = RequestMethod.POST)
    private String contact(@RequestParam("email") String email, @RequestParam("name") String name, @RequestParam("message") String message) {
        Mail mailSender = new Mail("super.photo-art1@yandex.ru", "qweqweqwe123");
        mailSender.send("У вас лист від " + name, email + " " + message, "super.photo-art1@yandex.ru", "yaroslav0396@ukr.net");
        return "redirect:/";
    }

    //login
    @RequestMapping(value = "/loginpage", method = RequestMethod.GET)
    public String login() {
        return "views-base-login";
    }

    //registration get
    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("customer", new Customer());
        return "views-base-registration";
    }

    //registration post
    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute Customer customer, BindingResult bindingResult) {
        customersVal.validate(customer, bindingResult);
        if (bindingResult.hasErrors()) {
            return "views-base-registration";
        } else {
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
            customer.setPassword(bCryptPasswordEncoder.encode(customer.getPassword()));
            customerSer.add(customer);
            return "redirect:/";
        }
    }

    //search get
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    private String searchh() {
        return "views-base-searchh";
    }

    //search post
    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String search(Model model, @RequestParam("name_product") String name_product) {
        List<ProductDTO> productDTOList = productSer.findAllDto();
        List<ProductDTO> productDTOs = new ArrayList<>();
        String error = "Такого продукта не існує";
        for (ProductDTO dto : productDTOList) {
            if (dto.getName_product().equals(name_product)) {
                productDTOs.add(dto);
            }
        }
        if (productDTOs.isEmpty()) {
            model.addAttribute("error", error);
        } else {
            model.addAttribute("product", productDTOs);
        }


        return "views-base-searchh";
    }


}
