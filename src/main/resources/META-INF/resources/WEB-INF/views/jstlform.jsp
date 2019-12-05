<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<body>
<div>
    <form:form action="/createStudent" method="post" modelAttribute="std">
        <form:hidden path="id"/>
        Name: <form:input path="name"/>
        Description: <form:input path="description"/>
        <form:input path="submit" value="Save"/>
    </form:form>
</div>
</body>
</html>