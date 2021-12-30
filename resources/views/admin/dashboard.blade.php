@extends('layouts.mainweb')

@section('title')
	CEG 2021 - Home
@endsection

@section('content')
<br><br><br>
<div class="container"> 
    <div class="row">
		<div class="col-md-4 mb-3">
			<div class="card text-white text-center bg-danger">
				<div class="card-header font-weight-bold">
					Tim "PENDING"
				</div>
				<div class="card-body" style="font-size: 3em">
					{{$count1}}
				</div>
				<div class="card-footer">
				</div>
			</div>
		</div>
		<div class="col-md-4 mb-3">
			<div class="card text-white text-center bg-success">
				<div class="card-header font-weight-bold">
					Tim "CONFIRMED"
				</div>
				<div class="card-body" style="font-size: 3em">
					{{$count2}}
				</div>
				<div class="card-footer">
				</div>
			</div>
		</div>
		<div class="col-md-4 mb-3">
			<div class="card text-center bg-warning">
				<div class="card-header font-weight-bold">
					All Team
				</div>
				<div class="card-body" style="font-size: 3em">
					{{$count3}}
				</div>
				<div class="card-footer">
				</div>
			</div>
		</div>
    </div>
</div>
@endsection
