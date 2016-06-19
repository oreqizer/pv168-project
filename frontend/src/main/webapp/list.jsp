<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <body>

    <table border="2">
        <thead>
        <tr>
            <th>ID</th>
            <th>slots</th>
            <th>cooling</th>
            <th>price</th>
        </tr>
        </thead>
        <c:forEach items="${computers}" var="computer">
            <tr>
                <td><c:out value="${computer.id}"/></td>
                <td><c:out value="${computer.slots}"/></td>
                <td><c:out value="${computer.cooling}"/></td>
                <td><c:out value="${computer.price}"/></td>
                <td>
                    <form
                            method="post"
                            action="${pageContext.request.contextPath}/computers/delete?id=${computer.id}"
                            style="margin-bottom: 0;">
                        <input type="submit" value="Delete">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <c:if test="${not empty error}">
        <div style="background: indianred; padding: 10px">
            <c:out value="${error}"/>
        </div>
    </c:if>

    <h2>Enter a computer</h2>
    <form action="${pageContext.request.contextPath}/computers/add" method="post">
        <table>
            <tr>
                <th>Slots:</th>
                <td><input type="text" name="slots" value="<c:out value='${param.slots}'/>"/></td>
            </tr>
            <tr>
                <th>Cooling:</th>
                <td><input type="text" name="cooling" value="<c:out value='${param.cooling}'/>"/></td>
            </tr>
            <tr>
                <th>Price:</th>
                <td><input type="text" name="price" value="<c:out value='${param.price}'/>"/></td>
            </tr>
        </table>
        <input type="Submit" value="Enter" />
    </form>

    <h2>Update a computer</h2>
    <form action="${pageContext.request.contextPath}/computers/update" method="post">
        <table>
            <tr>
                <th>ID:</th>
                <td><input type="text" name="id" value="<c:out value='${param.id}'/>"/></td>
            </tr>
            <tr>
                <th>Slots:</th>
                <td><input type="text" name="slots" value="<c:out value='${param.slots}'/>"/></td>
            </tr>
            <tr>
                <th>Cooling:</th>
                <td><input type="text" name="cooling" value="<c:out value='${param.cooling}'/>"/></td>
            </tr>
            <tr>
                <th>Price:</th>
                <td><input type="text" name="price" value="<c:out value='${param.price}'/>"/></td>
            </tr>
        </table>
        <input type="Submit" value="Enter" />
    </form>

    </body>
</html>