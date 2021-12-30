@extends('layouts.mainweb')

@section('title')
	CEG 2021 - TM
@endsection

@section('style')
<link rel="stylesheet" href="{{asset('mainweb/css/tm.css')}}">
@endsection

@section('content')
<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
    <div class="container-fluid text-center"> 
        <p class="lead pb-4 faq-text">ABSENSI</p>
		<div class="wavtm">
		<span style="--i:1;">T</span>
		<span style="--i:2;">E</span>
        <span style="--i:3;">C</span>
        <span style="--i:4;">H</span>
        <span style="--i:5;">N</span>
        <span style="--i:6;">I</span>
        <span style="--i:7;">C</span>
        <span style="--i:8;">A</span>
        <span style="--i:9;">L</span>
        <span style="--i:9;">&nbsp;</span>
        <span style="--i:10;">M</span>
        <span style="--i:11;">E</span>
        <span style="--i:12;">E</span>
        <span style="--i:13;">T</span>
        <span style="--i:14;">I</span>
        <span style="--i:15;">N</span>
        <span style="--i:16;">G</span>
		</div>
        <p class="lead pb-4 textket">
           TEKAN TOMBOL ABSEN UNTUK MENDAPATKAN LINK TM!
        </p>
		<p class="lead pb-4 final-btn">
			<a href="#" class="btn mr-lg-2 custom-btn">ABSENSI TM</a>
		</p>
        <p class="lead pb-4 final-btn">
			Silahkan klik tombol LINK TM, Selamat datang peserta CEG 2021.
            &nbsp;
            <a href="#" class="btn mr-lg-2 custom-btn">LINK TM</a>
            <p>
                Meeting ID: 123456789 Password:123456789
             </p>
		</p>
    </div>
</header>
@endsection