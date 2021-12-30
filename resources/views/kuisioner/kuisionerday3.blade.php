@extends('layouts.mainweb')

@section('title')
	CEG 2021 - KUISIONER DAY 3
@endsection

@section('style')
<link rel="stylesheet" href="{{asset('mainweb/css/absensiday.css')}}">
@endsection

@section('content')
<header class="full-screen d-lg-flex jumbotron jumbotron-fluid">
    <div class="container-fluid text-center"> 
        <p class="lead pb-4 faq-text">KUISIONER</p>
		<div class="wavtm">
		<span style="--i:1;">D</span>
		<span style="--i:2;">A</span>
        <span style="--i:3;">Y</span>
        <span style="--i:4;">&nbsp;</span>
        <span style="--i:5;">3</span>
       
		</div>
        <p class="lead pb-4 textket">
            Silahkan klik tombol KUISIONER DAY 3, Terima Kasih peserta CEG 2021.
         </p>
         <p class="lead pb-4 final-btn">
             <a href="#" class="btn mr-lg-2 custom-btn">KUISIONER DAY 3</a>
         </p>
    </div>
</header>
@endsection