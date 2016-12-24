<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div style="height: 120%">
    <div style="text-align: center;font-size: 24px;">


        <form action="/newProduct?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
            <input type="text" name="name_product"> name
            <input type="text" name="brand"> brand
            <input type="number" name="price_product"> price
            <input type="text" name="description_product">description
            <input type="file" name="image">Image
            <button type="submit">Submit</button>
        </form>


    </div>
</div>
