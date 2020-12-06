<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3 class="mt-4">Your Cart</h3>
<hr>
<c:choose>
    <c:when test="${cart==null}">
        <h3 class="text-danger">No item in your shopping cart</h3>
    </c:when>
    <c:otherwise>
        <table class="table table-striped table-bordered w-100">
            <thead>
            <th>#</th>
            <th>Description</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total</th>
        </thead>
        <tbody>
            <c:forEach items="${cart.lineItems}" var="lineItem" varStatus="vs">
                <tr>
                    <td>${vs.count}</td>
                    <td>${lineItem.product.productCode} - ${lineItem.product.productName}</td>
                    <td>${lineItem.quantity}</td>
                    <td>${lineItem.product.msrp}</td>
                    <td>${lineItem.quantity * lineItem.product.msrp}</td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="4" style="text-align: right;margin-right: 5px">Total</td>
                <td>${cart.netPrice}</td>
            </tr>
        </tbody>
    </table>
</c:otherwise>
</c:choose>
