@extends('layouts.mainweb')

@section('title')
	CEG 2021 - FAQ
@endsection
@section('content')
<!-- TITLE SECTION -->
<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
    <div class="container-fluid text-center"> 
		<div class="wavy">
		<span style="--i:1;">F</span>
		<span style="--i:2;">A</span>
		<span style="--i:3;">Q</span>
		</div>
       <p class="lead pb-4 faq-text">Frequently Asked Questions</p>
    </div>
</header>
<!-- END TITLE SECTION -->

<!-- FAQ SECTION -->
<div class="faq-section">
<section>
    <div class="container-fluid">
		<div class="accordion mx-4">
			<div class="accordion-item" id="question1">
				<a class="accordion-link" href="#question1">
					<p class="ask">Apa itu CEG 2021?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>Chemical Engineering Games merupakan lomba tahunan yang diadakan oleh Jurusan Teknik Kimia Universitas Surabaya yang ditujukan untuk siswa/i SMA/sederajat Se-Indonesia yang dikemas dalam bentuk <i>games</i> yang seru dan unik.
</p>
				</div>
			</div>

			<div class="accordion-item" id="question2">
				<a class="accordion-link" href="#question2">
					<p class="ask">Apakah CEG 2021 akan diadakan secara <i>online</i> atau <i>offline</i>?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>CEG 2021 akan dilaksanakan secara <i>online</i>.</p>
				</div>
			</div>

			<!-- <div class="accordion-item" id="question3">
				<a class="accordion-link" href="#question3">
					<p class="ask">Persyaratan untuk menjadi peserta CEG 2021?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<ion-icon name="remove-outline" class="remove"></ion-icon>
				</a>
				<div class="answer">
					<p>Peserta CEG 2021 harus membentuk tim yang terdiri dari 3 orang, dapat berasal dari
						jurusan yang berbeda, angkatan yang berbeda namun berasal di sekolah yang sama.</p>
						<p>Masing – masing perserta CEG 2021 harus mempunyai min. 2 gadget, dan mempunyai
							koneksi internet</p>
				</div>
			</div> -->

			<div class="accordion-item" id="question4">
				<a class="accordion-link" href="#question4">
					<p class="ask">Apa saja tahap dalam CEG 2021?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>CEG 2021 mempunyai 4 babak yaitu <i>Rally games</i>, <i>Game</i> besar, Semi Final, dan Final. Selain itu terdapat juga babak <i>Pre-Event</i>.
</p>
				</div>
			</div>

			<div class="accordion-item" id="question5">
				<a class="accordion-link" href="#question5">
					<p class="ask">Apakah CEG 2021 bersifat akademis (seperti mengerjakan soal-soal pelajaran)?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>CEG 2021 bersifat akademis namun dikemas dalam game yang menarik.</p>
				</div>
			</div>

			<div class="accordion-item" id="question6">
				<a class="accordion-link" href="#question6">
					<p class="ask">Apakah pelajaran yang diujikan hanya tentang kimia?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>Pelajaran yang diujikan tidak hanya tentang kimia, tetapi ada juga tentang matematika, fisika,
					kimia, biologi, dan pengetahuan umum yang sesuai dengan pengetahuan siswa/i SMA/sederajat.</p>
				</div>
			</div>

			<div class="accordion-item" id="question7">
				<a class="accordion-link" href="#question7">
					<p class="ask">Bagaimana saya dapat mendaftar menjadi peserta CEG 2021?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>Mekanisme dan persyaratan pendaftaran CEG 2021 dapat di lihat pada cegubaya.com dan instagram: &commat;ceg.ubaya</p>
				</div>
			</div>

			<div class="accordion-item" id="question8">
				<a class="accordion-link" href="#question8">
					<p class="ask">Kapan lomba diadakan?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p><i>Technical Meeting</i>: 17 April 2021.</p>
					<p><i>Main Event</i>: 23-25 April 2021.</p>
				</div>
			</div>

			<div class="accordion-item" id="question9">
				<a class="accordion-link" href="#question9">
					<p class="ask">Apakah terdapat batasan jumlah tim yang mendaftar (dari tiap sekolah)?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>Tidak terdapat batasan jumlah tim.</p>
				</div>
			</div>

			<div class="accordion-item" id="question10">
				<a class="accordion-link" href="#question10">
					<p class="ask">Dimana saya dapat memperoleh infomasi terkait CEG 2021?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>Info CEG 2021 akan dibagikan di instagram &commat;ceg.ubaya, cegubaya.com, selain itu juga
						dapat menghubungi CP:</p>
						<p>OA line: &commat;bgt6574p</p>
						<p>Caren: 082281347064 (WA)</p>
						<p>Yenni: 081934692608 (WA)</p>
				</div>
			</div>

			<div class="accordion-item" id="question11">
				<a class="accordion-link" href="#question11">
					<p class="ask">Dimana saya dapat melihat kisi-kisi perlombaan?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>Untuk kisi-kisi dapat dilihat di Instagram dan website CEG 2021 setelah TM berlangsung.</p>
				</div>
			</div>

			<div class="accordion-item" id="question12">
				<a class="accordion-link" href="#question12">
					<p class="ask">Apakah wajib mengikuti <i>Technical Meeting</i>?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>Setiap Tim wajib mengirimkan minimal 1 perwakilan saat <i>Technical Meeting</i>.</p>
				</div>
			</div>

			<div class="accordion-item" id="question13">
				<a class="accordion-link" href="#question13">
					<p class="ask">Batas pendaftaran CEG hingga kapan?</p>
					<ion-icon name="add-outline" class="add"></ion-icon>
					<!-- <ion-icon name="remove-outline" class="remove"></ion-icon> -->
				</a>
				<div class="answer">
					<p>Pendaftaran CEG dibuka dari 14 Januari 2021 hingga 10 April 2021. </p>
				</div>
			</div>

		</div>
    </div>
</section>
</div>
<!-- FAQ SECTION -->