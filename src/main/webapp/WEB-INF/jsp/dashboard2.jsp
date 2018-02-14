<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}" />
<!-- Main content -->
<section class="content">
	<div class="col-md-6 row">
		<form:form action="searchByGenus" method="GET"
			modelAttribute="searchCriteria">
			<fieldset>
				<legend>Search By Genus:</legend>
				<div class="form-group">
					<label for="exampleInputEmail1">Genus:</label>
					<form:input path="genusName" cssClass="form-control" />
					<form:errors path="genusName"></form:errors>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Species:</label>
					<form:input path="species" cssClass="form-control" />
					<form:errors path="species"></form:errors>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Local Name:</label>
					<form:input path="localName" cssClass="form-control" />
					<form:errors path="localName"></form:errors>
				</div>
			</fieldset>
			<button id="searchByGenus">Search</button>
		</form:form>
		<c:if test="${not empty genusList}">
			<h3 class="box-title">Search Results</h3>
			<table id="plist" class="table table-striped table-bordered">
				<tbody>
					<c:forEach items="${genusList}" var="genus">
						<tr>
							<td><c:out value="${genus.name}" /></td>
							<td><c:out value="${genus.species}" /></td>
							<td><a class="btn btn-warning btn-xs"
								href="viewGenusDetail/${genus.genusId}">View Detail</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<div class="add-item">
			<a class="btn btn-warning btn-xs" href="/addGenus"> Add New Genus
			</a>
		</div>
	</div>
	<div class="col-md-6">
		<form:form action="searchByCompound" method="GET"
			modelAttribute="searchCriteria">
			<fieldset>
				<legend>Search By Compound:</legend>
				<div class="form-group">
					<label for="exampleInputEmail1">Compound Name:</label>
					<form:input path="compoundName" cssClass="form-control" />
					<form:errors path="compoundName"></form:errors>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">IUPAC Name:</label>
					<form:input path="iUPACName" cssClass="form-control" />
					<form:errors path="iUPACName"></form:errors>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Biological Activity:</label>
					<form:input path="biologicalActivity" cssClass="form-control" />
					<form:errors path="biologicalActivity"></form:errors>
				</div>
			</fieldset>
			<button id="searchByCompound">Search</button>
		</form:form>


		<c:if test="${not empty compoundList}">
			<h3 class="box-title">Search Results</h3>
			<table id="plist" class="table table-striped table-bordered">
				<tbody>
					<c:forEach items="${compoundList}" var="compound">
						<tr>
							<td><c:out value="${compound.name}" /></td>
							<td><c:out value="${compound.IUPACName}" /></td>
							<td><c:out value="${product.price}" /></td>
							<td><a class="btn btn-warning btn-xs"
								href="viewCompoundDetail/${compound.compoundId}">View Detail</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<div class="add-item">
			<a class="btn btn-warning btn-xs" href="/addCompound"> Add New
				Compound </a>
		</div>
	</div>
</section>