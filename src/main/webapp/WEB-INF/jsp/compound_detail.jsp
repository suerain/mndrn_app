<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
table, th, td {
	border: none
}
</style>
<meta name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}" />
<!-- Main content -->
<div class="container">
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Compound Name: </b>${compound.name}
		</h4>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Synonyms:</b>
			<c:forEach items="${compound.synonymList}" var="synonym">
				<a class="btn btn-warning"
					href="/viewCompoundDetail/${synonym.compoundId}" target="_blank">${synonym.name}
					${synonym.IUPACName} </a>

			</c:forEach>
		</h4>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>IUPAC Name: </b>${compound.IUPACName}</h4>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Chemical Structure:</b>
		</h4>
		<div class="row panel-body">
			<c:forEach items="${compound.chemicalStructureList}"
				var="chemicalStructure">
				<div class="col-md-2">
					<div class="thumbnail">
						<a
							href="../resources/images_herbarium/${chemicalStructure.chemicalStructureId}.jpg"
							target="_blank"> <img
							src="../resources/images_herbarium/${chemicalStructure.chemicalStructureId}.jpg"
							alt="Lights" style="width: 150px; height: 100px">
							<div class="caption">
								<p class="text-center">${chemicalStructure.expln}</p>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Isolated From:</b>
			<c:forEach items="${compound.isolatedFrom}" var="isolatedFrom">
				<a class="btn btn-warning"
					href="/viewGenusDetail/${isolatedFrom.genusId}" target="_blank">${isolatedFrom.name}
					${isolatedFrom.species} </a>

			</c:forEach>
		</h4>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Melting Point: </b>${compound.meltingPoint}</h4>
	</div>

	
	<b>Solublity</b><br /> <br />
	<table>
		<tr>
			<td>Hexane:</td>
			<td>${compound.solubility.hexane}</td>
			<td>Methanol:</td>
			<td>${compound.solubility.methanol}</td>
		</tr>
		<tr>
			<td>Water:</td>
			<td>${compound.solubility.water}</td>
			<td>Ethyl Acetate:</td>
			<td>${compound.solubility.ethylAcetate}</td>
		</tr>
	</table>
	<hr>
	<b>Physical Characteristics:</b><br /> <br />
	${compound.physicalCharacteristics} <br />
	<hr>
	<b>IR Data:</b><br /> <br />
	<table>
		<tr>
			<td><img width="300px" height="200px"
				src="../resources/images_ir_data/${compound.IR_Data.IR_DataId}.jpg"
				alt="Photo"></td>
			<td><b>IR Data:<br />
			</b>${compound.IR_Data.expln}</td>
		</tr>
	</table>
	<hr>
	<b>NMR Data:</b><br /> <br />
	<table>
		<c:forEach items="${compound.NMR_DataList}" var="NMR_Data">
			<tr>
				<td><img width="300px" height="200px"
					src="../resources/images_nmr_data/${NMR_Data.NMR_DataId}.jpg"
					alt="Photo"></td>
				<td><b>${NMR_Data.title}: </b><br />${NMR_Data.expln}</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<b>MS Data:</b><br /> <br />
	<table>
		<tr>
			<td><img width="300px" height="200px"
				src="../resources/images_ms_data/${compound.MS_Data.MS_DataId}.jpg"
				alt="Photo"></td>
			<td><b>MS Data:<br />
			</b>${compound.MS_Data.expln}</td>
		</tr>
	</table>
	<hr>
	<b>Pharmacological Activity:</b><br /> <br />
	<c:forEach items="${compound.pharmacologicalActivityList}"
		var="pharmacologicalActivity">
			${pharmacologicalActivity.title}:<br />
			${pharmacologicalActivity.expln}<br />
		<br />
	</c:forEach>
	<hr>
	<b>References:</b><br /> <br />
	<c:forEach items="${compound.referenceList}" var="reference">
			${reference}
	</c:forEach>
	<hr>
</div>