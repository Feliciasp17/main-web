@extends('layouts.mainweb')

@section('title')
	CEG 2021 - Peserta
@endsection

@section('content')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css">
<br>
<div class="container">
	<h1>Daftar Peserta</h1>
	@if (session('success'))
		<div class="alert alert-success" role="alert">
			{{ session('success') }}
		</div>
	@elseif (session('error'))
		<div class="alert alert-danger" role="alert">
			{{ session('error') }}
		</div>
	@endif
	 <div style="background-color: white; padding:10px" class="table-responsive">
		<table id="peserta" style="width: 100%;" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th>No.</th>
					<th>Nama Tim</th>
					<th>Sekolah</th>
					<th>Asal</th>
					<th>TM (17/04/2021)</th>
					<th>Day 1 (23/04/2021)</th>
					<th>Day 2 (24/04/2021)</th>
					<th>Day 3 (25/04/2021)</th>
					<th style="min-width:150px" class="text-center">Action</th>
				</tr>
			</thead>
			<tbody>
				@foreach($datapeserta as $dp)
					<tr>
						<td> {{$loop->iteration}} </td>
						<td> {{$dp->nama}} </td>
						<td> {{$dp->sekolah}} </td>
						<td> {{$dp->kab_kota->nama}} - {{$dp->kab_kota->provinsi->nama}} </td>
						<th>@if($dp->absen_tm != null) <font style="color:green">{{date('H:i:s', strtotime($dp->absen_tm))}}</font> @else <font style="color: red">No</font> @endif</th>
						<th>@if($dp->absen_day1 != null) <font style="color:green">{{date('H:i:s', strtotime($dp->absen_day1))}}</font> @else <font style="color: red">No</font> @endif</th>
						<th>@if($dp->absen_day2 != null) <font style="color:green">{{date('H:i:s', strtotime($dp->absen_day2))}}</font> @else <font style="color: red">No</font> @endif</th>
						<th>@if($dp->absen_day3 != null) <font style="color:green">{{date('H:i:s', strtotime($dp->absen_day3))}}</font> @else <font style="color: red">No</font> @endif</th>
						<td class="text-center">
							<button class="btn btn-danger btn-sm mb-2" onclick="getDetailPeserta({{$dp->id}})" data-target="#exampleModal" data-toggle="modal">Detail</button>
							@can('PintuPubreg')
								<div class="mb-2"><a class="btn btn-primary btn-sm" data-id="{{$dp->id}}" href="{{asset('file_zip/'.$dp->file_zip->nama)}}"><i class="far fa-file-archive"></i></a>
								@if ($dp->status_file != 'confirmed')
								<form action="{{route('admin.confirm', [$dp->id, 'zip'])}}" style="all: unset" method="post">
									@csrf
									<button type="submit" class="btn btn-success btn-sm" data-id="{{$dp->id}}" onclick="if(!confirm('Are you sure want to confirm this team files?')) return false;">Confirm <i class="far fa-file-archive"></i></button>
								</form>
								@endif
								</div>
								@if ($dp->file_bukti_id != null)
									<a class="btn btn-warning btn-sm" data-id="{{$dp->id}}" href="{{asset('file_bukti/'.$dp->file_bukti->nama)}}">$</a>
									@if ($dp->status != 'confirmed')
									<form action="{{route('admin.confirm', [$dp->id, 'bayar'])}}" style="all: unset" method="post">
										@csrf
										<button type="submit" class="btn btn-success btn-sm" data-id="{{$dp->id}}" onclick="if(!confirm('Are you sure want to confirm this team payment?')) return false;">Confirm $</button>
									</form>
									@endif
								@endif
							@endcan
							@if(Auth::user()->role == "bph")
								<button class="btn btn-warning btn-sm mb-2" onclick="getDetailPeserta2({{$dp->id}})" data-target="#exampleModal" data-toggle="modal">Pelanggaran</button>
							@endif
						</td>
					</tr>
				@endforeach	
			</tbody>
		</table>
	 </div>
 </div>


</div>
@endsection

@section('modal')
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg" style="min-width: 100%;" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="exampleModalLabel">Detail Tim</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body" id="modalContent">
		  
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		</div>
	  </div>
	</div>
  </div>
@endsection

@section('script')
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
<script type="text/javascript">
    $(document).ready( function () {
        $('#peserta').DataTable();
    });

	function getDetailPeserta(id){
		$.ajax({
			type:'POST',
			url:'{{route("admin.detailpeserta")}}',
			data:{'_token':'<?php echo csrf_token() ?>',
				'id':id
				},
			success: function(data){
				$('#modalContent').html(data.msg)
			},
			error: function(xhr) {
				console.log(xhr);
			}
		});
	}

	function getDetailPeserta2(id){
		$.ajax({
			type:'POST',
			url:'{{route("admin.detailpeserta2")}}',
			data:{'_token':'<?php echo csrf_token() ?>',
				'id':id
				},
			success: function(data){
				$('#modalContent').html(data.msg)
			},
			error: function(xhr) {
				console.log(xhr);
			}
		});
	}
</script>
@endsection