<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}" />




<!-- Main content -->
<div class="container" style = "padding-top: 75px;">
	<div
		style="text-align: justify; color: #6BC27B; font-family: arial; font-size: 18px; padding-right: 50px">
		<p>The Museum of Natural Drug Resources of Nepal provides complete
			database of natural resources (medicinal plants, minerals and animal
			products) of Nepal. You can find electronic herbarium profile,
			picture of specimen, photographs, physical characteristics,
			microscopic analysis of transverse section of sample, HPLC/TLC
			fingerprint, Chemical constituents, Method of analysis, Traditional
			uses, Pharmacological activities, DNA barcoding of medicinal plants.
			Our natural compound database provide information about physical
			characteristics, solubility, melting point, IR data, NMR data, MS
			data and biological activity of those natural compounds.</p>
		<hr />
		<br />
	</div>
	<br />
	<div class="col-xs-6 row">
		<form:form action="searchByGenus" method="GET"
			modelAttribute="searchCriteria">
			<div class="panel panel-success" style="padding: 5px;">
				<h4 class="panel-heading">Search By Genus:</h4>
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
				<button id="searchByGenus">Search</button>
			</div>
		</form:form>
		<c:if test="${not empty genusList}">
			<div class="panel panel-success">
				<h4 class="panel-heading">Search Results for Genus:</h4>
				<table id="plist" class="table table-striped table-bordered">
					<tbody>
						<c:forEach items="${genusList}" var="genus">
							<tr>
								<td><c:out value="${genus.name}" /></td>
								<td><c:out value="${genus.species}" /></td>
								<td><a class="btn btn-success btn-xs"
									href="viewGenusDetail/${genus.genusId}">View Detail</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:if>
		<div class="add-item">
			<a class="btn btn-success btn-xs" href="/addGenus"> Add New Genus
			</a>
		</div>
	</div>
	<div class="col-xs-6">
		<form:form action="searchByCompound" method="GET"
			modelAttribute="searchCriteria">
			<div class="panel panel-success" style="padding: 5px;">
				<h4 class="panel-heading">Search By Compound:</h4>
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
				<button id="searchByCompound">Search</button>
			</div>
		</form:form>


		<c:if test="${not empty compoundList}">
			<div class="panel panel-success">
				<h4 class="panel-heading">Search Results for Compound:</h4>
				<div class="row panel-body">
					<table id="plist" class="table table-striped table-bordered">
						<tbody>
							<c:forEach items="${compoundList}" var="compound">
								<tr>
									<td><c:out value="${compound.name}" /></td>
									<td><c:out value="${compound.IUPACName}" /></td>
									<td><a class="btn btn-success btn-xs"
										href="viewCompoundDetail/${compound.compoundId}">View
											Detail</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:if>

		<div class="add-item">
			<a class="btn btn-success btn-xs" href="/addCompound"> Add New
				Compound </a>
		</div>
	</div>
</div>