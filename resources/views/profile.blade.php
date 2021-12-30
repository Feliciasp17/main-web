@extends('layouts.mainweb')

@section('title')
	CEG 2021 - Profile
@endsection

@section('style')
    <style>
        .container-top
        {
            align-content: center;
            
            color: #1ec27a;
            font-size: 20px;
            padding: 10px;
            display: flex;
            justify-content: center;
            
        }
        .container-middle
        {
			text-align: center;
        }
        .content{
            position: relative;
            text-align: center;
            
        }
        .content h2{
            position: absolute;
            color: #fff;
            transform: translate(-50%, -50%);
            font-size: 60px;
		}
		@media(max-width:520px){
			.content h2 {
				font-size: 40px;
			}
		}
		@media(max-width:350px){
			.content h2 {
				font-size: 30px;
			}
		}
        .content h2:nth-child(1)
        {
            color: transparent;
            -webkit-text-stroke: 2px  #1ec27a;
        }
        .content h2:nth-child(2)
        {
            color:  #1ec27a;
            animation: animate 4s ease-in-out infinite;
		}
        .glow{
            transition: 1s;
        }
        .glow:hover { 
            text-shadow: 0 0 20px #ffffff;
            
            }
        @keyframes animate
        {
            0%,100%
            {
                clip-path: polygon(0% 99%, 1% 53%, 12% 45%, 25% 41%, 40% 43%, 51% 53%, 62% 62%, 71% 65%, 85% 65%, 94% 57%, 100% 50%, 100% 100%);
            }
            50%
            {
                clip-path: polygon(0% 99%, 0 67%, 11% 58%, 24% 55%, 38% 61%, 49% 60%, 59% 54%, 71% 47%, 81% 41%, 94% 48%, 100% 56%, 100% 100%);
            }
		}
		hr {
			margin-top: 1rem;
			margin-bottom: 1rem;
			border-top: 3px solid #1ec27a;
		}
    </style>
@endsection

@section('content')
<br><br><br>
    <div class="container">
        @if (Auth::user()->role == 'peserta')
		<div class="row">
            {{-- <div class="col-md-12 container-top">
                <div class="content mb-4">
                    <h2>TEAM&nbsp;:&nbsp;{{$tim->nama}}</h2>
					<h2>TEAM&nbsp;:&nbsp;{{$tim->nama}}</h2>
				</div>
			</div> --}}
			<div class="col-md-12 container-top glow">
				<h2>TEAM : {{$tim->nama}}</h2>
			</div>
        </div>
        <hr>
        <div class="row">
			@if (session('success'))
				<div class='alert alert-success col-12'>
					{{session('success')}}
				</div>
			@endif
			@error('bukti')
				<div class="col-12 alert alert-danger">File Bukti Pembayaran harus bertipe gambar .jpg</div>
			@enderror
			@error('zip')
				<div class="col-12 alert alert-danger">File Berkas Pendaftaran harus bertipe .zip</div>
			@enderror
            <div class="col-12 container-middle d-flex align-items-center justify-content-center mb-3">
				<h3>
					<ul>
						<li><button style="all: unset; cursor: pointer; margin-right:10px" data-toggle="modal" data-target="#modalAnggota"><i class="far fa-question-circle"></i></button>Anggota :</li>
						<div class="glow">
                        @foreach($pesertas as $peserta)
							<li>{{$peserta->nama}}</li>
                        @endforeach
						</div>
					</ul>
                </h3>
			</div>
			<div class="col-6 container-middle">
				@if($tim->status_file == 'pending')
					<h3><button style="all: unset; cursor: pointer; margin-right:10px" data-toggle="modal" data-target="#modalStatusFile"><i class="far fa-question-circle"></i></button>Status Berkas : 
						<div class="glow">
							Pending
                            <form action="{{route ('registration.file')}}" enctype="multipart/form-data" method="POST" class="contact-form mt-3">
								@csrf
								<input type="hidden" name="timidf" value="{{$tim->id}}">
								<div class="row">
									<div class="col">
										<div>
											<h6><input type="file" style="color: white" name="zip" accept=".zip" required></h6>
											<small>
												<div style="text-align: left; font-size:0.75em">
												<b>NB : Tidak perlu upload apa-apa jika di awal registrasi sudah pernah upload folder zip, KECUALI jika diminta re-upload oleh panitia</b><br><br>
												<b>Keterangan :</b>
												<ol>
													<li>Pas foto 3x4 dan scan kartu pelajar dimasukkan ke dalam satu folder dan diconvert ke bentuk zip (berisikan milik semua anggota), dengan format nama:</li>
													<li>Format nama tiap foto: Pas Foto_Nama Tim_Nama Anggota.</li>
													<li>Format nama tiap kartu pelajar: Kartu Pelajar_Nama Tim_Nama Anggota.</li>
													<li>File extension .zip diberi nama dengan format: CEG_2021_Nama Tim.</li>
												</ol>
												</div>
											</small>
										</div>
									</div>
								</div>
								<div class="row mt-2">
									<div class="col d-flex justify-content-center">
										<button type="submit" class="submit-btn finish-btn" style="padding: 10px; font-size:0.75em">- Upload Berkas -</button>
									</div>
								</div>
							</form>
                        </div>
					</h3>
				@else
				<h3>
					<button style="all: unset; cursor: pointer; margin-right:10px" data-toggle="modal" data-target="#modalStatusFile"><i class="far fa-question-circle"></i></button>Status Berkas :<div class="glow">Confirmed</div>
				</h3>
				@endif
			</div>
			<div class="col-6 container-middle">
				<div>
					<h3><button style="all: unset; cursor: pointer; margin-right:10px" data-toggle="modal" data-target="#modalStatusBayar"><i class="far fa-question-circle"></i></button>Status Bayar :
						<div class="glow">
                            @if($status == 'lunas')
                                Lunas
                            @else
                                Belum Lunas / Dalam Proses Konfirmasi
                                <form action="{{route ('registration.bukti')}}" enctype="multipart/form-data" method="POST" class="contact-form mt-3">
                                @csrf
                                <input type="hidden" name="timid" value="{{$tim->id}}">
                                <div class="row">
                                    <div class="col d-flex justify-items-center">
										<div>
											<h6><input type="file" style="color: white" name="bukti" accept=".jpg,.jpeg" required></h6>
											<small>
												<div style="text-align: left; font-size:0.75em">
												<b>Keterangan Format Nama File:</b><br>
												<ol>
													@if($tim->tiga_tim == null)
														<li>Pembayaran_CEG_2021_Nama Tim_Nama Rekening Pentransfer</li>
													@else
														<li>Pembayaran_CEG_2021_Nama Tim1_Nama Tim2_Nama Tim3_Nama Rekening Pentransfer</li>
													@endif
													<li>Extension file harus berupa <b>gambar .jpg !</b></li>
												</ol>
												</div>
											</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col d-flex justify-content-center">
                                        <button type="submit" class="submit-btn finish-btn" style="padding: 10px; font-size:0.75em">- Upload Bukti -</button>
                                    </div>
                                </div>
                                </form>
                            @endif
                        </div>
					</h3>
				</div>
			</div>
		</div>
		<div class="row d-flex align-items-center justify-content-center">
			<div class="col-10 mt-2 text-center">
				<h5>History Pelanggaran</h5>
				<table class="table table-sm text-center text-white">
					<tr>
						<th>No.</th>
						<th>Pelanggaran</th>
						<th>Jenis</th>
						<th>Waktu</th>
					</tr>
					@if(count($pelanggarans)>1)
					@for($i=0; $i<=count($pelanggarans)-1; $i++)
					<tr>
						<td>{{$i+1}}</td>
						<td>{{$pelanggarans[$i]['pelanggaran']}}</td>
						<td>{{ucfirst($pelanggarans[$i]['jenis'])}}</td>
						<td>{{date('d-m-Y H:i:s', strtotime($pelanggarans[$i]['created_at']))}}</td>
					</tr>
					@endfor
					@else
					<tr>
						<td colspan='4'>Belum ada catatan pelanggaran.</td>
					</tr>
					@endif
				</table>
			</div>
		</div>
		@else
			<div class="row">
				<div class="col text-center">
					<a href="#" class="btn btn-dark" role="button">Change Password</a>
				</div>
			</div>
		@endif
    </div>
@endsection

@section('modal')
<div class="modal fade" id="modalAnggota" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Anggota Tim</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			Nama anggota yang didaftarkan dan tertera pada website akan digunakan untuk keperluan administrasi panitia dan pencetakkan sertifikat peserta. Mohon pastikan agar nama sudah sesuai dengan identitas pribadi peserta. Jika terdapat kesalahan/kekeliruan, hubungi : <b>Yenni 081934692608</b>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalStatusFile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Status Berkas</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			Berkas yang dimaksud merupakan file .zip yang berisikan Pas foto 3x4 dan scan kartu pelajar setiap anggota dalam suatu tim. Peserta <b>tidak perlu upload apa-apa</b> jika di awal registrasi sudah pernah upload folder zip, KECUALI jika diminta re-upload oleh panitia.<br>
			Status berkas akan segera dikonfirmasi oleh panitia.
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalStatusBayar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Status Pembayaran</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			Status pembayaran akan dikonfirmasi oleh panitia <b>lewat email akun tim</b> maksimal 1 minggu setelah peserta meng-upload bukti pembayaran. Suatu tim <b>resmi</b> menjadi peserta CEG 2021 apabila <b>status berkas dan status pembayaran sudah terkonfirmasi semua</b>.
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
@endsection