@extends('layouts.mainweb')

@section('title')
	CEG 2021 - Day 2
@endsection

@section('style')
<link rel="stylesheet" href="{{asset('mainweb/css/absensiday.css')}}">
@endsection

@section('content')
<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
    <div class="container-fluid text-center"> 
        <p class="lead pb-4 faq-text">ABSENSI</p>
		<div class="wavtm">
		<span style="--i:1;">D</span>
		<span style="--i:2;">A</span>
        <span style="--i:3;">Y</span>
        <span style="--i:4;">&nbsp;</span>
        <span style="--i:5;">2</span>
       
		</div>
        <p class="lead pb-4 textket">
           TEKAN TOMBOL ABSEN UNTUK MENDAPATKAN LINK DAY 2!
        </p>
		<p class="lead pb-4 final-btn">
			<a href="#" class="btn mr-lg-2 custom-btn">ABSENSI DAY 2</a>
		</p>
        <p class="lead pb-4 final-btn">
			Silahkan klik tombol LINK DAY 2, Selamat datang peserta CEG 2021.
            &nbsp;
            <a href="#" class="btn mr-lg-2 custom-btn">LINK DAY 2</a>
            <p>
                Meeting ID: 123456789 Password:123456789
             </p>
		</p>
    </div>
</header>
@endsection