<%--
  Created by IntelliJ IDEA.
  User: Tyler
  Date: 2/9/2017
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<body>

<div class="container">

    <h1>Error Page</h1>

    <p>${exception.message}</p>
    <!-- Exception: ${exception.message}.
		  	<c:forEach items="${exception.stackTrace}" var="stackTrace">
				${stackTrace}
			</c:forEach>
	  	-->

</div>

</body>
</html>