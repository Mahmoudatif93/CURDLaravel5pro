@extends('layouts.app')
@section('content')
	<div class="container">
		<p>
		<h1>Ajax CRUD Laravel</h1>
		</p>
		<div class="row">
			<div class="col-md-8">
				<table id="datatable" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Detail</th>
							<th>Autor</th>
							<th>Action</th>

						</tr>
					</thead>
					<thead></thead>
					<tbody></tbody>
				</table>
			</div>
			<div class="col-md-4">
				<form>
					<div class="form-group">
						<label>ID</label>
						<input type="number" id="id" class="form-control" readonly="readonly">
					</div>
					<div class="form-group">
						<label>Name</label>
						<input type="text" id="name" class="form-control" >
					</div>
					<div class="form-group">
						<label>Detail</label>
						<textarea id="detail" class="form-control"></textarea>
					</div>
					<div class="form-group">
						<label>Autor</label>
						<input type="text" id="author" class="form-control" >
					</div>


					<button type="submit" id="save" onclick="saveDate()" class="btn btn-primary">submit</button>
					<button type="submit" id="update" onclick="updateDate()" class="btn btn-warning">update</button>

				</form>
			</div>
		</div>
	</div>
<script type="text/javascript">
	$('#datatable').DataTable();
	$('#save').show();
	$('#update').hide();
	$('.myid').hide();
	$.ajaxSetup({
		headers:{
			"X-CSRF-TOKEN":$('meta[name="csrf-token"]').attr('content')
		}
	});
	function viewData(){
		
		$.ajax({

			type:'GET',
			dataType:'json',
			url:"/curds",

			success:function(response){
				var rows="";
				$.each(response,function(key,value){
					rows=rows+"<tr>";
					rows=rows+"<td>"+ value.id+"</td>";
					rows=rows+"<td>"+ value.name+"</td>";
					rows=rows+"<td>"+ value.detail+"</td>";
					rows=rows+"<td>"+ value.author+"</td>";
					rows=rows+"<td>";
					rows=rows+"<button type='button' onclick='editData("+value.id+","+value.name+","+value.detail+","+value.author+")'></buton>";
					rows=rows+"<button type='button' onclick='deleteData("+value.id+")'></buton>";
					rows=rows+"</td></tr>";
				});
				$('tbody').html(rows);
			}
		})
	}
	viewData();
function saveData(){
	var name=$('#name').val();
	var detail=$('#detail').val();
	var author=$('#author').val();
		$.ajax({
			type:'POST',
			dataType:'json',
			data:{name:name,detail:detail,author:author},
			url:'/curds',
			success: function(response){
				viewData();
				clearData();
				$('#save').show();
			}
		})	
	}
	function clearData(){
		$('#id').val('');
		$('#name').val('');
		$('#detail').val('');
		$('#author').val('');
	}

	function editData(id){
		$('#save').hide();
		$('#update').show();
		$('.myid').show();
		$.ajax({
			type:"GET",
			dataType:'json',
			url:"/curds/"+id+"/edit",
			success:function(response){
				$('#id').val(response.id);
				$('#name').val(response.name);
				$('#detail').val(response.detail);
				$('#author').val(response.author);
			}
		})

	}
	function updateData(){
		var id=$('#id').val();
		var name=$('#name').val();
		var detail=$('#detail').val();
		var author=$('#author').val();
		$.ajax({
			type:"PUT",
			dataType:"json",
			data:{name:name,detail:detail,author:author},
			url:'/cruds/'+id,
			success:function(response){
				viewData();
				clearData();
				$('#save').show();
				$('#update').hide();
				$('.myid').hide();

			}
		})
		
	}

	function deleteData(id){
		$.ajax({
			type:"DELETE",
			dataType:"json",
			url:'/curds'+id,
			success:function(response){
				viewData();
			}
		})
		
	}

</script>

</body>
</html>
@endsection