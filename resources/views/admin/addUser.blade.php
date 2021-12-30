@extends('layouts.mainweb')

@section('title')
	CEG 2021 - Tambah Panitia
@endsection

@section('content')
<br><br><br>
<div class="container"> 
    <div class="row justify-content-center">
        <div class="col-md-8 col-11">
            <div class="card">
				@if (session('pesan'))
					<div class="alert alert-success" role="alert">
						{{ session('pesan') }}
					</div>
				@endif
				<div class="card-header">{{ __('Register') }}</div>

				<div class="card-body">
					<form method="POST" action="{{ route('regis.save') }}">
						@csrf

						<div class="form-group row">
							<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

							<div class="col-md-6">
								<input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

								@error('name')
									<span class="invalid-feedback" role="alert">
										<strong>{{ $message }}</strong>
									</span>
								@enderror
							</div>
						</div>

						<div class="form-group row">
							<label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

							<div class="col-md-6">
								<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

								@error('email')
									<span class="invalid-feedback" role="alert">
										<strong>{{ $message }}</strong>
									</span>
								@enderror
							</div>
						</div>

						<div class="form-group row">
							<label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

							<div class="col-md-6">
								<input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

								@error('password')
									<span class="invalid-feedback" role="alert">
										<strong>{{ $message }}</strong>
									</span>
								@enderror
							</div>
						</div>

						<div class="form-group row">
							<label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

							<div class="col-md-6">
								<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
							</div>
						</div>

						<div class="form-group row">
							<label for="role" class="col-md-4 col-form-label text-md-right">{{ __('Roles') }}</label>

							<div class="col-md-6">
								<input type='radio' id='owner' name='role' required value='admin'>
								<label for='owner'>Admin</label><br>
								<input type='radio' id='pegawai' name='role' required value='bph'>
								<label for='pegawai'>BPH</label><br>
								<input type='radio' id='member' name='role' required value='pubreg'>
								<label for='member'>Pubreg</label><br>
								<input type='radio' id='member' name='role' required value='keamanan'>
								<label for='member'>Keamanan</label><br>
							</div>
						</div>

						<div class="form-group row mb-0">
							<div class="col-md-6 offset-md-4">
								<button type="submit" class="btn btn-primary">
									{{ __('Register') }}
								</button>
							</div>
						</div>
					</form>
				</div>
            </div>
        </div>
    </div>
    <div class="row mt-4 justify-content-center">
        <div class="col-md-8 col-11">
            <div class="card">
                <div class="card-header">Generate Password</div>
                <div class="card-body">
                    <form method="POST" action="{{ route('password.generate') }}">
                        @csrf
					    <label>Pilih Tim</label>
					    <select class='form-control' name='tim'>
					        @foreach($tim as $item)
					        <option value="{{$item->id}}">{{$item->nama}}</option>
					        @endforeach
					    </select>
					    <button type="submit" class="my-3 btn btn-primary">Generate Password</button>
					</form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
