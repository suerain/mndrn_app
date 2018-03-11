<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container" style = "padding-top: 75px;">
	<h1>
		<!-- Hello <b><c:out value="${user.name}" /></b>  -->
	</h1>
	<div class="col-md-12">

		<form:form action="addCompound" commandName="compound" method="POST"
			enctype="multipart/form-data" class="form-horizontal">
			<div class="panel panel-success">
				<h4 class="panel-heading">New Compound Details:</h4>
				<div class="form-group" style="margin: 15px;">
					<div class=row>
						<label for="exampleInputEmail1" class="col-xs-1 pull-left">Name:</label>
						<div class="col-xs-4">
							<form:input path="name" cssClass="form-control" />
							<form:errors class = "form-error" path="name"></form:errors>
						</div>
					</div>
				</div>
				<hr />

				<div class="form-group" style="margin: 15px;">
					<label for="exampleInputEmail1">Synonyms:</label> <br />
					<c:forEach items="${compound.synonymList}" var="synonym"
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
									path="synonymList[${status.index}].IUPACName"
									placeholder="IUPAC Name" />
							</div>
						</div>
					</c:forEach>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<div class=row>
						<label for="exampleInputEmail1" class="col-xs-2 pull-left">IUPAC
							Name:</label>
						<div class="col-xs-3">
							<form:input path="IUPACName" cssClass="form-control" />
							<form:errors class = "form-error" path="IUPACName"></form:errors>
						</div>
					</div>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<label for="exampleInputEmail1">Chemical Structure:</label> <br />
					<c:forEach items="${compound.chemicalStructureList}"
						var="chemicalStructure" varStatus="status">
						<br />
						<div class="row">
							<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
							<div class="col-xs-3">
								<form:input class="form-control input-group-lg"
									path="chemicalStructureList[${status.index}].image" type="file"
									cssClass="form-control" />
							</div>
							<div class="col-xs-3">
								<form:input class="form-control input-group-lg"
									path="chemicalStructureList[${status.index}].expln"
									cssClass="form-control" placeholder="Image Title" />
							</div>
						</div>
					</c:forEach>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<label for="exampleInputEmail1">Isolated From:</label> <br />
					<c:forEach items="${compound.isolatedFrom}" var="isolatedFromEntry"
						varStatus="status">
						<br />
						<div class="row">
							<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
							<div class="col-xs-4">
								<form:input class="form-control input-group-lg" type="text"
									path="isolatedFrom[${status.index}].name"
									placeholder="Genus Name" />
							</div>

							<div class="col-xs-4">
								<form:input class="form-control input-group-lg" type="text"
									path="isolatedFrom[${status.index}].species"
									placeholder="Species Name" />
							</div>
						</div>
					</c:forEach>
				</div>

				<hr />
				<div class="form-group" style="margin: 15px;">
					<div class=row>
						<label for="exampleInputEmail1" class="col-xs-2 pull-left">Melting
							Point:</label>
						<div class="col-xs-1">
							<form:input path="meltingPoint" cssClass="form-control" />
							<form:errors class = "form-error" path="meltingPoint"></form:errors>
						</div>
					</div>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<label for="exampleInputEmail1">Solubility:</label> <br /><br />
					<div class="row">
						<div class="col-xs-3">
							<form:input class="form-control input-group-lg" type="text"
								path="solubility.hexane" placeholder="Hexane" />
							<form:errors class = "form-error" path="solubility.hexane"></form:errors>
						</div>

						<div class="col-xs-3">
							<form:input class="form-control input-group-lg" type="text"
								path="solubility.methanol" placeholder="Methanol" />
							<form:errors class = "form-error" path="solubility.methanol"></form:errors>
						</div>

						<div class="col-xs-3">
							<form:input class="form-control input-group-lg" type="text"
								path="solubility.water" placeholder="Water" />
							<form:errors class = "form-error" path="solubility.water"></form:errors>
						</div>

						<div class="col-xs-3">
							<form:input class="form-control input-group-lg" type="text"
								path="solubility.ethylAcetate" placeholder="Ethyl Acetate" />
							<form:errors class = "form-error" path="solubility.ethylAcetate"></form:errors>
						</div>

					</div>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<div class=row>
						<label for="exampleInputEmail1" class="col-xs-3 pull-left">Physical
							Characteristics:</label>
						<div class="col-xs-9">
							<form:input path="physicalCharacteristics"
								cssClass="form-control" type="text-area" />
							<form:errors class = "form-error" path="physicalCharacteristics"></form:errors>
						</div>
					</div>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<label for="exampleInputEmail1">IR Data:</label> <br /><br />
					<div class="row">
						<div class="col-xs-3">
							<form:input class="form-control input-group-lg"
								path="IR_Data.image" type="file" cssClass="form-control" />
						</div>

						<div class="col-xs-2">
							<form:input class="form-control input-group-lg" type="text"
								path="IR_Data.title" placeholder="Image Title" />
							<form:errors class = "form-error" path="IR_Data.title"></form:errors>
						</div>

						<div class="col-xs-7">
							<form:input class="form-control input-group-lg" type="text"
								path="IR_Data.expln" placeholder="Explanation" />
							<form:errors class = "form-error" path="IR_Data.expln"></form:errors>
						</div>
					</div>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<label for="exampleInputEmail1">NMR Data:</label> <br />
					<c:forEach items="${compound.NMR_DataList}" var="NMR_Data"
						varStatus="status">
						<br />
						<div class="row">
							<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
							<div class="col-xs-3">
								<form:input class="form-control input-group-lg"
									path="NMR_DataList[${status.index}].image" type="file"
									cssClass="form-control" />
							</div>
							<div class="col-xs-2">
								<form:input class="form-control input-group-lg"
									path="NMR_DataList[${status.index}].title"
									cssClass="form-control" placeholder="Image Title" />
							</div>
							<div class="col-xs-6">
								<form:input class="form-control input-group-lg"
									path="NMR_DataList[${status.index}].expln"
									cssClass="form-control" placeholder="Explanation" />
							</div>
						</div>
					</c:forEach>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<label for="exampleInputEmail1">MS Data:</label> <br /><br />
					<div class="row">
						<div class="col-xs-3">
							<form:input class="form-control input-group-lg"
								path="MS_Data.image" type="file" cssClass="form-control" />
						</div>

						<div class="col-xs-2">
							<form:input class="form-control input-group-lg" type="text"
								path="MS_Data.title" placeholder="Image Title" />
							<form:errors class = "form-error" path="MS_Data.title"></form:errors>
						</div>

						<div class="col-xs-7">
							<form:input class="form-control input-group-lg" type="text"
								path="MS_Data.expln" placeholder="Explanation" />
							<form:errors class = "form-error" path="MS_Data.expln"></form:errors>
						</div>
					</div>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<label for="exampleInputEmail1">Pharmacological Activity:</label> <br />
					<c:forEach items="${compound.pharmacologicalActivityList}"
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
				<hr />
				<div class="form-group" style="margin: 15px;">
					<label for="exampleInputEmail1">Reference List:</label> <br />
					<c:forEach items="${compound.referenceList}" var="reference"
						varStatus="status">
						<br />
						<div class="row">
							<label for="exampleInputEmail1" class="col-xs-1">${status.index+1}:</label>
							<div class="col-xs-4">
								<form:input class="form-control input-group-lg" type="text"
									path="referenceList[${status.index}]" cssClass="form-control"
									placeholder="Reference Name" />
							</div>
						</div>
					</c:forEach>
				</div>
				<hr />
				<div class="form-group" style="margin: 15px;">
					<input type="submit" value="Submit" class="btn btn-success btn-sm" />
				</div>
			</div>
		</form:form>
	</div>
</div>



