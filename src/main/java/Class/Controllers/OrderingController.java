package Class.Controllers;

import Class.Entity.Ordering;
import Class.Entity.Product;
import Class.Services.CustomerSer;
import Class.Services.OrderingSer;
import Class.Services.ProductSer;
import Class.Validations.CustomersVal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.*;


@Controller
public class OrderingController {
    @Autowired
    private ProductSer productSer;
    @Autowired
    private CustomerSer customerSer;
    @Autowired
    private OrderingSer orderingSer;
    @Autowired
    private CustomersVal customersVal;


    //Add Order
    @RequestMapping(value = "/order", method = RequestMethod.POST)
    public String addToBasket(HttpSession httpSession, @ModelAttribute Ordering ordering, Principal principal) {
        List<Product> productList = (List<Product>) httpSession.getAttribute("products");
        Date date = Calendar.getInstance().getTime();
        if (productList == null) {
            productList = new ArrayList<Product>();
        }
        ordering.setDate(date);
        ordering.setProductList(productList);
        ordering.setCustomer(customerSer.findOneById(Integer.parseInt(principal.getName())));
        for (Product o : productList) {
            ordering.setSum(ordering.getSum() + o.getPrice_product());
        }
        if (productList.isEmpty()) {
            return "redirect:/productCard";
        } else {
            orderingSer.add(ordering);
            httpSession.removeAttribute("products");
            return "redirect:/oneOrder";
        }

    }
// pages that appears when do order
    @RequestMapping(value = "/oneOrder", method = RequestMethod.GET)
    private String oneOrder() {
        return "views-ordering-oneOrder";
    }
//All Order
    @RequestMapping(value = "/AllOrder", method = RequestMethod.GET)
    private String oneOrder(Model model) {
        List<Ordering> orderingList = orderingSer.findAll();
        model.addAttribute("order", orderingList);
        return "views-ordering-AllOrder";
    }
//delete order
    @RequestMapping(value = "/order/delete/{id_order}", method = RequestMethod.POST)
    public String deleteOrder(@PathVariable String id_order) {
        orderingSer.delete(Integer.parseInt(id_order));
        return "redirect:/AllOrder";
    }
}
