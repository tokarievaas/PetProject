<!DOCTYPE html>
<html>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/mediaTemplStyle.css">

<body>


<div class = "container" >
	<div class="form-group col-sm-offset-2 col-sm-10">
		<h1 id = "media-name">${title}</h1>
	</div>

	<form class = "form-horisontal" action = "/media_coll/media/" method = "post">

		<input type = "hidden" name = "id" value = "${mediaValue.getId()!"0"}">
		<input type = "hidden" name = "type" value = "${title}">

		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "name">Name:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "name" name = "name" placeholder = "Enter name" value = "${mediaValue.getName()!}">
 			</div>
		</div>

		<div class = "form-group" >
			<label class = "control-label col-sm-2 text-right" for = "year">Year:</label>
			<div class = "col-sm-10">
				<#setting number_format="####">
				<input type = "text" class = "form-control" id = "year" name = "year" placeholder = "Enter year" value = "${mediaValue.getYear()!}">
 			</div>
		</div>

		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "rating">Rating:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "rating" name = "rating" placeholder = "Enter rating" value = "${mediaValue.getRating()!}">
 			</div>
		</div>
        <#if mediaValue.getClass().getSimpleName() == 'Movie'>
		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "studio">Studio:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "studio" name = "studio" placeholder = "Enter studio" value = "${mediaValue.getStudio()!}">
 			</div>
		</div>

		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "category">Category:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "category" name = "category" placeholder = "Enter category" value = "${mediaValue.getCategory()!}">
 			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <div class="checkbox">
				<label><input type="checkbox" name = "adultOnly" id = "adultOnly" <#if mediaValue.getAdultOnly()>checked</#if> >Adult Only</label>
			  </div>
			</div>
		</div>
		<#else>
		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "performer">Performer:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "performer" name = "performer" placeholder = "Enter performer" value = "${mediaValue.getPerformer()!}">
 			</div>
		</div>

		<div class = "form-group">
			<label class = "control-label col-sm-2 text-right" for = "style">Style:</label>
			<div class = "col-sm-10">
				<input type = "text" class = "form-control" id = "style" name = "style" placeholder = "Enter style" value = "${mediaValue.getStyle()!}">
 			</div>
		</div>
		</#if>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <button type="submit" class="btn btn-default">Save</button>
			  <a href="/media_coll/">
                 <button type="button" class="btn btn-default">Cancel</button>
              </a>
			</div>
		 </div>

	</form>

</div>

<!-- $(function (){
    if($('#adultOnly').val()== "true"){
         $("input:checkbox").prop('checked',true);
    }else{
        $("input:checkbox").prop('checked', false);
    }
});  -->

</body>
</html>