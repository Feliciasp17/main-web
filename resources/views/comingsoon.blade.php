@extends('layouts.mainweb')

@section('title')
	CEG 2021 - Coming Soon
@endsection

@section('style')
	<style>
		#navbar-main {
			display: none;
		}
		@media(max-width:603px) {
			h1 {
				font-size: 2em;
			}
			h3 {
				font-size: 1.5em;
			}
		}
		@media(max-width:375px) {
			h1 {
				font-size: 1.75em;
			}
			h3 {
				font-size: 1.25em;
			}
		}
	</style>
@endsection
@section('content')
<br>
    <div style="text-align: center; margin: 0; position: absolute; top: 50%; left: 50%; -ms-transform: translate(-50%, -50%); transform: translate(-50%, -70%); width:80%">
		<img src="{{asset('mainweb/images/maskot/maskotdepan.png')}}" class="img-fluid" width=200 alt="png image">
        <h1>CEG 2021 - Coming Soon</h1>
        <h3>Site under construction!</h3>
    </div>
    
@endsection