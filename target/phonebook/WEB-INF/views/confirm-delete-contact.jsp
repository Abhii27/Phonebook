<%@ include file="./header.jspf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3 class="text-danger">Confirm Deletion</h3>
<hr>

<c:if test="${contact==null}">

<h4>The ID Supplied is either Invalid or the Contact does not belong to your Phonebook</h4>

</c:if>

<c:if test="${contact!=null}">

<div class="row">

			<div class="col-md-5">
				<img class="img-thumbnail" src="${contact.avatar==''?'./assets/images/default-profile3.jpeg': contact.avatar}">
			</div>

			<div class="col-md-7">
				<table class="table">
					<tr>
						<td>Firstname</td>
						<td>${contact.firstname}</td>
					</tr>
					<tr>
						<td>Lastname</td>
						<td>${contact.lastname}</td>
					</tr>
					<tr>
						<td>Email Address</td>
						<td>${contact.email}</td>
					</tr>
					<tr>
						<td>Phone Number</td>
						<td>${contact.phone}</td>
					</tr>
					<tr>
						<td>Street Address</td>
						<td>${contact.address}</td>
					</tr>
					<tr>
						<td>City</td>
						<td>${contact.city}</td>
					</tr>
					<tr>
						<td>State</td>
						<td>${contact.state}</td>
					</tr>
					<tr>
						<td>Pincode</td>
						<td>${contact.pincode}</td>
					</tr>
					<tr>
						<td>Country</td>
						<td>${contact.country}</td>
					</tr>

				</table>
				
				<p>This is going to <b>Permanently Delete</b> the Record from our Database</p>
				<p>If you are Sure, Then type <b>PERMANENETYLY DELETE in Text Box given Below.</b></p>
				
				<form method="post">
					<input type="hidden" name="id" value="${contact.id}">
					<div class="form-group row">
						<input type="text" class="col-md-4" name="confirm">
						<button class="btn btn-danger col-md-3">Delete</button>
					</div>
					<h4 class="text-danger">${errMessage}</h4>
				</form>
			
			</div>

		</div>

</c:if>
<%@ include file="./footer.jspf"%>