<x-app-layout title="Car Findal Service">
    <main>
        <!-- New Cars -->
        <section>
            <div class="container">
<<<<<<< HEAD
                <div class="flex justify-between items-center">
                    <h2>My Favourite Cars</h2>
                    @if ($cars->total() > 0)
                        <div class="pagination-summery">
                            <p>
                                Showing {{ $cars->firstItem() }} to {{ $cars->lastItem() }} of {{ $cars->total() }}
                                results
                            </p>
                        </div>
                    @endif
                </div>
=======
                <h2>My Favourite Cars</h2>
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
                <div class="car-items-listing">
                    @forelse ($cars as $car)
                        <x-car-item :$car :isInWatchlist="true" />
                    @empty
                        <h4>You Don't have any favourite car</h4>
                    @endforelse
                </div>
<<<<<<< HEAD
                {{ $cars->onEachSide(1)->links('pagination') }}
=======

                <nav class="pagination my-large">
                    <a href="#" class="pagination-item">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" style="width: 18px">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="m18.75 4.5-7.5 7.5 7.5 7.5m-6-15L5.25 12l7.5 7.5" />
                        </svg>
                    </a>
                    <a href="#" class="pagination-item">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" style="width: 18px">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
                        </svg>
                    </a>

                    <a href="#" class="pagination-item"> 1 </a>
                    <a href="#" class="pagination-item"> 2 </a>
                    <span class="pagination-item active"> 3 </span>
                    <a href="#" class="pagination-item"> 4 </a>
                    <a href="#" class="pagination-item">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" style="width: 18px">
                            <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                        </svg>
                    </a>
                    <a href="#" class="pagination-item">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" style="width: 18px">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="m5.25 4.5 7.5 7.5-7.5 7.5m6-15 7.5 7.5-7.5 7.5" />
                        </svg>
                    </a>
                </nav>
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
            </div>
        </section>
        <!--/ New Cars -->
    </main>
<<<<<<< HEAD
</x-app-layout>
=======
</x-app-layout>
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
