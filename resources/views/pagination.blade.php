<?php
/** @var $paginator \Illuminate\Pagination\LengthAwarePaginator */
?>

@if ($paginator->hasPages())
    <nav class="pagination my-large">

<<<<<<< HEAD
        {{-- Previous Button logic --}}
        @if ($paginator->onFirstPage())
            <span class="pagination-item">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" style="width: 18px">
=======
        {{-- Previous Button Logic --}}
        @if ($paginator->onFirstPage())
            <span class="pagination-item">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                    style="width: 18px">
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
                </svg>
            </span>
        @else
            <a href="{{ $paginator->previousPageUrl() }}" class="pagination-item">
<<<<<<< HEAD
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" style="width: 18px">
=======
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                    style="width: 18px">
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
                </svg>
            </a>
        @endif

        {{-- Page Numbers Logic --}}
        @foreach ($elements as $element)
            @if (is_string($element))
                <span class="pagination-item">{{ $element }}</span>
            @endif

            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <span class="pagination-item active">{{ $page }}</span>
                    @else
                        <a href="{{ $url }}" class="pagination-item">{{ $page }}</a>
                    @endif
                @endforeach
            @endif
        @endforeach

<<<<<<< HEAD
        {{-- Next Button logic --}}
        @if ($paginator->hasMorePages())
            <a href="{{ $paginator->nextPageUrl() }}" class="pagination-item">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" style="width: 18px">
=======
        {{-- Next Button Logic --}}
        @if ($paginator->hasMorePages())
            <a href="{{ $paginator->nextPageUrl() }}" class="pagination-item">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                    style="width: 18px">
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
                    <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                </svg>
            </a>
        @else
<<<<<<< HEAD
            <span href="#" class="pagination-item">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" style="width: 18px">
=======
            <span class="pagination-item">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                    style="width: 18px">
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
                    <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                </svg>
            </span>
        @endif

    </nav>
<<<<<<< HEAD
@endif
=======
@endif
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
