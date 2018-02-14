<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}" />
<!-- Main content -->
<div class="container" style = "padding-top: 75px;">
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Compound Name: </b>${compound.name}
		</h4>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Synonyms:</b>
			<c:forEach items="${compound.synonymList}" var="synonym">
				<a class="btn btn-success"
					href="/viewCompoundDetail/${synonym.compoundId}">${synonym.name}
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
							href="../resources/images_chemicalStructure/${chemicalStructure.chemicalStructureId}.jpg"
							target="_blank"> <img
							src="../resources/images_chemicalStructure/${chemicalStructure.chemicalStructureId}.jpg"
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
				<a class="btn btn-success"
					href="/viewGenusDetail/${isolatedFrom.genusId}">${isolatedFrom.name}
					${isolatedFrom.species} </a>

			</c:forEach>
		</h4>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Melting Point: </b>${compound.meltingPoint}</h4>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Solublity:</b>
		</h4>
		<div class="panel-body">
			<div class="col-6 col-sm-3">
				<b>Hexane: </b>${compound.solubility.hexane}</div>
			<div class="col-6 col-sm-3">
				<b>Methanol: </b>${compound.solubility.methanol}</div>

			<!-- Force next columns to break to new line -->
			<div class="w-100 d-none d-md-block"></div>

			<div class="col-6 col-sm-3">
				<b>Water: </b>${compound.solubility.water}</div>
			<div class="col-6 col-sm-3">
				<b>Ethyl Acetate: </b>${compound.solubility.ethylAcetate}</div>
		</div>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Physical Characteristics:</b>
		</h4>
		<div class="panel-body" style="text-align: justify;">
			${compound.physicalCharacteristics}</div>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>IR Data:</b>
		</h4>
		<div class="panel-body">
			<p class="row" style="text-align: justify; padding: 15px;">
				<img class="pull-left"
					style="width: 250px; height: 200px; margin-right: 10px; margin-bottom: 10px;"
					src="../resources/images_ir_data/${compound.IR_Data.IR_DataId}.jpg">
				<b>IR Data:</b><br /> <br /> <span style="text-align: justify">${compound.IR_Data.expln}</span>
		</div>
	</div>


	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>NMR Data:</b>
		</h4>
		<c:forEach items="${compound.NMR_DataList}" var="NMR_Data">
			<div class="panel-body">
				<p class="row" style="text-align: justify; padding: 15px;">
					<img class="pull-left"
						style="width: 250px; height: 200px; margin-right: 10px; margin-bottom: 10px;"
						src="../resources/images_ms_data/${NMR_Data.NMR_DataId}.jpg">
					<b>${NMR_Data.title}: </b><br /> <br /> <span
						style="text-align: justify">${NMR_Data.expln}</span>
			</div>
			<hr />
		</c:forEach>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>MS Data:</b>
		</h4>
		<div class="panel-body">
			<p class="row" style="text-align: justify; padding: 15px;">
				<img class="pull-left"
					style="width: 250px; height: 200px; margin-right: 10px; margin-bottom: 10px;"
					src="../resources/images_ms_data/${compound.MS_Data.MS_DataId}.jpg">
				<b>MS Data:</b><br /> <br /> <span style="text-align: justify">${compound.MS_Data.expln}</span>
		</div>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Pharmacological Activity:</b>
		</h4>
		<div class="panel-body" style="text-align: justify;">
			<c:forEach items="${compound.pharmacologicalActivityList}"
				var="pharmacologicalActivity">
				<b>${pharmacologicalActivity.title}:</b>
				<br />
				<br />
			${pharmacologicalActivity.expln}<br />
				<hr />
			</c:forEach>
		</div>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>References:</b>
		</h4>
		<div class="panel-body" style="text-align: justify;">
			<c:forEach items="${compound.referenceList}" var="reference"
				varStatus="status">${reference}<c:if
					test="${!status.last}">, </c:if>
			</c:forEach>
		</div>
	</div>
</div>