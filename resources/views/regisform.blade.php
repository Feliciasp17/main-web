@extends('layouts.mainweb')

@section('title')
    CEG 2021 - Registration
@endsection

@section('style')
<link rel="stylesheet" href="{{asset('mainweb/css/registration.css')}}">
@endsection

@section('content')
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
	<div class="row">
		<div class="col">
			<h1>Registrasi CEG 2021 - @if ($status == "1tim") 1 Tim @else 3 Tim @endif</h1>
			<form action="{{ route('registration.save') }}" enctype="multipart/form-data" method="post" class="contact-form">
			@csrf
				<div class="row">
					<div class="col-sm-3 d-flex align-items-center" required>
						<h4>Nama Sekolah</h4>
					</div>
					<div class="col-sm-9">
						<input type="text" name="sname" class="form-control" value="{{ old('sname') }}" required>
					</div>
					<div class="col-sm-3 d-flex align-items-center">
						<h4>Alamat Sekolah</h4>
					</div>
					<div class="col-sm-9">
						<input type="text" name="saddress" class="form-control" value="{{ old('saddress') }}" required>
					</div>
					<div class="col-sm-3 d-flex align-items-center">
						<h4>Provinsi Asal</h4>
					</div>
					<div class="col-sm-9">
						<select class="form-control select-input" id="provinsi"  name="province" value="{{ old('province') }}" required>
							@foreach ($provinsi as $item)
								@if ($item->id == 6)
									<option value="{{$item->id}}" selected>{{$item->nama}}</option>
								@else
									<option value="{{$item->id}}">{{$item->nama}}</option>
								@endif
							@endforeach
						</select>
					</div>
					<div class="col-sm-3 d-flex align-items-center">
						<h4>Kota Asal</h4>
					</div>
					<div class="col-sm-9">
						<select class="form-control select-input" id="kota" name="city" value="{{ old('city') }}" required>
							@foreach ($kota as $item)
								@if ($item->id == 97)
									<option value="{{$item->id}}" selected>{{$item->nama}}</option>
								@else
									<option value="{{$item->id}}">{{$item->nama}}</option>
								@endif
							@endforeach
						</select>
					</div>
					@if ($status == "1tim")
						<div class="col-sm-3 d-flex align-items-center">
							<h4>Nama Tim</h4>
						</div>
						<div class="col-sm-9 mb-4">
							<input type="text" class="form-control nama_tim" name="tname" value="{{ old('tname') }}" required>
							<small>NB : Nama Tim hanya boleh menggunakan gabungan alfabet dan/atau angka, tanpa karakter spesial !</small>
						</div>
					@endif
				</div>
				@if ($status == "1tim")
				<input type="hidden" name="stat" value="1tim">
					<div class="row">
						<div class="col-lg-4">
							<h3>Anggota 1 (Ketua)</h3>
							<div class="row">
								<div class="col">
									<h4>Nama Lengkap</h4>
									<input type="text" class="form-control" name="p1name" value="{{ old('p1name') }}" required>
									<h4>Alamat</h4>
									<input type="text" class="form-control" name="p1address" value="{{ old('p1address') }}" required>
									<h4>Nomor Whatsapp</h4>
									<input type="number" class="form-control" name="p1whatsapp" value="{{ old('p1whatsapp') }}" required>
									<h4>ID Line</h4>
									<input type="text" class="form-control" name="p1line" value="{{ old('p1line') }}" required>
									<h4>Email</h4>
									<input type="email" class="form-control" name="p1email" value="{{ old('p1email') }}" required>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<h3>Anggota 2</h3>
							<div class="row">
								<div class="col">
									<h4>Nama Lengkap</h4>
									<input type="text" class="form-control" name="p2name" value="{{ old('p2name') }}" required>
									<h4>Alamat</h4>
									<input type="text" class="form-control" name="p2address" value="{{ old('p2address') }}" required>
									<h4>Nomor Whatsapp</h4>
									<input type="number" class="form-control" name="p2whatsapp" value="{{ old('p2whatsapp') }}" required>
									<h4>ID Line</h4>
									<input type="text" class="form-control" name="p2line" value="{{ old('p2line') }}" required>
									<h4>Email</h4>
									<input type="email" class="form-control" name="p2email" value="{{ old('p2email') }}" required>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<h3>Anggota 3</h3>
							<div class="row">
								<div class="col">
									<h4>Nama Lengkap</h4>
									<input type="text" class="form-control" name="p3name" value="{{ old('p3name') }}" required>
									<h4>Alamat</h4>
									<input type="text" class="form-control" name="p3address" value="{{ old('p3address') }}" required>
									<h4>Nomor Whatsapp</h4>
									<input type="number" class="form-control" name="p3whatsapp" value="{{ old('p3whatsapp') }}" required>
									<h4>ID Line</h4>
									<input type="text" class="form-control" name="p3line" value="{{ old('p3line') }}" required>
									<h4>Email</h4>
									<input type="email" class="form-control" name="p3email" value="{{ old('p3email') }}" required>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<h3>Upload File .zip</h3>
							<input type="file" style="color: white" name="zip" value="{{ old('zip') }}" accept=".zip" required>
							@error('zip')
								<div class="col-12 alert alert-danger">File Berkas Pendaftaran harus bertipe .zip</div>
							@enderror
							<div>
								<small>
									Keterangan : <br>
									1. Pas foto 3x4 dan scan kartu pelajar dimasukkan ke dalam satu folder dan diconvert ke bentuk zip (berisikan milik semua anggota), dengan format nama: <br>
									-) Format nama tiap foto: Pas Foto_Nama Tim_Nama Anggota. <br>
									-) Format nama tiap kartu pelajar: Kartu Pelajar_Nama Tim_Nama Anggota. <br>
									2. File zip diberi nama dengan format: CEG_2021_Nama Tim.
								</small>
							</div>
						</div>
					</div>
				@else
				<input type="hidden" name="stat" value="3tim">
					@for ($i = 1; $i <= 3; $i++)
						<div class="row mt-4">
							<div class="col-12">
								<h2>Tim {{$i}}</h2>
								<hr>
							</div>
							<div class="col-sm-3 d-flex align-items-center">
								<h4>Nama Tim</h4>
							</div>
							<div class="col-sm-9 mb-4">
								<input type="text" class="form-control nama_tim" name="tname{{$i}}" value="{{ old('tname'.$i) }}" required>
								<small>NB : Nama Tim hanya boleh menggunakan gabungan alfabet dan/atau angka, tanpa karakter spesial !</small>
							</div>
							<div class="col-lg-4">
								<h3>Anggota 1 (Ketua)</h3>
								<div class="row">
									<div class="col">
										<h4>Nama Lengkap</h4>
										<input type="text" class="form-control" name="p1name{{$i}}" value="{{ old('p1name'.$i) }}" required>
										<h4>Alamat</h4>
										<input type="text" class="form-control" name="p1address{{$i}}" value="{{ old('p1address'.$i) }}" required>
										<h4>Nomor Whatsapp</h4>
										<input type="number" class="form-control" name="p1whatsapp{{$i}}" value="{{ old('p1whatsapp'.$i) }}" required>
										<h4>ID Line</h4>
										<input type="text" class="form-control" name="p1line{{$i}}" value="{{ old('p1line'.$i) }}" required>
										<h4>Email</h4>
										<input type="email" class="form-control" name="p1email{{$i}}" value="{{ old('p1email'.$i) }}" required>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<h3>Anggota 2</h3>
								<div class="row">
									<div class="col">
										<h4>Nama Lengkap</h4>
										<input type="text" class="form-control" name="p2name{{$i}}" value="{{ old('p2name'.$i) }}" required>
										<h4>Alamat</h4>
										<input type="text" class="form-control" name="p2address{{$i}}" value="{{ old('p2address'.$i) }}" required>
										<h4>Nomor Whatsapp</h4>
										<input type="number" class="form-control" name="p2whatsapp{{$i}}" value="{{ old('p2whatsapp'.$i) }}" required>
										<h4>ID Line</h4>
										<input type="text" class="form-control" name="p2line{{$i}}" value="{{ old('p2line'.$i) }}" required>
										<h4>Email</h4>
										<input type="email" class="form-control" name="p2email{{$i}}" value="{{ old('p2email'.$i) }}" required>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<h3>Anggota 3</h3>
								<div class="row">
									<div class="col">
										<h4>Nama Lengkap</h4>
										<input type="text" class="form-control" name="p3name{{$i}}" value="{{ old('p3name'.$i) }}" required>
										<h4>Alamat</h4>
										<input type="text" class="form-control" name="p3address{{$i}}" value="{{ old('p3address'.$i) }}" required>
										<h4>Nomor Whatsapp</h4>
										<input type="number" class="form-control" name="p3whatsapp{{$i}}" value="{{ old('p3whatsapp'.$i) }}" required>
										<h4>ID Line</h4>
										<input type="text" class="form-control" name="p3line{{$i}}" value="{{ old('p3line'.$i) }}" required>
										<h4>Email</h4>
										<input type="email" class="form-control" name="p3email{{$i}}" value="{{ old('p3email'.$i) }}" required>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<h3>Upload File .zip</h3>
								<input type="file" style="color: white" name="zip{{$i}}" accept=".zip" value="{{ old('zip'.$i) }}" required>
								@error('zip'.$i)
									<div class="col-12 alert alert-danger">File Berkas Pendaftaran harus bertipe .zip</div>
								@enderror
								<div>

									<small>
										Keterangan : <br>
										1. Pas foto 3x4 dan scan kartu pelajar dimasukkan ke dalam satu folder dan diconvert ke bentuk zip (berisikan milik semua anggota), dengan format nama: <br>
										-) Format nama tiap foto: Pas Foto_Nama Tim_Nama Anggota. <br>
										-) Format nama tiap kartu pelajar: Kartu Pelajar_Nama Tim_Nama Anggota. <br>
										2. File zip diberi nama dengan format: CEG_2021_Nama Tim.
									</small>
								</div>
							</div>
						</div>
					@endfor
				@endif
				<div class="row mt-4">
					<div class="col d-flex justify-content-center">
						<button type="submit" class="submit-btn finish-btn">- Daftar Sekarang -</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
@endsection

@section('script')
<script>
	$('#provinsi').on('change', function(){
		$.ajax({
			type:'POST',
			url:'{{route("registration.get_kota")}}',
			data:{'_token':'<?php echo csrf_token() ?>',
				'id':$(this).val()
				},
			success: function(data){
				$('#kota').html(data.msg);
			},
			error: function(xhr) {
				console.log(xhr);
			}
		});
	});

	$('.nama_tim').on('keyup', function(){
		$.ajax({
			type:'POST',
			url:'{{route("registration.cek_nama_tim")}}',
			data:{'_token':'<?php echo csrf_token() ?>',
				'nama':$(this).val()
				},
			success: function(data){
				if (data.status == "kembar") {
					alert('Nama tim ini sudah terpakai ! Mohon diganti');
				}
			},
			error: function(xhr) {
				console.log(xhr);
			}
		});
	});
</script>
@endsection