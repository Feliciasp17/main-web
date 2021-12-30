<table id="peserta2" class="table table-hover table-condensed">
	<thead>
		<tr>
			<th>No.</th>
			<th>Nama</th>
			<th>Role</th>
			<th>Whatsapp</th>
			<th>Line</th>
			<th>Email</th>
			<th>Alamat</th>
			@can('PintuPubreg')
				@if ($detaildata[0]->tim->status_file != 'confirmed')
				<th>Keterangan</th>
				@endif
			@endcan
		</tr>
	</thead>
	<tbody>
		@foreach($detaildata as $dp)
			<tr>
				<td > {{$loop->iteration}} </td>
				<td > {{$dp->nama}} </td>
				<td > {{$dp->role}} </td>
				<td > {{$dp->whatsapp}} </td>
				<td > {{$dp->line}} </td>
				<td > {{$dp->email}} </td>
				<td > {{$dp->alamat}} </td>
				@can('PintuPubreg')
					@if ($dp->tim->status_file != 'confirmed')
					<td>
					<a class="btn btn-success btn-sm" href="#">Edit</a>
					</td>
					@endif
				@endcan
			</tr>
		@endforeach	
	</tbody>
</table>