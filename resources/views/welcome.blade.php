@extends('layouts.mainweb')



@section('title')

	CEG 2021 - Home

@endsection



@section('content')

<!-- ABOUT -->

<section class="about full-screen d-lg-flex justify-content-center align-items-center">

	<div class="container">

		<div class="row">

			<div class="col-lg-7 col-md-12 col-sm-12 col-12 d-flex" id="header-text">

				<div class="about-text">

					<img src="{{asset("mainweb/images/logo/landscape_horizontal.png")}}" width="75%">

					<h1 class="animated animated-text mt-4">

							<div class="animated-info">

								<span class="animated-item">WELCOME TO CEG 2021</span>

								<span class="animated-item">DAFTARKAN DIRIMU SEKARANG</span>

							</div>

					</h1>

					<p>&nbsp;</p>

					<div class="custom-btn-group mt-4">

					  <a href="#contact" class="btn custom-btn custom-btn-bg custom-btn-link">CONTACT US</a>

					</div>

					

				</div>

			</div>



			<div class="col-lg-5 col-md-12 col-12" style="text-align: center" id="header-image">

				<div class="about-image png">

					<img src="{{asset('mainweb/images/maskot/maskotdepan.png')}}" class="img-fluid" alt="png image">

				</div>

			</div>



		</div>

	</div>

</section>



<!-- START ANIMASI -->

<section class="view intro-video">

        <div class="container">

          <div class="row">

            <div class="col-sm-12 col-lg-7 col-md-12 col-12 d-flex align-items-center">

              <div class="white-text">

                <h1 class="h1-responsive font-weight-bold wow fadeInLeft" data-wow-delay="0.3s">Get To Know CEG 2021 !</h1>

				

                <hr class="hr-light wow fadeInLeft" data-wow-delay="0.3s">

                <p class="wow fadeInLeft" data-wow-delay="0.3s">Chemical Engineering Games 2021 is BACK! Tahun ini CEG mengambil tema “AMBROSIA" yaitu Aquatic Management for Renewal in Food Industry. CEG 2021 akan dikemas dalam games yang seru dan menarik lho! Let’s join and get ready to be the CHAMPION !!</p>

              </div>

            </div>



            <div class="col-lg-5 col-md-12 col-12 wow fadeIn">

              <div class="embed-responsive embed-responsive-16by9 wow fadeInRight">

                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/0iPW3NhrFzg"

                  allowfullscreen></iframe>

			  </div>

			</div>

			<p>&nbsp;</p>

		  </div>

        </div>

</section>

<!-- END ANIMASI -->





<!-- Timeline -->

<section class="resume py-5 d-lg-flex justify-content-center align-items-center" id="resume">

	<div class="container">

		<div class="row">

			<div class="col-lg-6 col-md-6 col-12 d-flex">

				<div class="timeline">

					<h2 class="mb-4 timeline-text">TIMELINE</h2>

					<div class="timeline-wrapper">

						 <div class="timeline-yr">

							  <span>JAN</span>

						 </div>

						 <div class="timeline-info">

							  <h3><span>Open Registration</span></h3>

							  {{-- <small>14 Januari 2021</small>

							  <p>CEG 2021 harus membentuk tim yang terdiri dari 3 orang, dapat berasal dari jurusan yang berbeda, angkatan yang berbeda namun berasal di sekolah yang sama.</p>

							  <p>Masing – masing perserta CEG 2021 harus mempunyai minimal 1 laptop/komputer dan 1 gadget (smartphone / tablet / laptop / komputer / dan lainnya), dan mempunyai koneksi internet.</p>

							  <p><b>Catatan:</b> Gadget harus memiliki kamera yang dapat digunakan saat bergabung pada Zoom meeting.</p> --}}

							  <p><b>Early bird :Rp50.000,00/tim atau Rp120.000,00/3 tim</b></p>

						 </div>

					</div>



					<div class="timeline-wrapper">

						<div class="timeline-yr">

							<span>FEB</span>

						</div>

						<div class="timeline-info">

							<h3><span>End of Early Bird Registration</span></h3>

							<small>14 Februari 2021</small>

							<p><b>Normal : Rp70.000,00/tim atau Rp180.000,00/3 tim</b></p>

						</div>

					</div>



					<div class="timeline-wrapper">

						<div class="timeline-yr">

							<span>APR</span>

						</div>

						<div class="timeline-info">

							<h3><span>Close Registration</span></h3>

							<small>10 April 2021</small>

						</div>

					</div>

					

					<div class="timeline-wrapper">

						<div class="timeline-info">

							<h3><span>Technical Meeting</span></h3>

							<small>17 April 2021</small>

						</div>

					</div>



					<div class="timeline-wrapper">

						<div class="timeline-info">

							<h3><span>Rally Games dan Game Besar</span></h3>

							<small>23 April 2021</small>

						</div>

					</div>



					<div class="timeline-wrapper">

						<div class="timeline-info">

							<h3><span>Semifinal</span></h3>

							<small>24 April 2021</small>

						</div>

					</div>



					<div class="timeline-wrapper">

						<div class="timeline-yr">

							<span>END</span>

						</div>

						<div class="timeline-info">

							<h3><span>Final</span></h3>

							<small>25 April 2021</small>

						</div>

					</div>

					

				</div>

			</div>

			<div class="col-lg-6 col-md-6 col-12 d-flex">

				<a href="mainweb/images/foto/poster.jpg" target="blank"><img style="width:100%; height:100%; object-fit: contain;" src="{{asset('mainweb/images/foto/poster.jpg')}}" alt="poster"></a>

			</div>



		</div>

	</div>

</section>

<!-- end timeline -->



<!-- CONTACT -->

<section class="contact py-5" id="contact">

  <div class="container">

	<div class="row">

	  

	  <div class="col-lg-5 mr-lg-5 col-12">

		<div class="google-map w-100">

			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.2993386907524!2d112.76503411478292!3d-7.320233874015165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7fae149d03a9d%3A0x7311b083dc2502a7!2sUBAYA%20(%20UNIVERSITAS%20SURABAYA%20)!5e0!3m2!1sen!2sid!4v1608482912766!5m2!1sen!2sid" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>

		</div>



		<div class="contact-info d-flex justify-content-between align-items-center py-4 px-lg-5">

			<div class="contact-info-item">

			  <h3 class="mb-3 footer-text">Info Jurusan</h3>

			  <p class="footer-text mb-0">Program Studi Teknik Kimia.

				<br> Raya Kalirungkut Surabaya. 

				<br> TG lantai 5.</p>

			  <p class="footer-text mb-0"><b>Telp:</b>(031) 2981158; <b>Fax:</b>(031) 2981178</p>

			  <p><a href="javascript:void(0)" class="footer-text">tk@unit.ubaya.ac.id</a></p>

			  <h3 class="mb-3 footer-text">Contact Person(CP)</h3>

			  <p class="footer-text mb-0"><b>Caren:</b>082281347064 <b>Yenni:</b>081934692608</p>

			</div>

		</div>

	  </div>



	  <div class="col-lg-6 col-12">

		<div class="contact-form">

		  <form action="" method="get">

			<div class="row">

				<h2 class="footer-title">Got some questions?<br>Contact Us !</h2>

			</div>

			<div class="row">

				<div class="col-lg-6 col-12">

					<input type="text" class="form-control" name="name" placeholder="Your Name" id="name">

				</div>



				<div class="col-lg-6 col-12">

					<input type="email" class="form-control" name="email" placeholder="Email" id="email">

				</div>



				<div class= "col-12">

					<input type="Subject" class="form-control" name="subject" placeholder="Subject" id="subject">

				</div>



				<div class="col-12">

					<textarea name="message" rows="6" class="form-control" id="message" placeholder="Message"></textarea>

				</div>



				<div class="ml-lg-auto col-lg-5 col-12">

					<input type="submit" class="form-control submit-btn" value="Kirim Pesan">

				</div>

			</div>

		  </form>

		</div>

	  </div>



	</div>

  </div>

</section>

@endsection





@section('script')

{{-- <script>

var countDownDate = new Date("Apr 10, 2021 23:59:59").getTime();

var x = setInterval(function() {

  var now = new Date().getTime();

  var distance = countDownDate - now;

  var days = Math.floor(distance / (1000 * 60 * 60 * 24));if(days < 10){days = "0" + days;}

  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));if(hours < 10){hours = "0" + hours;}

  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));if(minutes < 10){minutes = "0" + minutes;}

  var seconds = Math.floor((distance % (1000 * 60)) / 1000);if(seconds < 10){seconds = "0" + seconds;}



  document.getElementById("cnd").innerHTML ="CLOSE REGISTRATION IN "+ days + ":" + hours + ":"

  + minutes + ":" + seconds;



  if (distance < 0) {

    clearInterval(x);

    document.getElementById("cnd").innerHTML = "CEG 2020";

  }

}, 1000);

</script> --}}

@endsection