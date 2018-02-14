<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Content Header (Page header) -->
<div class="container">
	<!-- Main row -->
	<div class="row">
		<!-- Left col -->
		<section class="col-lg-12 connectedSortable">
			<!-- TO DO List -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">Genus Details</h3>
					<h1>
						<!-- Hello <b><c:out value="${user.name}" /></b>  -->
					</h1>
					<div class="col-md-12">

						<form:form action="addGenus" commandName="genus" method="POST"
							enctype="multipart/form-data" class="form-horizontal">
							<div class="form-group">
								<div class=row>
									<label for="exampleInputEmail1" class="col-xs-1 pull-left">Name:</label>
									<div class="col-xs-4">
										<form:input path="name" cssClass="form-control" />
										<form:errors path="name"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class=row>
									<label for="exampleInputEmail1" class="col-xs-1 pull-left">Species:</label>
									<div class="col-xs-4">
										<form:input path="species" cssClass="form-control" />
										<form:errors path="species"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Synonyms:</label>
								<c:forEach items="${genus.synonymList}" var="synonym"
									varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="synonymList[${status.index}].name"
												placeholder="Synonym Name" />
										</div>

										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="synonymList[${status.index}].species"
												placeholder="Species Name" />
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Local Name:</label>
								<c:forEach items="${genus.localNameList}" var="localName"
									varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="localNameList[${status.index}]"
												cssClass="form-control" placeholder="Local Name" />
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Herbarium:</label>
								<c:forEach items="${genus.herbariumEntryList}" var="harbarium"
									varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-3">
											<form:input class="form-control input-group-lg"
												path="herbariumEntryList[${status.index}].image" type="file"
												cssClass="form-control" />
										</div>
										<div class="col-xs-3">
											<form:input class="form-control input-group-lg"
												path="herbariumEntryList[${status.index}].expln"
												cssClass="form-control" placeholder="Image Title" />
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Plant Specimen:</label>
								<c:forEach items="${genus.plantSpecimenList}"
									var="plantSpecimen" varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-3">
											<form:input class="form-control input-group-lg"
												path="plantSpecimenList[${status.index}].image" type="file"
												cssClass="form-control" />
										</div>
										<div class="col-xs-3">
											<form:input class="form-control input-group-lg"
												path="plantSpecimenList[${status.index}].expln"
												cssClass="form-control" placeholder="Image Title" />
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Photographs:</label>
								<c:forEach items="${genus.photographList}" var="photograph"
									varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-3">
											<form:input class="form-control input-group-lg"
												path="photographList[${status.index}].image" type="file"
												cssClass="form-control" />
										</div>
										<div class="col-xs-3">
											<form:input class="form-control input-group-lg"
												path="photographList[${status.index}].expln"
												cssClass="form-control" placeholder="Image Title" />
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Ash Content:</label>
								<div class="row">
									<div class="col-xs-4">
										<form:input class="form-control input-group-lg" type="text"
											path="ashContent.totalAsh" placeholder="Total Ash" />
										<form:errors path="ashContent.totalAsh"></form:errors>
									</div>

									<div class="col-xs-4">
										<form:input class="form-control input-group-lg" type="text"
											path="ashContent.acidInsolubleAsh"
											placeholder="Acid-Insoluble Ash" />
										<form:errors path="ashContent.acidInsolubleAsh"></form:errors>
									</div>

									<div class="col-xs-4">
										<form:input class="form-control input-group-lg" type="text"
											path="ashContent.waterSolubleAsh"
											placeholder="Water-Soluble Ash" />
										<form:errors path="ashContent.waterSolubleAsh"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class=row>
									<label for="exampleInputEmail1" class="col-xs-2 pull-left">Physical
										Characteristics:</label>
									<div class="col-xs-10">
										<form:input path="physicalCharacteristics"
											cssClass="form-control" type="text-area" />
										<form:errors path="physicalCharacteristics"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class=row>
									<label for="exampleInputEmail1" class="col-xs-2 pull-left">Moisture
										Content:</label>
									<div class="col-xs-1">
										<form:input path="moistureContent" cssClass="form-control" />
										<form:errors path="moistureContent"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Traverse Section:</label>
								<c:forEach items="${genus.traverseSectionList}"
									var="traverseSection" varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-3">
											<form:input class="form-control input-group-lg"
												path="traverseSectionList[${status.index}].image"
												type="file" cssClass="form-control" />
										</div>
										<div class="col-xs-3">
											<form:input class="form-control input-group-lg"
												path="traverseSectionList[${status.index}].expln"
												cssClass="form-control" placeholder="Image Title" />
										</div>
									</div>
								</c:forEach>
								<br />
								<div class=row>
									<label for="exampleInputEmail1" class="col-xs-2 pull-left">Traverse
										Section Expln:</label>
									<div class="col-xs-10">
										<form:input path="traverseSectionExpln"
											cssClass="form-control" />
										<form:errors path="traverseSectionExpln"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Photochemical Screening:</label>
								<div class="row">
									<div class="col-xs-2">
										<label for="exampleInputEmail1">Plant Parts</label>
									</div>
									<div class="col-xs-2">
										<label for="exampleInputEmail1">PhotoSterol Level</label>
									</div>
									<div class="col-xs-2">
										<label for="exampleInputEmail1">Alkaloid Level</label>
									</div>
									<div class="col-xs-2">
										<label for="exampleInputEmail1">Saponin Level</label>
									</div>
									<div class="col-xs-2">
										<label for="exampleInputEmail1">Flavonoid Level</label>
									</div>
									<div class="col-xs-2">
										<label for="exampleInputEmail1">Anthraquinone Level</label>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-2">
										<label for="exampleInputEmail1">Leaf:</label>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.leaf.photoSterolLevel"
											placeholder="Leaf-PhotoSterol Level" />
										<form:errors path="photoChemScreening.leaf.photoSterolLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.leaf.alkaloidLevel"
											placeholder="Leaf-Alkaloid Level" />
										<form:errors path="photoChemScreening.leaf.alkaloidLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.leaf.saponinLevel"
											placeholder="Leaf-Saponin Level" />
										<form:errors path="photoChemScreening.leaf.saponinLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.leaf.flavonoidLevel"
											placeholder="Leaf-Flavonoid Level" />
										<form:errors path="photoChemScreening.leaf.flavonoidLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.leaf.anthraquinoneLevel"
											placeholder="Leaf-Anthraquinone Level" />
										<form:errors path="photoChemScreening.leaf.anthraquinoneLevel"></form:errors>
									</div>
								</div>

								<div class="row">
									<div class="col-xs-2">
										<label for="exampleInputEmail1">Bark:</label>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.bark.photoSterolLevel"
											placeholder="Bark-PhotoSterol Level" />
										<form:errors path="photoChemScreening.bark.photoSterolLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.bark.alkaloidLevel"
											placeholder="Bark-Alkaloid Level" />
										<form:errors path="photoChemScreening.bark.alkaloidLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.bark.saponinLevel"
											placeholder="Bark-Saponin Level" />
										<form:errors path="photoChemScreening.bark.saponinLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.bark.flavonoidLevel"
											placeholder="Bark-Flavonoid Level" />
										<form:errors path="photoChemScreening.bark.flavonoidLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.bark.anthraquinoneLevel"
											placeholder="Bark-Anthraquinone Level" />
										<form:errors path="photoChemScreening.bark.anthraquinoneLevel"></form:errors>
									</div>
								</div>

								<div class="row">
									<div class="col-xs-2">
										<label for="exampleInputEmail1">Fruit:</label>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.fruit.photoSterolLevel"
											placeholder="Fruit-PhotoSterol Level" />
										<form:errors path="photoChemScreening.fruit.photoSterolLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.fruit.alkaloidLevel"
											placeholder="Fruit-Alkaloid Level" />
										<form:errors path="photoChemScreening.fruit.alkaloidLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.fruit.saponinLevel"
											placeholder="Fruit-Saponin Level" />
										<form:errors path="photoChemScreening.fruit.saponinLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.fruit.flavonoidLevel"
											placeholder="Fruit-Flavonoid Level" />
										<form:errors path="photoChemScreening.fruit.flavonoidLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.fruit.anthraquinoneLevel"
											placeholder="Fruit-Anthraquinone Level" />
										<form:errors
											path="photoChemScreening.fruit.anthraquinoneLevel"></form:errors>
									</div>
								</div>

								<div class="row">
									<div class="col-xs-2">
										<label for="exampleInputEmail1">Root:</label>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.root.photoSterolLevel"
											placeholder="Root-PhotoSterol Level" />
										<form:errors path="photoChemScreening.root.photoSterolLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.root.alkaloidLevel"
											placeholder="Root-Alkaloid Level" />
										<form:errors path="photoChemScreening.root.alkaloidLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.root.saponinLevel"
											placeholder="Root-Saponin Level" />
										<form:errors path="photoChemScreening.root.saponinLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.root.flavonoidLevel"
											placeholder="Root-Flavonoid Level" />
										<form:errors path="photoChemScreening.root.flavonoidLevel"></form:errors>
									</div>
									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="photoChemScreening.root.anthraquinoneLevel"
											placeholder="Root-Anthraquinone Level" />
										<form:errors path="photoChemScreening.root.anthraquinoneLevel"></form:errors>
									</div>
								</div>

								<div class=row>
									<label for="exampleInputEmail1" class="col-xs-2 pull-left">Photochem
										Screening Expln:</label>
									<div class="col-xs-10">
										<form:input path="photoChemScreening.expln"
											cssClass="form-control" />
										<form:errors path="photoChemScreening.expln"></form:errors>
									</div>
								</div>

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">HPLC Profile:</label>
								<div class="row">
									<div class="col-xs-3">
										<form:input class="form-control input-group-lg"
											path="HPLC_Profile.image" type="file" cssClass="form-control" />
									</div>

									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="HPLC_Profile.title" placeholder="Image Title" />
										<form:errors path="HPLC_Profile.title"></form:errors>
									</div>

									<div class="col-xs-7">
										<form:input class="form-control input-group-lg" type="text"
											path="HPLC_Profile.expln" placeholder="Explanation" />
										<form:errors path="HPLC_Profile.expln"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">TLC Profile:</label>
								<div class="row">
									<div class="col-xs-3">
										<form:input class="form-control input-group-lg"
											path="TLC_Profile.image" type="file" cssClass="form-control" />
									</div>

									<div class="col-xs-2">
										<form:input class="form-control input-group-lg" type="text"
											path="TLC_Profile.title" placeholder="Image Title" />
										<form:errors path="TLC_Profile.title"></form:errors>
									</div>

									<div class="col-xs-7">
										<form:input class="form-control input-group-lg" type="text"
											path="TLC_Profile.expln" placeholder="Explanation" />
										<form:errors path="TLC_Profile.expln"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Chemical Constituents:</label>
								<c:forEach items="${genus.chemConstinuentList}"
									var="chemConstituent" varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="chemConstinuentList[${status.index}].name"
												placeholder="Compound Name" />
										</div>

										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="chemConstinuentList[${status.index}].IUPACName"
												placeholder="IUPAC Name" />
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="form-group">
								<div class=row>
									<label for="exampleInputEmail1" class="col-xs-2 pull-left">DNA
										Barcoding:</label>
									<div class="col-xs-3">
										<form:input path="DNABarcoding" cssClass="form-control" />
										<form:errors path="DNABarcoding"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Traditional Uses:</label>
								<c:forEach items="${genus.traditionalUsesList}"
									var="traditionalUses" varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="traditionalUsesList[${status.index}].title"
												placeholder="Title" />
										</div>

										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="traditionalUsesList[${status.index}].expln"
												placeholder="Explanation" />
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Pharmacological
									Activity:</label>
								<c:forEach items="${genus.pharmacologicalActivityList}"
									var="pharmacologicalActivity" varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="pharmacologicalActivityList[${status.index}].title"
												placeholder="Title" />
										</div>

										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="pharmacologicalActivityList[${status.index}].expln"
												placeholder="Explanation" />
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Reference List:</label>
								<c:forEach items="${genus.referenceList}" var="reference"
									varStatus="status">
									<br />
									<div class="row">
										<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
										<div class="col-xs-4">
											<form:input class="form-control input-group-lg" type="text"
												path="referenceList[${status.index}]"
												cssClass="form-control" placeholder="Reference Name" />
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="form-group">
								<input type="submit" value="Submit"
									class="btn btn-success btn-sm" />
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<!-- /.box -->
		</section>
		<!-- /.Left col -->
	</div>
	<!-- /.row (main row) -->
	<!-- /.content -->
</div>

