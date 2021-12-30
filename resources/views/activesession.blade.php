@extends('layouts.mainweb')

@section('title')
CEG 2021 - Active Session
@endsection

@section('style')
<link rel="stylesheet" href="{{asset('mainweb/css/absensiday.css')}}">
<link rel="stylesheet" href="{{asset('mainweb/css/semifinal.css')}}">
<link rel="stylesheet" href="{{asset('mainweb/css/final.css')}}">
<link rel="stylesheet" href="{{asset('mainweb/css/rallygambes.css')}}">
@endsection

@section('content')
	<div id="sesi">
		{{-- Ini kondisi untuk Absensi --}}
		@if($sessions->tipe == 'absen')
			<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
				<div class="container-fluid text-center"> 
					{{-- <h3 id="cnd" class="h1-responsive font-weight-bold wow fadeInLeft" >CEG 2021</h3> --}}
					<p class="lead faq-text">ABSENSI</p>
					@if ($sessions->keterangan == "TM")
						@php
							$arr_judul = str_split("TECHNICAL MEETING");
						@endphp
						<div class="wavtm">
							@foreach ($arr_judul as $item)
								@if ($item != " ")
									<span style="--i:{{$loop->iteration}};">{{$item}}</span>
								@else
									<span style="--i:{{$loop->iteration}};">&nbsp;</span>
								@endif
							@endforeach
						</div>
					@else
						<div class="wavtm">
							<span style="--i:1;">D</span>
							<span style="--i:2;">A</span>
							<span style="--i:3;">Y</span>
							<span style="--i:9;">&nbsp;</span>
							<span style="--i:10;">{{$sessions->keterangan}}</span>
						</div>
					@endif
					<p class="lead pb-4 textket" id="tekan" name="tekan">
					Klik tombol di bawah untuk mendapatkan <i>link</i> acara hari ini.
					</p>
					<div class="my-5"></div>
					<h4 class="text-white">{{$link[0]->nama}}</h4>
					<p class="lead">
						<button type="button" class="btn mr-lg-2 custom-btn" id="btnAbsen" name="btnAbsen">Klik untuk Absen</button>
					</p>
					<p class="lead" id="linkAbsen" name="linkAbsen">
						<a href="{{$link[0]->url}}" id="linkabsen" name="linkabsen" visibility="hidden" target="_blank">{{$link[0]->url}}</a>
						@if ($link[0]->id_zoom != null)
							<h4 id="zoomabsen">Zoom ID : {{$link[0]->id_zoom}}</h4>
						@endif
						@if ($link[0]->pass_zoom != null)
							<h4 id="passabsen">Passcode : {{$link[0]->pass_zoom}}</h4>
						@endif
					</p>
					{{-- @if ($sessions->keterangan != 1)
					<p class="lead mt-5">
						<h4 class="text-white">{{$link[count($link)-1]->nama}}</h4>
						<a href="{{$link[count($link)-1]->url}}" style="font-size: 1.25em" target="_blank">{{$link[count($link)-1]->url}}</a>
						@if ($link[count($link)-1]->id_zoom != null)
							<h4 class="mt-3">Zoom ID : {{$link[count($link)-1]->id_zoom}}</h4>
						@endif
						@if ($link[count($link)-1]->pass_zoom != null)
							<h4>Passcode : {{$link[count($link)-1]->pass_zoom}}</h4>
						@endif
					</p>
					@endif --}}
					<p class="lead py-4">
						Selamat Datang Peserta CEG 2021.
					</p>
				</div>
			</header>
		@endif

		{{-- Ini kondisi untuk Kuesioner --}}
		@if($sessions->tipe == "kuesioner")
			<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
				<div class="container-fluid text-center"> 
					{{-- <h3 id="cnd" class="h1-responsive font-weight-bold wow fadeInLeft" >CEG 2021</h3> --}}
					<p class="lead faq-text">KUESIONER</p>
					@if($sessions->keterangan == "TM")
					    @php
							$arr_judul = str_split("TECHNICAL MEETING");
						@endphp
						<div class="wavtm">
							@foreach ($arr_judul as $item)
								@if ($item != " ")
									<span style="--i:{{$loop->iteration}};">{{$item}}</span>
								@else
									<span style="--i:{{$loop->iteration}};">&nbsp;</span>
								@endif
							@endforeach
						</div>
					@else
					    <div class="wavtm">
    						<span style="--i:1;">D</span>
    						<span style="--i:2;">A</span>
    						<span style="--i:3;">Y</span>
    						<span style="--i:4;">&nbsp;</span>
    						<span style="--i:10;">{{$sessions->keterangan}}</span>
    					</div>
					@endif
					<div class="my-5"></div>
					<h4>Link Kuesioner :</h4>
					<p class="lead" style="font-size: 1.5em">
						@foreach($link as $l)
							<a href="{{$l->url}}" target="_blank" id="linkKuesioner" name="linkKuesioner">{{$l->url}}</a>
						@endforeach
					</p>
					<p class="lead py-4">
						<b>Kuesioner WAJIB diisi oleh SELURUH PESERTA DALAM TIM (Ketua & Anggota)</b><br>
						Terima Kasih Peserta CEG 2021.
					</p>
				</div>
			</header>
		@endif

		{{-- Ini kondisi Acara --}}
		@if($sessions->tipe == "acara")
			<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
				<div class="container-fluid text-center"> 
					{{-- <h3 id="cnd" class="h1-responsive font-weight-bold wow fadeInLeft" >CEG 2021</h3> --}}
					@php
						$arr_judul = str_split(strtoupper($sessions->kegiatan));
					@endphp
					<div class="wavtm">
						@foreach ($arr_judul as $item)
							@if ($item != " ")
								<span style="--i:{{$loop->iteration}};">{{$item}}</span>
							@else
								<span style="--i:{{$loop->iteration}};">&nbsp;</span>
							@endif
						@endforeach
					</div>
					<div class="row mt-5">
						@foreach($link as $l)
							<div class="col">
								<h4 class="text-white">{{ucwords($l->nama)}}</h4>
								<a href="{{$l->url}}" target="_blank" style="font-size: 1.5em" class="btn mr-lg-2 mb-3">{{$l->url}}</a>
								@if ($l->id_zoom != null)
									<h4>Zoom ID : {{$l->id_zoom}}</h4>
								@endif
								@if ($l->pass_zoom != null)
									<h4>Passcode : {{$l->pass_zoom}}</h4>
								@endif
							</div>
						@endforeach
					</div>
				</div>
			</header>
		@endif

		{{-- Ini kondisi Rally Game --}}
		@if($sessions->tipe == "rally")
			<div class="xop-section">
				<div class="linkgambes">
					<div class="container-fluid text-center"> 
						{{-- <h3 id="cnd" class="h1-responsive font-weight-bold wow fadeInLeft" >CEG 2021</h3> --}}
						@php
							$arr_judul = str_split("SURVIVAL ISLAND");
						@endphp
						<div class="wavgames">
							@foreach ($arr_judul as $item)
								@if ($item != " ")
									<span style="--i:{{$loop->iteration}};">{{$item}}</span>
								@else
									<span style="--i:{{$loop->iteration}};">&nbsp;</span>
								@endif
							@endforeach
						</div>
					</div>
					<div class="row mt-5">
						@if ($status_gambes->tipe == "aman")
							@php
								$tipe = "gamebesar";
								$col = 'col-3';
							@endphp
						@else
							@php
								$tipe = "island";
								$col = 'col-4';
							@endphp
						@endif
						@foreach($link as $l)
							@if($l->tipe == $tipe)
								@if (($l->keterangan == "1-1" || $l->keterangan == "1") && Auth::user()->tim->id <= 24)
									<div class="{{$col}} mb-3">
										<h5 class="text-white">{{ucwords($l->nama)}}</h5>
										<div class="custom-btn-group mb-1">
											<a target="_blank" href="{{$l->url}}" class="btn custom-btn custom-btn-bg custom-btn-link">Klik Disini</a>
										</div>
										@if ($l->id_zoom != null)
											<h6>Zoom ID : {{$l->id_zoom}}</h6>
										@endif
										@if ($l->pass_zoom != null)
											<h6>Passcode : {{$l->pass_zoom}}</h6>
										@endif
									</div>
								@elseif(($l->keterangan == "1-2" || $l->keterangan == "1") && Auth::user()->tim->id > 24)
									<div class="{{$col}} mb-3">
										<h5 class="text-white">{{ucwords($l->nama)}}</h5>
										<div class="custom-btn-group mb-1">
											<a target="_blank" href="{{$l->url}}" class="btn custom-btn custom-btn-bg custom-btn-link">Klik Disini</a>
										</div>
										@if ($l->id_zoom != null)
											<h6>Zoom ID : {{$l->id_zoom}}</h6>
										@endif
										@if ($l->pass_zoom != null)
											<h6>Passcode : {{$l->pass_zoom}}</h6>
										@endif
									</div>
								@endif
							@endif
							@if ($status_gambes->tipe != "aman")
								@if($l->tipe == "gamebesar" && $l->nama != "Masuk Game Besar")
									@if (($l->keterangan == "1-1" || $l->keterangan == "1") && Auth::user()->tim->id <= 24)
										<div class="{{$col}} mb-5">
											<h5 class="text-white">{{ucwords($l->nama)}}</h5>
											<div class="custom-btn-group mb-2">
												<a target="_blank" href="{{$l->url}}" class="btn custom-btn custom-btn-bg custom-btn-link">Klik Disini</a>
											</div>
											@if ($l->id_zoom != null)
												<h6>Zoom ID : {{$l->id_zoom}}</h6>
											@endif
											@if ($l->pass_zoom != null)
												<h6>Passcode : {{$l->pass_zoom}}</h6>
											@endif
										</div>
									@elseif(($l->keterangan == "1-2" || $l->keterangan == "1") && Auth::user()->tim->id > 24)
										<div class="{{$col}} mb-5">
											<h5 class="text-white">{{ucwords($l->nama)}}</h5>
											<div class="custom-btn-group mb-2">
												<a target="_blank" href="{{$l->url}}" class="btn custom-btn custom-btn-bg custom-btn-link">Klik Disini</a>
											</div>
											@if ($l->id_zoom != null)
												<h6>Zoom ID : {{$l->id_zoom}}</h6>
											@endif
											@if ($l->pass_zoom != null)
												<h6>Passcode : {{$l->pass_zoom}}</h6>
											@endif
										</div>
									@endif
								@endif
							@endif
						@endforeach
					</div>
				</div>
				<br>
				<header class="judulrally col-lg-12">
					<div class="container-fluid text-center"> 
						@php
							$arr_judul = str_split("TRAVEL & COLLECT");
						@endphp
						<div class="wavgames">
							@foreach ($arr_judul as $item)
								@if ($item != " ")
									<span style="--i:{{$loop->iteration}};">{{$item}}</span>
								@else
									<span style="--i:{{$loop->iteration}};">&nbsp;</span>
								@endif
							@endforeach
						</div>
					</div>
				</header>
				<ul class="xop-grid">
					<?php $ruangan = 1 ?>
					@if ($status_rally->tipe == "aman")
						@php
							$tipe = "rally";
						@endphp
					@else
						@php
							$tipe = "pos";
						@endphp
					@endif
					@foreach($link as $l)
						@if($l->tipe == $tipe)
							<?php if($ruangan >= 8) { $ruangan = 1; } ?>
							<li>
								<a target="_blank" href="{{$l->url}}">
									<div class="xop-box xop-img-{{$ruangan}}">
										<div class="xop-info"><h3>{{ucwords($l->nama)}}</h3></div>
									</div>
								</a>
							</li>
							<?php $ruangan++ ?>
						@endif
					@endforeach
				</ul>
			</div>
			<br><br>
		@endif

		{{-- Ini kondisi untuk Kosong --}}
		@if($sessions->tipe == "kosong")
			<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
				<div class="container-fluid text-center"> 
					<div class="wavsemifinal">
						<span style="--i:1;">C</span>
						<span style="--i:2;">E</span>
						<span style="--i:3;">G</span>
						<span style="--i:4;">2</span>
						<span style="--i:5;">0</span>
						<span style="--i:6;">2</span>
						<span style="--i:7;">1</span>
					</div>
					<p class="lead pb-4 textket">Tidak Ada Sesi Berlangsung</p>
				    {{-- <h4>Registrasi Day 3 akan dimulai pukul <span class='text-white'>08.00 WIB</span>, mohon <i>refresh page</i> ini pada jam tersebut. </h4><br>
					<h4>Pada halaman <span class="text-white">"Pengumuman"</span> terdapat link Form Kendala yang dapat diisi peserta jika mengalami kendala teknis selama acara CEG 2021 hari ini. Mohon memperhatikan syarat dan ketentuan yang diminta.</h4> --}}
				</div>
			</header>
		@endif
		
		{{-- Ini kondisi untuk Semifinal (Praktikum Only) --}}
		@if($sessions->tipe == "semifinal")
			<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
				<div class="container-fluid text-center"> 
					{{-- <h3 id="cnd" class="h1-responsive font-weight-bold wow fadeInLeft" >CEG 2021</h3> --}}
					@php
						$arr_judul = str_split("SESI PRAKTIKUM");
					@endphp
					<div class="wavsemifinal">
						@foreach ($arr_judul as $item)
							@if ($item != " ")
								<span style="--i:{{$loop->iteration}};">{{$item}}</span>
							@else
								<span style="--i:{{$loop->iteration}};">&nbsp;</span>
							@endif
						@endforeach
					</div>
					<div class="row mt-5">
						<div class="col">
							@if ($sessions->kegiatan == 'praktikum')
								<h4>Proses Praktikum, Pengerjaan Soal, dan Pengumpulan</h4>
							@else
								<h4>{{ucwords($sessions->kegiatan)}}</h4>
							@endif
							<h5>({{date('H:i:s', strtotime($sessions->mulai))}} - {{date('H:i:s', strtotime($sessions->selesai))}} WIB)</h5>
						</div>
					</div>
					<div class="row mt-3">
						@if ($sessions->kegiatan == 'praktikum')
							<div class="col">
								<p class="lead textket mt-0 pt-0">Lembar Soal & Jawaban</p>
								<p class="lead">
									<a href="{{Auth::user()->tim->link}}" target="_blank" class="btn mr-lg-2 custom-btn">Klik Disini</a>
								</p>
							</div>
							<div class="col">
								<p class="lead textket mt-0 pt-0">Download Modul</p>
								<p class="lead">
									<a href="{{$link[0]->url}}" target="_blank" class="btn mr-lg-2 custom-btn">LINK MODUL SEMIFINAL</a><br>
									<small>Waktu pembacaan modul : 20 menit</small>
								</p>
							</div>
							<div class="col">
								<p class="lead textket mt-0 pt-0">Form Pengumpulan</p>
								<p class="lead">
									<a href="{{$link[2]->url}}" target="_blank" class="btn mr-lg-2 custom-btn">Klik Disini</a>
								</p>
							</div>
						@else
							<div class="col">
								<p class="lead textket mt-0 pt-0">Download Modul</p>
								<p class="lead">
									<a href="{{$link[0]->url}}" target="_blank" class="btn mr-lg-2 custom-btn">LINK MODUL SEMIFINAL</a><br>
									<small>Waktu pembacaan modul : 20 menit</small>
								</p>
							</div>
						@endif
					</div>
					<div class="row mt-3">
						<div class="col pr-0 ml-0">
							<p class="lead textket mt-0">Link Zoom Utama Day 2</p>
							<p class="lead">
								<a href="{{$link[1]->url}}" target="_blank" class="btn mr-lg-2 custom-btn">ZOOM SEMIFINAL</a>
								<h4>ID ZOOM : {{$link[1]->id_zoom}}</h4>
								<h4>PASSWORD : {{$link[1]->pass_zoom}}</h4>
							</p>
						</div>
						<div class="col pl-0 ml-0">
							<p class="lead textket mt-0">Link Zoom 2nd Device</p>
							<p class="lead">
								<a href="{{$link[3]->url}}" target="_blank" class="btn mr-lg-2 custom-btn">ZOOM 2ND DEVICE</a>
								<h4>ID ZOOM : {{$link[3]->id_zoom}}</h4>
								<h4>PASSWORD : {{$link[3]->pass_zoom}}</h4>
							</p>
						</div>
					</div>
				</div>
			</header>
		@endif

		{{-- Ini kondisi untuk Final --}}
		@if($sessions->tipe == "final")
			<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
				<div class="container-fluid text-center"> 
					@php
						$arr_judul = str_split("FACTORY RUSH");
					@endphp
					<div class="wavfinal">
						@foreach ($arr_judul as $item)
							@if ($item != " ")
								<span style="--i:{{$loop->iteration}};">{{$item}}</span>
							@else
								<span style="--i:{{$loop->iteration}};">&nbsp;</span>
							@endif
						@endforeach
					</div>
					<div class="my-5">
						<a href="{{$link[0]->url}}" target="_blank" style="font-size: 1.5em" class="btn mr-lg-2 custom-btn">Website Factory Rush</a>
					</div>
					<div class="col-12 align-self-center">
						<h3>Panduan Website Factory Rush:</h3>
						<div class="row">
							<div class="col-4">
								<div class="my-4 custom-num">1</div>
								<h5 class="text-white">Klik tombol <font style="color:yellow">"Website Factory Rush"</font> untuk mengakses website babak Final CEG 2021.</h5>
							</div>
							<div class="col-4">
								<div class="my-4 custom-num">2</div>
								<h5 class="text-white">Lakukan LOGIN dengan menggunakan <font style="color:yellow">username dan password yang digunakan saat registrasi lomba.</font></h5>
							</div>
							<div class="col-4">
								<div class="my-4 custom-num">3</div>
								<h5 class="text-white">Akses website babak Final CEG 2021 <font style="color:yellow">hanya  boleh dilakukan oleh 1 orang</font>.</h5>
							</div>
						</div>
					</div>
					<div class="row mt-5">
						<div class="col">
							<h3>{{ucwords($link[1]->nama)}}</h3>
							<a href="{{$link[1]->url}}" target="_blank" class="btn mr-lg-2">{{$link[1]->url}}</a>
							<h4>ID ZOOM : {{$link[1]->id_zoom}}</h4>
							<h4>PASSWORD : {{$link[1]->pass_zoom}}</h4>
						</div>
					</div>
				</div>
			</header>
		@endif

		{{-- Ini kondisi untuk Ishoma --}}
		@if($sessions->tipe == "ishoma")
			<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
				<div class="container-fluid text-center"> 
					{{-- <h3 id="cnd" class="h1-responsive font-weight-bold wow fadeInLeft" >CEG 2021</h3> --}}
					@php
						$arr_judul = str_split("ISHOMA");
					@endphp
					<div class="wavtm">
						@foreach ($arr_judul as $item)
							@if ($item != " ")
								<span style="--i:{{$loop->iteration}};">{{$item}}</span>
							@else
								<span style="--i:{{$loop->iteration}};">&nbsp;</span>
							@endif
						@endforeach
					</div>
					<p class="lead py-4">
						@foreach($link as $l)
							<div class="col mb-5">
								<h4 class="text-white">{{ucwords($l->nama)}} : </h4>
								<a href="{{$l->url}}" target="_blank" style="font-size: 1.5em" class="btn mr-lg-2 mb-3">{{$l->url}}</a>
								@if ($l->id_zoom != null)
									<h4>Zoom ID : {{$l->id_zoom}}</h4>
								@endif
								@if ($l->pass_zoom != null)
									<h4>Passcode : {{$l->pass_zoom}}</h4>
								@endif
							</div>
						@endforeach
					</p>
				</div>
			</header>
		@endif
	</div>
@endsection

@section('script')
	<script>
		var absen = "<?php echo ($kepastian ? 'true' : 'false'); ?>";
		var idUser = "<?php echo $user->id; ?>" *1;
		var idSesi = "<?php echo $sessions->id; ?>" *1;

		var countDownDate = new Date('{{$sessions->selesai}}').getTime();
		var now = new Date('{{ $sekarang }}').getTime();
		var jarak = 0;
		var x = setInterval(function() {
			var distance = countDownDate - now;
			var days = Math.floor(distance / (1000 * 60 * 60 * 24));if(days < 10){days = "0" + days;}
			var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));if(hours < 10){hours = "0" + hours;}
			var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));if(minutes < 10){minutes = "0" + minutes;}
			var seconds = Math.floor((distance % (1000 * 60)) / 1000);if(seconds < 10){seconds = "0" + seconds;}
			// document.getElementById("cnd").innerHTML ="Sesi Berakhir Dalam " + hours + ":"+ minutes + ":" + seconds;
			now = now+1000;
			jarak = distance;
			//alert(countDownDate +" "+ now+" "+distance);
			if (distance < 1000) {
				//alert(hai);
				location.reload();
			}
		}, 1000);

		$('#sesi').click(function(e) {   
			if (jarak < 0) {
				location.reload();
			}
		});

		$(document).ready(function() {
			if(absen == "true")
			{
				$("#btnAbsen").hide();
				$("#tekan").hide();
				$("#linkAbsen").show();
				$("#zoomabsen").show();
				$("#passabsen").show();
			}
			else
			{
				$("#btnAbsen").show();
				$("#linkAbsen").hide();
				$("#zoomabsen").hide();
				$("#passabsen").hide();
			}
			$("#btnAbsen").click(function(){
				$.ajax({
					type:'POST',
					url:'{{route("absen")}}',
					data:{'_token':'<?php echo csrf_token() ?>',
						'idUser': idUser,
						'idSesi': idSesi
					},
					success: function(data){
						alert(data.msg)
						if(data.status == 'sudah')
						{
							$("#btnAbsen").hide();
							$("#tekan").hide();
							$("#linkAbsen").show();
							$("#zoomabsen").show();
							$("#passabsen").show();
						}
					}

				});
			});
		});
	</script>
@endsection

