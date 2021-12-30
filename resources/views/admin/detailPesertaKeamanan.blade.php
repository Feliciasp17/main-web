<?php 
$ringan = 0;
$sedang = 0;
$berat = 0;
?>
<table id="peserta2" class="table table-hover table-condensed">
	<thead>
		<tr>
			<th>No.</th>
			<th>Jenis Pelanggaran</th>
			<th>Tipe</th>
			<th>Waktu</th>
		</tr>
	</thead>
	<tbody>
		@foreach($detaildata as $dp)
			<tr>
				<td > {{$loop->iteration}} </td>
				<td > {{$dp->pelanggaran->pelanggaran}} </td>
				<td > {{$dp->pelanggaran->jenis}} </td>
				<td > {{$dp->created_at}} </td>
			</tr>
			@if($dp->pelanggaran->jenis == 'ringan')
			<?php 
				$ringan++;
				if($ringan >=3)
				{
					$ringan = $ringan -3;
					$sedang++;
				}
			?>
			@elseif($dp->pelanggaran->jenis == 'sedang')
			<?php 
				$sedang++;
				if($sedang >=3)
				{
					$sedang = $sedang -3;
					$berat++;
				}
			?>
			@else
			<?php 
				$berat++;
			?>
			@endif
		@endforeach	
	</tbody>
	<tfoot>
	Total Pelanggaran adalah<br>
	Ringan : {{$ringan}} <br>
	Sedang : {{$sedang}} <br>
	Berat : {{$berat}} <br>
	</tfoot>
</table>