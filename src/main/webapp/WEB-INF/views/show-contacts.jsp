<%@ include file="./header.jspf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3>List of All Contacts</h3>
<hr>
<div class="row">
	<c:forEach items="${requestScope.contacts}" var="c">
		<div class="card col-md-3">
			<img src="${c.avatar==''?'./assets/images/default-profile3.jpeg': c.avatar}" class="card-img-top"
				alt="${c.firstname} ${c.lastname}">
			<div class="card-body">
				<h5 class="card-title">${c.firstname}. ${c.lastname}</h5>
				<p class="card-text">${c.email}<br>${c.phone}</p>
				<a href="./view-contact-details?id=${c.id}" class="btn btn-link">View Details</a>
			</div>
		</div>
	</c:forEach>
</div>
<%@ include file="./footer.jspf"%>