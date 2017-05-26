<!DOCTYPE html>
<html>

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/mediaStyle.css">
<script src="/js/jquery-3.2.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<body>
<div  id = "container">
	<div>
		<h1>Hello ${userName}. <#if userName == 'Guest'>Here is an example Media collection<#else>Here is your favorite Media collection</#if></h1>
	</div>


    <p class = "grad"><b>MOVIES</b></p>

	<table class="table table-hover" class="tbl">
		<thead>
			<tr class = "header">


		<!--		<th class = "header-item" style="width:20px">Type</th>      -->
				<th class = "header-item" style="width:160px">Name</th>
				<th class = "header-item" style="width:10px">Year</th>
				<th class = "header-item" style="width:10px">Rating</th>
				<th class = "header-item" style="width:40px">Studio</th>
				<th class = "header-item" style="width:40px">Category</th>
				<th class = "header-item" style="width:20px">Adult Only</th>
				<th class = "header-item-end" style="width:10px"></th>
				<#if userName != 'Guest'>
				<th class = "header-item-end" style="width:10px"></th>
				</#if>
			</tr>
		</thead>
        <#list mediaRows?sort as mediaRow>
		<tbody>
		<tr class = "medias-table-row">

			<form action = "/media_coll/media">

					<input class = "medias-table-body-input" type = "hidden" name = "id" value = "${mediaRow.getId()!}" readonly style = "display:table-cell; width:100%">

		<!--		<td class = "medias-table-body" name = "type" style = "width:20px">   -->
					<input class = "medias-table-body-input" type = "hidden" name = "type" value = "${mediaRow.getClass().getSimpleName()}" readonly style = "display:table-cell; width:100%">
		<!--		</td>             -->
				<td class = "medias-table-body" name = "name" style = "width:160px">
					<input class = "medias-table-body-input" type = "text" name = "name" value = "${mediaRow.getName()!}" readonly style = "display:table-cell; width:100%">
				</td>
				<#setting number_format="####">
				<td class = "medias-table-body" name = "year" style = "width:10px">
					<input class = "medias-table-body-input" type = "text" name = "year" value = "${mediaRow.getYear()!}" readonly style = "display:table-cell; width:100%">
				</td>
				<td class = "medias-table-body" name = "rating" style = "width:10px">
					<input class = "medias-table-body-input" type = "text" name = "rating" value = "${mediaRow.getRating()!}" readonly style = "display:table-cell; width:100%">
				</td>

				<td class = "medias-table-body" name = "studio" style = "width:40px">
					<input class = "medias-table-body-input" type = "text" name = "studio" value = "${mediaRow.getStudio()!}" readonly style = "display:table-cell; width:100%">
				</td>
				<td class = "medias-table-body" name = "category" style = "width:40px">
					<input class = "medias-table-body-input" type = "text" name = "category" value = "${mediaRow.getCategory()!}" readonly style = "display:table-cell; width:100%">
				</td>
				<td class = "medias-table-body" name = "adultOnly" style = "width:20px">
					<input class = "medias-table-body-input" type = "text" name = "adultOnly" value = "${mediaRow.getAdultOnly()?c}" readonly style = "display:table-cell; width:100%">
				</td>
				<#if userName != 'Guest'>
				<td class = "medias-table-body edit" style = "width:20px">
					<button class = "btn btn-default" type = "submit" >Edit</button>
				</td>
				</#if>
			</form>
			<#if userName != 'Guest'>
			<td class = "medias-table-body">
				<form action = "/media_coll/deleteMedia">
					<input type = "hidden" name = "id" value = "${mediaRow.getId()}">
					<button class = "btn btn-default" type = "submit">Delete</button>
				</form>
			</td>
			</#if>
		</tr>
		</tbody>
      </#list>
	</table>

	<#if userName != 'Guest'>
    	<div class = "buttons-fieldset">
   		    <div class = "buttons-sets">
                <form action = "/media_coll/newMedia">
                    <input type = "hidden" name = "type" value = "Movie">
                    <button  class = "btn btn-default" type = "submit">Add new Movie</button>
                </form>
            </div>
        </div>
    </#if>

    <p class = "grad"><b>MUSICS</b></p>

	<table class="table table-hover" class="tbl">
		<thead>
			<tr class = "header">

		<!--		<th class = "header-item" style="width:20px">Type</th>         -->
				<th class = "header-item" style="width:160px">Name</th>
				<th class = "header-item" style="width:10px">Year</th>
				<th class = "header-item" style="width:10px">Rating</th>
				<th class = "header-item" style="width:30px">Performer</th>
				<th class = "header-item" style="width:20px">Style</th>
				<th class = "header-item-end" style="width:10px"></th>
				<#if userName != 'Guest'>
				<th class = "header-item-end" style="width:10px"></th>
				</#if>
			</tr>
		</thead>
        <#list musicRows?sort as mediaRow>
		<tbody>
		<tr class = "medias-table-row">

			<form action = "/media_coll/media">

					<input class = "medias-table-body-input" type = "hidden" name = "id" value = "${mediaRow.getId()!}" readonly style = "display:table-cell; width:100%">

		<!--		<td class = "medias-table-body" name = "type" style = "width:20px">        -->
					<input class = "medias-table-body-input" type = "hidden" name = "type" value = "${mediaRow.getClass().getSimpleName()}" readonly style = "display:table-cell; width:100%">
		<!--		</td>                         -->
				<td class = "medias-table-body" name = "name" style = "width:160px">
					<input class = "medias-table-body-input" type = "text" name = "name" value = "${mediaRow.getName()!}" readonly style = "display:table-cell; width:100%">
				</td>
				<#setting number_format="####">
				<td class = "medias-table-body" name = "year" style = "width:10px">
					<input class = "medias-table-body-input" type = "text" name = "year" value = "${mediaRow.getYear()!}" readonly style = "display:table-cell; width:100%">
				</td>
				<td class = "medias-table-body" name = "rating" style = "width:10px">
					<input class = "medias-table-body-input" type = "text" name = "rating" value = "${mediaRow.getRating()!}" readonly style = "display:table-cell; width:100%">
				</td>
				<td class = "medias-table-body" name = "performer" style = "width:30px">
					<input class = "medias-table-body-input" type = "text" name = "performer" value = "${mediaRow.getPerformer()!}" readonly style = "display:table-cell; width:100%">
				</td>
				<td class = "medias-table-body" name = "style" style = "width:20px">
					<input class = "medias-table-body-input" type = "text" name = "style" value = "${mediaRow.getStyle()!}" readonly style = "display:table-cell; width:100%">
				</td>
				<#if userName != 'Guest'>
					<td class = "medias-table-body edit" style = "width:20px">
					<button class = "btn btn-default" type = "submit" >Edit</button>
				</td>
				</#if>
			</form>
			<#if userName != 'Guest'>
			<td class = "medias-table-body">
				<form action = "/media_coll/deleteMedia">
					<input type = "hidden" name = "id" value = "${mediaRow.getId()}">
					<button class = "btn btn-default" type = "submit">Delete</button>
				</form>
			</td>
			</#if>
		</tr>
		</tbody>
         </#list>
	</table>

    <#if userName != 'Guest'>
	<div class = "buttons-fieldset">
		<div class = "buttons-sets">
			<div class = "button-set">
				<form action = "/media_coll/newMedia">
				    <input type = "hidden" name = "type" value = "Music">
					<button  class = "btn btn-default" type = "submit">Add new Music</button>
				</form>
			</div>
		</div>
        </#if>

        <!--
		<div class = "button-set"><button class = "btn btn-default">Load from file</button></div>
		<div class="btn-group">
		  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
		  Save as<span class="caret"></span></button>
		  <ul class="dropdown-menu" role="menu">
			<li><a href="#">xml</a></li>
			<li><a href="#">json</a></li>
			<li><a href="#">csv</a></li>
			<li><a href="#">bynary</a></li>
			<li><a href="#">json1</a></li>
			<li><a href="#">json2</a></li>
			<li><a href="#">xml1</a></li>
		  </ul>
		</div>
		</div>
		-->


	</div>

</div>
</body>
</html>