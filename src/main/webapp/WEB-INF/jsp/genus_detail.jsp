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
<div>
	<b>${genus.name} ${genus.species}</b><br /> <b>Synonyms: </b>
	<c:forEach items="${genus.synonymList}" var="synonym">
		<td><a class="btn btn-warning btn-xs"
			href="/viewGenusDetail/${synonym.genusId}">${synonym.name}${synonym.species}</a></td>
	</c:forEach>
	<br /> <b>Local Name: </b>
	<c:forEach items="${genus.localNameList}" var="localName">
		<tr>
			<td><c:out value="${localName}" /></td>
		</tr>
	</c:forEach>
	<br />
	<hr>
	<b>Herbarium:</b><br />
	<c:forEach items="${genus.herbariumEntryList}" var="herbariumEntry">
		<tr>
			<td><img width="100px" height="100px"
				src="../resources/images_herbarium/${herbariumEntry.herbariumId}.jpg"
				alt="Photo"></td>
		</tr>
	</c:forEach>
	<br />
	<hr>
	<b>Plant Specimen:</b><br />
	<c:forEach items="${genus.plantSpecimenList}" var="plantSpecimenEntry">
		<tr>
			<td><img width="100px" height="100px"
				src="../resources/images_plantSpecimen/${plantSpecimenEntry.plantSpecimenId}.jpg"
				alt="Photo"></td>
		</tr>
	</c:forEach>
	<br />
	<hr>
	<b>Photograph:</b><br />
	<c:forEach items="${genus.photographList}" var="photographEntry">
		<tr>
			<td><img width="100px" height="100px"
				src="../resources/images_photograph/${photographEntry.photographId}.jpg"
				alt="Photo"></td>
		</tr>
	</c:forEach>
	<br />
	<hr>
	<b>Ash Content:</b><br /> <br />
	<table>
		<tr>
			<td>Total Ash: <i>${genus.ashContent.totalAsh}</i></td>
			<td>Acid-insoluble Ash: <i>${genus.ashContent.acidInsolubleAsh}</i></td>
			<td>Water-soluble Ash: <i>${genus.ashContent.waterSolubleAsh}</i></td>
		</tr>
	</table>
	<hr>
	<b>Physical Characteristics:</b><br /> <br />
	${genus.physicalCharacteristics} <br />
	<hr>
	<b>Moisture Content:</b><br /> <br /> ${genus.moistureContent} <br />
	<hr>
	<b>Traverse Section:</b><br />
	<table>
		<tr>
			<c:forEach items="${genus.traverseSectionList}"
				var="traverseSectionEntry">
				<td><img width="100px" height="100px"
					src="../resources/images_traverseSection/${traverseSectionEntry.traverseSectionId}.jpg"
					alt="Photo"></td>
			</c:forEach>
		</tr>

	</table>
	<br />${genus.traverseSectionExpln} <br />
	<hr>
	<b>Photochemical Screening:</b><br />
	<table id = "photoChemScreeningList" class="table table-striped table-bordered">
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
		</tr>
	</table>
	<br /> ${genus.photoChemScreening.expln}
	<hr>
	<b>HPLC/TLC Profile:</b><br /> <br />
	<table>
		<tr>
			<td><img width="300px" height="200px"
				src="../resources/images_hplc_tlc/${genus.HPLC_Profile.HPLC_TLC_EntryId}.jpg"
				alt="Photo"></td>
			<td><b>HPLC condition:<br />
			</b>${genus.HPLC_Profile.expln}</td>
		</tr>
		<tr>
			<td><img width="300px" height="200px"
				src="../resources/images_hplc_tlc/${genus.TLC_Profile.HPLC_TLC_EntryId}.jpg"
				alt="Photo"></td>
			<td><b>TLC condition:<br />
			</b>${genus.TLC_Profile.expln}</td>
		</tr>
	</table>
	<hr>
	<b>DNA Barcoding:</b><br /> <br /> ${genus.DNABarcoding}
	<hr>
	<b>Chemical Consituents:</b><br /> <br />
	<c:forEach items="${genus.chemConstinuentList}"
		var="chemicalConstituent">
		<tr>
			<td><a class="btn btn-warning btn-xs"
				href="/viewCompoundDetail/${chemicalConstituent.compoundId}">${chemicalConstituent.name}${chemicalConstituent.IUPACName}</a></td>
		</tr>
	</c:forEach>
	<hr>
	<b>Traditional Uses:</b><br /> <br />
	<c:forEach items="${genus.traditionalUsesList}" var="traditionalUses">
			${traditionalUses.title}:<br />
			${traditionalUses.expln}<br />
		<br />
	</c:forEach>
	<hr>
	<b>Pharmacological Activity:</b><br /> <br />
	<c:forEach items="${genus.pharmacologicalActivityList}"
		var="pharmacologicalActivity">
			${pharmacologicalActivity.title}:<br />
			${pharmacologicalActivity.expln}<br />
		<br />
	</c:forEach>
	<hr>
	<b>References:</b><br /> <br />
	<c:forEach items="${genus.referenceList}" var="reference">
			${reference}
	</c:forEach>
	<hr>
</div>