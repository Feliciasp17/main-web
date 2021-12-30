@extends('layouts.mainweb')

@section('title')
	CEG 2021 - Article
@endsection

@section('style')
    <style>
    .paragraf {
        color: white !important;
    }
    </style>
@endsection

@section('content')
<section class="about full-screen d-lg-flex justify-content-center align-items-center">
	<div class="container">
		<div class="row">
            <div class="col-12">
                <article class="article-post">
                    <div class="container-fluid text-center">
                    <h1 class="article-post-title">{{$article->judul}}</h1>
                    </div>
                    <div class="article-post-meta">
                        <span class="article-author"><ion-icon name="person-outline"></ion-icon>{{$article->user->name}}</span>
                        <span class="article-date"><ion-icon name="calendar-outline" class="calender"></ion-icon>{{date('F d, Y', strtotime($article->created_at))}}</span>
                    </div>
                    <hr class="line-post">
                    <div class="paragraf">
						<!--<p><img src="{{asset('mainweb/images/foto/foto1.JPG')}}" class="img-fluid" alt=""></p>-->
                    <p>
                        {!! $article->isi !!}
                    </p>
                    </div>
                </article>
            </div>
        </div>
    </div>
</section>
@endsection