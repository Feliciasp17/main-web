@extends('layouts.mainweb')

@section('title')
CEG 2021 - Rekapan (belum selesai)
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
  <form action="{{ route('admin.export') }}" enctype="multipart/form-data" class="p-5 bg-white" method="get">
    @csrf
    <div class="form-group">
      <label for="">Urutkan Berdasarkan</label>
      <select name="sortby" id="sortby" class="form-control">
        <option value="">--Urutkan Berdasarkan--</option>
        <option value="tim">Nama Tim</option>
        <option value="jenis">Tipe Pelanggaran</option>
        <option value="pelanggaran">Deskripsi Pelanggaran</option>
        <option value="waktu">Waktu Pelanggaran Terjadi</option>
      </select>
    </div>
    <div class="form-group" id="bytim" style="display:none; background-color:lightgrey;">
      <label for="">Pilih Tim</label>
      <select name="tim" id="tim" class="form-control">
        <option value="">--Pilih Tim--</option>
        @foreach($tims as $tim)
        <option value="{{$tim->id}}">{{$tim->nama}}</option>
        @endforeach
      </select>
    </div>
    <div class="form-group" id="byjenis" style="display:none; background-color:lightgrey;">
      <label for="">Tipe Pelanggaran</label>
      <select name="tipe" id="tipe" class="form-control">
        <option value="">--Pilih Tipe--</option>
        <option value="ringan">Ringan</option>
        <option value="sedang">Sedang</option>
        <option value="berat">Berat</option>
      </select>
    </div>
    <div class="form-group" id="bypelanggaran" style="display:none; background-color:lightgrey;">
      <label for="">Pilih Jenis Pelanggaran</label>
      <select name="pelanggaran" id="pelanggaran" class="form-control">
        <option value="">--Pilih Pelanggaran--</option>
        @foreach($pelanggarans as $pelanggaran)
				<option value="{{$pelanggaran->id}}">@php echo ucfirst($pelanggaran->jenis) @endphp - {{$pelanggaran->pelanggaran}}</option>
			  @endforeach
      </select>
    </div>
    <div class="form-group" id="bywaktu" style="display:none; background-color:lightgrey;">
      <label for="">Pilih Waktu Awal</label>
      <input type="datetime-local" class="form-control" data-format="dd/MM/yyyy hh:mm:ss" name="start">
      <label for="">Pilih Waktu Akhir</label>
      <input type="datetime-local" class="form-control" data-format="dd/MM/yyyy hh:mm:ss" name="end">
    </div>
    <div class="form-group">
      <button class="btn btn-primary">Download List Pelanggaran</button>
    </div>
  </form>
</div>
@endsection

@section('script')
<script>
  $('#sortby').on('change', function(){
		val = document.getElementById('sortby').value;
    tim = document.getElementById("bytim");
    jenis = document.getElementById("byjenis");
    pelanggaran = document.getElementById("bypelanggaran");
    waktu = document.getElementById("bywaktu");

		if (val == "tim") {
			tim.style.display = "block";
      jenis.style.display = "none";
      pelanggaran.style.display = "none";
      waktu.style.display = "none";
		}
		else if (val == "jenis") {
			tim.style.display = "none";
      jenis.style.display = "block";
      pelanggaran.style.display = "none";
      waktu.style.display = "none";
		}
    else if (val == "pelanggaran") {
			tim.style.display = "none";
      jenis.style.display = "none";
      pelanggaran.style.display = "block";
      waktu.style.display = "none";
		}
    else if (val == "waktu") {
			tim.style.display = "none";
      jenis.style.display = "none";
      pelanggaran.style.display = "none";
      waktu.style.display = "block";
		}
	});
</script>
@endsection