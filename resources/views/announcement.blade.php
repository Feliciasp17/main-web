@extends('layouts.mainweb')

@section('title')
  CEG 2021 - Announcement
@endsection

@section('content')
<!-- TITLE SECTION -->
<header class="full-screen d-lg-flex">
  <div class="container-fluid text-center">
    <div class="animate-title"> 
      <h1 class="text-title">
        <span>P</span>
        <span>E</span>
        <span>N</span>
        <span>G</span>
        <span>U</span>
        <span>M</span>
        <span>U</span>
        <span>M</span>
        <span>A</span>
        <span>N</span>
        <span>!</span>
      </h1>
    </div>
  </div>
</header>
<!-- END TITLE SECTION -->
<!-- Announcement SECTION -->
@foreach ($article as $item)
	<div class="announcement">
		<div class="cards">
			<div class="image-data">
				<div class="background-image"></div>
				<div class="public-details">
				<span class="author"><ion-icon name="person-outline"></ion-icon>{{$item->user->name}}</span>
				<span class="date"><ion-icon name="calendar-outline" class="calender"></ion-icon>{{date('F d, Y', strtotime($item->created_at))}}</span>
				</div>
			</div>
			<div class="post-data">
				<h1 class="title-post">{{strtoupper($item->judul)}}</h1>
				<h2 class="subtitle">{{$item->subtitle}}</h2>
				<div class="public-phone">
					<span class="author-phone"><ion-icon name="person-outline"></ion-icon>{{$item->user->name}}</span>
					<span class="date-phone"><ion-icon name="calendar-outline" class="calender"></ion-icon>{{date('F d, Y', strtotime($item->created_at))}}</span>
				</div>
				<p class="description">{{$item->preview}}</p>
				<div class="cta">
					<a href="{{route('article_page', ['id' => $item->id])}}">Read more &rarr;</a>
				</div>
			</div>
		</div>
	</div>        
@endforeach
{{$article->links('layouts.pagination')}}
<!-- END Announcement SECTION -->
@endsection