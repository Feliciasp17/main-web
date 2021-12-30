@extends('layouts.mainweb')

@section('title')
	CEG 2021 - Catat Pelanggaran
@endsection

@section('content')
<br><br><br>
<br>
@if (session('success'))
<div class='alert alert-success'>
{{session('success')}}<br>
</div>
@elseif (session('error'))
<div class='alert alert-danger'>
{{session('error')}}<br>
</div>
@endif
<div class="container">
	<form action="{{route('pelanggaran.save')}}" enctype="multipart/form-data" class="p-5 bg-white" method="post">
	@csrf
		<div class="form-group">
			<label for="">Pilih Tim</label>
			<select name="tim" id="tim" class="form-control" required>
				<option value="">--Pilih  Tim--</option>
			@foreach($tims as $tim)
				<option value="{{$tim->id}}">{{$tim->nama}}</option>
			@endforeach
			</select>
		</div>
		<div class="form-group">
			<label for="">Pilih Anggota</label>
			<select name="anggota" id="anggota" class="form-control" required>
				<option value="">--Pilih  Anggota--</option>
			</select>
		</div>
		<div class="form-group">
			<label for="">Pilih Waktu</label>
			<input type="datetime-local" class="form-control" data-format="dd/MM/yyyy hh:mm:ss" name="dtime" required>
    	</div>
		<div class="form-group">
			<label for="">Pilih Jenis Pelanggaran</label>
			<select name="pelanggaran" id="pelanggaran" class="form-control" required>
			<option value="">--Pilih  Pelanggaran--</option>
			@foreach($pelanggarans as $pelanggaran)
				<option value="{{$pelanggaran->id}}">@php echo ucfirst($pelanggaran->jenis) @endphp - {{$pelanggaran->pelanggaran}}</option>
			@endforeach
				<option value="custom">--Custom Pelanggaran / Tambah Pelanggaran Baru--</option>
			</select>
		</div>
		<div class="form-group" id="new_pelanggaran_modal" style="display:none; background-color:lightgrey;">
			<label for="">Pelanggaran Baru</label>
			<input type="text" class="form-control" name="new_pelanggaran" placeholder="Deskripsi pelanggaran">
			<label for="">Tipe Pelanggaran Baru</label>
			<select name="new_pelanggaran_type" class="form-control">
				<option value="">--Pilih Tipe--</option>
				<option value="ringan">Ringan</option>
				<option value="sedang">Sedang</option>
				<option value="berat">Berat</option>
			</select>
		</div>
		<div class="form-group">
			<label for="">Keterangan (optional)</label>
			<input type="text" class="form-control" name="keterangan">
    	</div>
		<div class="form-group">
			<button class="btn btn-primary">Submit</button>
		</div>
	</form>
</div>
@endsection

@section('script')
<script>
	$('#tim').on('change', function(){
		$.ajax({
			type:'POST',
			url:'{{route("pelanggaran.get_anggota")}}',
			data:{'_token':'<?php echo csrf_token() ?>',
				'id':$(this).val()
				},
			success: function(data){
				$('#anggota').html(data.msg);
			},
			error: function(xhr) {
				console.log(xhr);
			}
		});
	});

	$('#pelanggaran').on('change', function(){
		val = document.getElementById('pelanggaran').value;
		console.log(val);
		var div = document.getElementById("new_pelanggaran_modal");

		if (val == "custom") {
			div.style.display = "block";
		}
		else {
			div.style.display = "none";
		}
	});
</script>
@endsection