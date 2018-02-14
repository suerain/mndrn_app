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
			<b>Genus: </b>${genus.name}, <b>Species: </b>${genus.species}
		</h4>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Synonyms:</b>
			<c:forEach items="${genus.synonymList}" var="synonym">
				<a class="btn btn-success"
					href="/viewGenusDetail/${synonym.genusId}">${synonym.name}
					${synonym.species} </a>

			</c:forEach>
		</h4>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Local Name:</b>
			<c:forEach items="${genus.localNameList}" var="localName"
				varStatus="status">${localName}<c:if
					test="${!status.last}">, </c:if>
			</c:forEach>
		</h4>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Herbarium:</b>
		</h4>
		<div class="row panel-body">
			<c:forEach items="${genus.herbariumEntryList}" var="herbariumEntry">
				<div class="col-md-2">
					<div class="thumbnail">
						<a
							href="..../resources/images_herbarium/${herbariumEntry.herbariumId}.jpg"
							target="_blank"> <img
							src="../resources/images_herbarium/${herbariumEntry.herbariumId}.jpg"
							alt="Lights" style="width: 150px; height: 100px">
							<div class="caption">
								<p class="text-center">${herbariumEntry.expln}</p>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Plant Specimen:</b>
		</h4>
		<div class="row panel-body">
			<c:forEach items="${genus.plantSpecimenList}"
				var="plantSpecimenEntry">
				<div class="col-md-2">
					<div class="thumbnail">
						<a
							href="../resources/images_plantSpecimen/${plantSpecimenEntry.plantSpecimenId}.jpg"
							target="_blank"> <img
							src="../resources/images_plantSpecimen/${plantSpecimenEntry.plantSpecimenId}.jpg"
							alt="Lights" style="width: 150px; height: 100px">
							<div class="caption">
								<p class="text-center">${plantSpecimenEntry.expln}</p>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Photograph:</b>
		</h4>
		<div class="row panel-body">
			<c:forEach items="${genus.photographList}" var="photographEntry">
				<div class="col-md-2">
					<div class="thumbnail">
						<a
							href="../resources/images_photograph/${photographEntry.photographId}.jpg"
							target="_blank"> <img
							src="../resources/images_photograph/${photographEntry.photographId}.jpg"
							alt="Lights" style="width: 150px; height: 100px">
							<div class="caption">
								<p class="text-center">${photographEntry.expln}</p>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Ash Content:</b>
		</h4>
		<div class="panel-body">
			<div class="col-6 col-sm-3">
				<b>Total Ash: </b>${genus.ashContent.totalAsh}</div>
			<div class="col-6 col-sm-3">
				<b>Acid-insoluble Ash: </b>${genus.ashContent.acidInsolubleAsh}</div>

			<div class="col-6 col-sm-3">
				<b>Water-soluble Ash: </b>${genus.ashContent.waterSolubleAsh}</div>
		</div>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Physical Characteristics:</b>
		</h4>
		<div class="panel-body" style="text-align: justify;">
			${genus.physicalCharacteristics}</div>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Moisture Content: </b>${genus.moistureContent}
		</h4>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Traverse Section:</b>
		</h4>
		<div class="row panel-body">
			<c:forEach items="${genus.traverseSectionList}"
				var="traverseSectionEntry">
				<div class="col-md-2">
					<div class="thumbnail">
						<a
							href="../resources/images_traverseSection/${traverseSectionEntry.traverseSectionId}.jpg"
							target="_blank"> <img
							src="../resources/images_traverseSection/${traverseSectionEntry.traverseSectionId}.jpg"
							alt="Lights" style="width: 150px; height: 100px">
							<div class="caption">
								<p class="text-center">${traverseSectionEntry.expln}</p>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="panel-body" style="text-align: justify;">
			${genus.traverseSectionExpln}</div>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Photochemical Screening:</b>
		</h4>
		<div class="panel-body">
			<table id="photoChemScreeningList"
				class="table table-striped table-bordered">
				<tr>
					<th></th>
					<th>Leaf</th>
					<th>Bark</th>
					<th>Fruit</th>
					<th>Root</th>
				</tr>
				<tr>
					<td>Phytosterol</td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.leaf.photoSterolLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.bark.photoSterolLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.fruit.photoSterolLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.root.photoSterolLevel}"
							varStatus="loop">+</c:forEach></td>

				</tr>
				<tr>
					<td>Alkaloid</td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.leaf.alkaloidLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.bark.alkaloidLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.fruit.alkaloidLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.root.alkaloidLevel}"
							varStatus="loop">+</c:forEach></td>
				</tr>
				<tr>
					<td>Saponin</td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.leaf.saponinLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.bark.saponinLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.fruit.saponinLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.root.saponinLevel}"
							varStatus="loop">+</c:forEach></td>
				</tr>
				<tr>
					<td>Flavonoid</td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.leaf.flavonoidLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.bark.flavonoidLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.fruit.flavonoidLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.root.flavonoidLevel}"
							varStatus="loop">+</c:forEach></td>
				</tr>
				<tr>
					<td>Anthraquinone</td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.leaf.anthraquinoneLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.bark.anthraquinoneLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.fruit.anthraquinoneLevel}"
							varStatus="loop">+</c:forEach></td>
					<td><c:forEach begin="1"
							end="${genus.photoChemScreening.root.anthraquinoneLevel}"
							varStatus="loop">+</c:forEach></td>

				</tr>
			</table>
			${genus.photoChemScreening.expln}
		</div>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>HPLC/TLC Profile:</b>
		</h4>
		<div class="panel-body">
			<p class="row" style="text-align: justify; padding: 15px;">
				<img class="pull-left"
					style="width: 250px; height: 200px; margin-right: 10px; margin-bottom: 10px;"
					src="../resources/images_hplc_tlc/${genus.HPLC_Profile.HPLC_TLC_EntryId}.jpg">
				<b>HPLC condition: </b><br /> <br /> <span
					style="text-align: justify">${genus.HPLC_Profile.expln}</span>
		</div>
		<hr />
		<div class="panel-body">
			<p class="row" style="text-align: justify; padding: 15px;">
				<img class="pull-left"
					style="width: 250px; height: 200px; margin-right: 10px; margin-bottom: 10px;"
					src="../resources/images_hplc_tlc/${genus.TLC_Profile.HPLC_TLC_EntryId}.jpg">
				<b>TLC condition: </b><br /> <br /> <span
					style="text-align: justify">${genus.TLC_Profile.expln}</span>
		</div>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>DNA Barcoding: </b>${genus.DNABarcoding}
		</h4>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Chemical Consituents:</b>
			<c:forEach items="${genus.chemConstinuentList}"
				var="chemicalConstituent">
				<a class="btn btn-success"
					href="/viewCompoundDetail/${chemicalConstituent.compoundId}">${chemicalConstituent.name}
					${chemicalConstituent.IUPACName} </a>
			</c:forEach>
		</h4>
	</div>

	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Traditional Uses:</b>
		</h4>
		<div class="panel-body" style="text-align: justify;">
			<c:forEach items="${genus.traditionalUsesList}" var="traditionalUses">
				<b>${traditionalUses.title}:</b>
				<br />
				<br />
			${traditionalUses.expln}<br />
				<hr />
			</c:forEach>
		</div>
	</div>
	<div class="panel panel-success">
		<h4 class="panel-heading">
			<b>Pharmacological Activity:</b>
		</h4>
		<div class="panel-body" style="text-align: justify;">
			<c:forEach items="${genus.pharmacologicalActivityList}"
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
			<c:forEach items="${genus.referenceList}" var="reference"
				varStatus="status">${reference}<c:if
					test="${!status.last}">, </c:if>
			</c:forEach>
		</div>
	</div>
</div>