@if ($paginator->hasPages())
<div class="pagination">
    <ul class="data-pag">
        @if (!$paginator->onFirstPage())
            <li><a href="{{ $paginator->previousPageUrl() }}">< Prev</a></li>
        @endif
        @foreach ($elements as $element)
            @if (is_array($element))
				@foreach ($element as $page => $url)
					@if ($page == $paginator->currentPage())
					    <li class="pageNumber active"><a href="{{$url}}">{{ $page }}</a></li>
					@else
						<li class="pageNumber"><a href="{{$url}}">{{ $page }}</a></li>
					@endif
				@endforeach
			@endif
        @endforeach
        @if ($paginator->hasMorePages())
            <li><a href="{{ $paginator->nextPageUrl() }}">Next ></a></li>
		@endif
    </ul>
</div>
@endif