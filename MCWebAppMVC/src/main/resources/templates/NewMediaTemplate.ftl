<!DOCTYPE html>
<html>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/mediaTemplStyle.css">

<body>

<div class = "container" >
	<div class="form-group col-sm-offset-2 col-sm-10">
		<h1 id = "media-name">${title}</h1>
	</div>

	<form class = "form-horisontal" action = "/media_coll/media" method = "post">

		<input type = "hidden" name = "id" value = "0">
		<input type = "hidden" name = "type" value = ${title}>

		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "name">Name:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "name" name = "name" placeholder = "Enter name">
			</div>
		</div>

		<div class = "form-group" >
			<label class = "control-label col-sm-2 text-right" for = "year">Year:</label>
			<div class = "col-sm-10">
				<#setting number_format="####">
				<input type = "text" class = "form-control" id = "year" name = "year" placeholder = "Enter year">
			</div>
		</div>

		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "rating">Rating:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "rating" name = "rating" placeholder = "Enter rating">
			</div>
		</div>
        <#if title == 'Movie'>
		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "studio">Studio:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "studio" name = "studio" placeholder = "Enter studio">
			</div>
		</div>

		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "category">Category:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "category" name = "category" placeholder = "Enter category">
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label><input type="checkbox" name = "adultOnly" value = "true"> Adult Only</label>
				</div>
			</div>
		</div>
		<#else>
		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "performer">Performer:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "performer" name = "performer" placeholder = "Enter performer">
 			</div>
		</div>

		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "style">Style:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "style" name = "style" placeholder = "Enter style" value = "">
 			</div>
		</div>
		</#if>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Save</button>
				<a href="/media_coll">
					<button type="button" class="btn btn-default">Cancel</button>
				</a>
			</div>
		</div>
	</form>

</div>

</body>
</html>