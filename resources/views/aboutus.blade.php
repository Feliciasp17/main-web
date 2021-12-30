@extends('layouts.mainweb')

@section('title')
	CEG 2021 - About Us
@endsection

@section('content')
<div class="container">
<!-- INFO SECTION -->
 <section class="about full-screen d-lg-flex justify-content-center align-items-center">
     <div class="container">
         <div class="row">
             <div class="col-sm-12 col-lg-7 col-md-12 col-12 d-flex align-items-center">
                    <div class="about-text">
						<h2 id="h2-cust" data-text="APA ITU CEG?" class="textceg">APA ITU CEG?</h2>
						<p>&nbsp;</p>
                        <p class="text-about"><i>Chemical Engineering Games</i> merupakan lomba tahunan yang diadakan oleh Jurusan Teknik
                          Kimia Universitas Surabaya yang ditujukan untuk semua siswa/i SMA/SMK Se-Indonesia
                          yang dikemas dalam bentuk <i>games</i> yang seru dan unik.</p>
                        <div class="custom-btn-group mt-4">
                            <a href="{{url('registration')}}" class="btn mr-lg-2 custom-btn"><i class='uil uil-file-alt'></i>REGISTER NOW</a>
                            <!--<a href="{{url('/')}}" class="btn custom-btn custom-btn-bg custom-btn-link">CONTACT US</a>-->
                          </div>
                    </div>
             </div>

             <div class="col-lg-5 col-md-12 col-12" id="header-image" style="text-align: right">
                <img src="{{asset('mainweb/images/maskot/maskotsamping.png')}}" width="80%" class="img-fluid" alt="svg image">
             </div>
             
         </div>
     </div>
   
 </section>
<!-- CLOSE INFO SECTION -->
<!-- GIFT INFO SECTION -->
    <div class="container-fluid padding">
        <div class="row text-center">
			<div class="col-lg-10 mx-auto">
				<h1>HADIAH PEMENANG</h1>
				</div>
			<div class="col-sm-12 col-md-4 col-12 my-3">
					<img src="{{asset('mainweb/images/logo/juara1.png')}}" class="img-fluid piala" alt="svg image">
					<h1 class="juara">Juara 1</h1>
					<h3>Rp. 6.000.000</h3>
					<p>Potongan 100% USP, UPP 1 semester + e-sertifikat dan trofi</p>
			</div>
			<div class="col-sm-12 col-md-4 col-12 my-3">
				<img src="{{asset('mainweb/images/logo/juara2.png')}}" class="img-fluid piala" alt="svg image">
				<h1 class="juara">Juara 2</h1>
				<h3>Rp. 4.000.000</h3>
				<p>Potongan 75% USP, UPP 1 semester + e-sertifikat dan trofi</p>
			</div>
			<div class="col-sm-12 col-md-4 col-12 my-3">
				<img src="{{asset('mainweb/images/logo/juara3.png')}}" class="img-fluid piala" alt="svg image">
				<h1 class="juara">Juara 3</h1>
				<h3>Rp. 2.500.000</h3>
				<p>Potongan 50% USP, UPP 1 semester + e-sertifikat dan trofi</p>
			</div>
			<div class="col-lg-10 mx-auto">
				<p><b>Note : Potongan pada USP dan UPP hanya berlaku jika peserta mendaftar di Program Studi Teknik Kimia Universitas Surabaya</b></p>
			</div>
			<div class="col-lg-10 mx-auto">
				<p>&nbsp;</p>
				<H2 class="pre-event"><b>Pre-event:</b></H2>
			</div>
				<div class="col-sm-12 col-md-4 col-12 my-3">
					<img src="{{asset('mainweb/images/logo/best_product.png')}}" class="img-fluid piala" alt="svg image">
					<h2 class="juara">Best Product</h2>
					<h3>Rp. 500.000</h3>
			</div>
			<div class="col-sm-12 col-md-4 col-12 my-3">
				<img src="{{asset('mainweb/images/logo/most_creative.png')}}" class="img-fluid piala" alt="svg image">
				<h2 class="juara">Most Creative Product</h2>
				<h3>Rp. 400.000</h3>
			</div>
			<div class="col-sm-12 col-md-4 col-12 my-3">
				<img src="{{asset('mainweb/images/logo/most_favourite.png')}}" class="img-fluid piala" alt="svg image">
				<h2 class="juara">Most Favourite Product</h2>
				<h3>Rp. 400.000</h3>
			</div>
        </div>
    </div>
<!-- CLOSE GIFT INFO SECTION -->
<!-- DOCUMENTATION SECTION -->
<section class="project py-5" id="project">
	<div class="container">
			
			<div class="row">
			  <div class="col-lg-11 text-center mx-auto col-12">

				  <div class="col-lg-8 mx-auto">
					<h1>FOTO-FOTO</h1>
				  </div>

				  <div class="owl-carousel owl-theme">
					<div class="item">
					  <div class="project-info">
						<img src="{{asset('mainweb/images/foto/foto1.JPG')}}" class="img-fluid" alt="project image">
					  </div>
					</div>

					<div class="item">
					  <div class="project-info">
						<img src="{{asset('mainweb/images/foto/foto2.JPG')}}" class="img-fluid" alt="project image">
					  </div>
					</div>

					<div class="item">
					  <div class="project-info">
						<img src="{{asset('mainweb/images/foto/foto3.JPG')}}" class="img-fluid" alt="project image">
					  </div>
					</div>

					<div class="item">
					  <div class="project-info">
						<img src="{{asset('mainweb/images/foto/foto4.JPG')}}" class="img-fluid" alt="project image">
					  </div>
          </div>
          
          <div class="item">
					  <div class="project-info">
						<img src="{{asset('mainweb/images/foto/foto5.JPG')}}" class="img-fluid" alt="project image">
					  </div>
          </div>
          
          <div class="item">
					  <div class="project-info">
						<img src="{{asset('mainweb/images/foto/foto6.JPG')}}" class="img-fluid" alt="project image">
					  </div>
          </div>
          
          <div class="item">
					  <div class="project-info">
						<img src="{{asset('mainweb/images/foto/foto7.JPG')}}" class="img-fluid" alt="project image">
					  </div>
					</div>

					<div class="item">
					  <div class="project-info">
						<img src="{{asset('mainweb/images/foto/foto8.JPG')}}" class="img-fluid" alt="project image">
					  </div>
					</div>
				  </div>

			  </div>
			</div>
	</div>
</section>
<!-- CLOSE DOCUMENTATION SECTION -->
</div>
@endsection