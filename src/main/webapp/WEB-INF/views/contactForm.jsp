<%@ include file="./header.jspf"%>
<h3>${title!=null ?title:'Contact Form'}</h3>
<hr>
<br>
<form method="post">

	<div class="form-group row">
		<label for="firstname" class="col-md-4">Firstname</label>
		<div class="col-md-4">
			<input type="text" class="form-control" name="firstname"
				id="firstname" value="${contact.firstname}">
			<div class="text-danger">${errors.firstname}</div>
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label for="lastname" class="col-md-4">Lastname</label>
		<div class="col-md-4">
			<input type="text" class="form-control" name="lastname" id="lastname"
				value="${contact.lastname}">
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label for="email" class="col-md-4">Email Address</label>
		<div class="col-md-8">
			<input type="email" class="form-control" name="email" id="email"
				value="${contact.email}">
			<div class="text-danger">${errors.email}</div>
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label for="phone" class="col-md-4">Phone Number</label>
		<div class="col-md-4">
			<input type="tel" class="form-control" name="phone" id="phone"
				value="${contact.phone}">
			<div class="text-danger">${errors.phone}</div>
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label for="avatar" class="col-md-4">Avatar</label>
		<div class="col-md-8">
			<input type="text" class="form-control" name="avatar" id="avatar"
				value="${contact.avatar}">
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label for="address" class="col-md-4">Street Address</label>
		<div class="col-md-8">
			<input type="text" class="form-control" name="address" id="address"
				value="${contact.address}">
			<div class="text-danger">${errors.address}</div>
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label for="city" class="col-md-4">City</label>
		<div class="col-md-4">
			<input type="text" class="form-control" name="city" id="city"
				value="${contact.city}">
			<div class="text-danger">${errors.city}</div>
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label for="state" class="col-md-4">State</label>
		<div class="col-md-4">
			<input type="text" class="form-control" name="state" id="state"
				value="${contact.state}">
			<div class="text-danger">${errors.state}</div>
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label for="pincode" class="col-md-4">PinCode</label>
		<div class="col-md-3">
			<input type="text" class="form-control" name="pincode" id="pincode"
				value="${contact.pincode}">
			<div class="text-danger">${errors.pincode}</div>
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label for="country" class="col-md-4">Country</label>
		<div class="col-md-4">
			<input type="text" class="form-control" name="country" id="country"
				value="${contact.country}">
			<div class="text-danger">${errors.country}</div>
		</div>
	</div>
	<br>
	<div class="form-group row">
		<label class="col-md-4"></label>
		<div class="col-md-8">
			<button class="btn btn-primary">Save Details</button>
			<input type="reset" class="btn btn-link" value="Reset">
		</div>
	</div>
</form>
<%@ include file="./footer.jspf"%>