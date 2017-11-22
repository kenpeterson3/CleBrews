<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/shared/header.jsp" />

<div class="breweryContainer">

	<c:forEach items="${allBreweries}" var="brewery">
	
		
		
		<div class="col-md-4 breweryList">			
			<div class="breweryImage clickHover grow"> 
			<c:url var="breweryLink" value="/breweryDetails/${brewery.id}"></c:url>
			<a href=" <c:out value='${breweryLink}'/> "> <img src="<c:out value='${brewery.breweryLogoUrl}'/>" /> </a></div>
			<div class="breweryLocation">
			
				<c:url var="breweryLink" value="/breweryDetails/${brewery.id}"></c:url>
				<h2> <a href=" <c:out value='${breweryLink}'/> "><c:out value="${brewery.name}"/></a></h2>
				<ul>
					<li> <c:out value="${brewery.address}"/> <c:out value="${brewery.city}"/><br><%--  <c:out value="${brewery.zipcode}"/> --%> </li>
					<li><c:out value="${brewery.phoneNumber }"/></li>
<%-- 					<li><c:out value="${brewery.description }"/></li> --%>
				</ul>
			</div>
		</div>
	</c:forEach>

</div>

<c:import url="/WEB-INF/jsp/shared/footer.jsp" />