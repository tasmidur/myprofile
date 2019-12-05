
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<html lang="en">
<body>
<h2>WELCOME TO HOME</h2>
<h2>THIS IS FROM ICT DEPT.</h2>
<c:forEach items="${std}" var="l">
    <p>Name:${l.name}</p>
</c:forEach>
</body>
</html>