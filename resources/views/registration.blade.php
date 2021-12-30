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
				<h1>Registrasi CEG 2021&nbsp;&nbsp;&nbsp;<a href="#modalInfo" data-toggle="modal" style="font-size:0.75em"><i class="fas fa-question-circle"></i></a></h1>
				<div class="timeline">
					<div class="timeline-wrapper">
						 <div class="timeline-yr">
							  <span>1</span>
						 </div>
						 <div class="timeline-info">
							  <h3><span>Persyaratan Peserta CEG 2021</span></h3>
							  <small class="sub_info">Klik link di bawah untuk membaca Persyaratan Peserta.</small><br>
							  <div class="content content1">
								  <div class="row">
									<div class="col-1 number">
										<p>1.</p>
									</div>
									<div class="col">
										<p>Satu tim terdiri dari 3 siswa Sekolah Menengah Atas (SMA)/sederajat yang berasal dari sekolah yang sama <b>(boleh berasal dari jenjang dan peminatan yang berbeda)</b>.</p>
									</div>
								  </div>
								  <div class="row">
									<div class="col-1 number">
										<p>2.</p>
									</div>
									<div class="col">
										<p>Tim yang sudah terdaftar dapat mengganti anggota tim <b>paling lambat hingga <i>Technical Meeting</i>.</b></p>
									</div>
								  </div>
								  <div class="row">
									<div class="col-1 number">
										<p>3.</p>
									</div>
									<div class="col">
										<p>Masing–masing peserta CEG 2021 harus mempunyai minimal 1 laptop/komputer dan 1 <i>gadget</i> (<i>smartphone</i> / tablet / laptop / komputer / dan lainnya), dan mempunyai koneksi internet yang cukup dan memadai.<br>Catatan : <i>Gadget</i> harus memiliki kamera yang dapat digunakan saat bergabung pada Zoom <i>Meeting</i>.</p>
									</div>
								  </div>
								  <div class="row">
									<div class="col-1 number">
										<p>4.</p>
									</div>
									<div class="col">
										<p>Peserta diwajibkan mengisi data pendaftaran dan melakukan pembayaran biaya pendaftaran sesuai dengan yang telah ditetapkan panitia. Pendaftaran dilakukan dalam 2 batch :
											<div class="row">
												<div class="col">
													<p style="margin-bottom: 0"><b><i>Early bird</i></b> (14 Januari 2021 – 14 Februari 2021) : Rp50.000<br>Jika mendaftar 3 tim langsung (<b>berasal dari sekolah yang sama</b>): Rp120.000/ 3 tim</p>
												</div>
												<div class="col">
													<p style="margin-bottom: 0"><b><i>Normal</i></b> (15 Februari 2021-10 April 2021): Rp70.000<br>Jika mendaftar 3 tim langsung (<b>berasal dari sekolah yang sama</b>): Rp180.000/ 3 tim</p>
												</div>
											</div>
										</p>
									</div>
								  </div>
								  <div class="row">
									<div class="col-1 number">
										<p>5.</p>
									</div>
									<div class="col">
										<p>Pendaftaran dilakukan secara <i>online</i> melalui <a href="https://cegubaya.com/"><span style="color: #3ffbbe">website</span></a></p>
									</div>
								  </div>
								  <div class="row">
									<div class="col-1 number">
										<p>6.</p>
									</div>
									<div class="col">
										<p>Pembayaran dilakukan via transfer ke <b>rekening BCA 0240620758 a/n Kennita Alvina Jodie.</b></p>
									</div>
								  </div>
								  <div class="row">
									<div class="col-1 number">
										<p>7.</p>
									</div>
									<div class="col">
										<p>Bagi yang belum/tidak memiliki kartu pelajar dapat menyertakan surat pengantar/keterangan dari sekolah.</p>
									</div>
								  </div>
								  <div class="row">
									<div class="col-1 number">
										<p>8.</p>
									</div>
									<div class="col">
										<p>Jika <b>BATAL</b>, biaya pendaftaran tidak dapat dikembalikan.</p>
									</div>
								  </div>
							  </div>
							  <small class="more"><a href="javascript:void(0)" class="readmore1">Read Terms & Conditions...</a></small>
						 </div>
					</div>
					<div class="timeline-wrapper">
						<div class="timeline-yr">
							<span>2</span>
					   </div>
					   <div class="timeline-info">
							<h3><span>Mekanisme Pendaftaran CEG 2021</span></h3>
							<small class="sub_info">Klik link di bawah untuk membaca Mekanisme Pendaftaran.</small><br>
							<div class="content content2">
								<div class="row">
									<div class="col-1 number">
										<p>1.</p>
									</div>
									<div class="col">
										<p>Peserta melakukan pendaftaran pada <a href="https://cegubaya.com/"><span style="color: #3ffbbe">website</span></a></p>
									</div>
								</div>
								<div class="row">
									<div class="col-1 number">
										<p>2.</p>
									</div>
									<div class="col">
										<p>Peserta wajib mengisi kelengkapan data untuk pendaftaran, meng-<i>upload</i> pas foto, <i>scan</i> kartu pelajar, dan bukti pembayaran.</p>
									</div>
								</div>
								<div class="row">
									<div class="col-1 number">
										<p>3.</p>
									</div>
									<div class="col">
										<p>Dimohon memperhatikan dan melengkapi segala keperluan yang dibutuhkan untuk mendaftar.</p>
									</div>
								</div>
								<div class="row">
									<div class="col-1 number">
										<p>4.</p>
									</div>
									<div class="col">
										<p>Tim akan dikonfirmasi telah terdaftar sebagai peserta CEG 2021 melalui <i>email</i> yang akan dikirimkan oleh panitia dalam jangka waktu <b>maksimal 1 minggu setelah peserta meng-<i>upload</i> bukti pembayaran di website.</b></p>
									</div>
								</div>
								<div class="row">
									<div class="col-1 number">
										<p>5.</p>
									</div>
									<div class="col">
										<p>Apabila dalam jangka waktu 1 minggu peserta belum mendapatkan <i>email</i> konfirmasi, maka dapat menghubungi Yenni Anggraeni (WA: 081934692608)</p>
									</div>
								</div>
							</div>
							<small class="more"><a href="javascript:void(0)" class="readmore2">Read The Mechanism...</a></small>
					   </div>
					</div>
					<div class="timeline-wrapper">
						<div class="timeline-yr">
							<span>3</span>
					   </div>
					   <div class="timeline-info">
							<h3><span>Mulai Pendaftaran & Pilih Jumlah Tim !</span></h3>
							<small class="sub_info">Klik dan pilih salah satu tombol di bawah sesuai jumlah tim yang akan didaftarkan.</small>
							<div class="row" style="margin:0">
								<div class="col-lg-3 col-md-4 col-sm-6 col-12 contact-form d-flex justify-content-center">
									<a href="{{route('registration.form', '1tim')}}" class="form-control submit-btn">1 TIM</a>
								</div>
								<div class="col-lg-3 col-md-4 col-sm-6 col-12 contact-form d-flex justify-content-center">
									<a href="{{route('registration.form', '3tim')}}" class="form-control submit-btn">3 TIM</a>
								</div>
							</div>
					   </div>
					</div>
				</div>
			</div>
        </div>
	</div>
@endsection

@section('script')
	<script>
		$(".readmore1").click(function() {
			$( ".content1" ).slideToggle( "fast" );
			var $this = $(this);
			$this.toggleClass("open");

			if ($this.hasClass("open")) {
				$this.html("Less...");
			} else {
				$this.html("Read Terms & Conditions...");
			}
		});
		$(".readmore2").click(function() {
			$( ".content2" ).slideToggle( "fast" );
			var $this = $(this);
			$this.toggleClass("open");

			if ($this.hasClass("open")) {
				$this.html("Less...");
			} else {
				$this.html("Read The Mechanism...");
			}
		});
	</script>
@endsection


@section('modal')
<div class="modal fade" id="modalInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Informasi Teknis</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Apabila peserta menemui kendala/permasalahan teknis dalam melakukan proses registrasi, mohon segera menghubungi <b>si.cegubaya@gmail.com</b> disertai dengan bukti screenshot kendala/permasalahan jika ada.
        <br><br>
        Jika ada pertanyaan seputar aturan/informasi lebih lanjut mengenai registrasi / lomba CEG 2021, dapat menghubungi <i>contact person</i> yang tertera di poster.
        <br><br>
        <b><i>Terima kasih !</i></b>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
@endsection