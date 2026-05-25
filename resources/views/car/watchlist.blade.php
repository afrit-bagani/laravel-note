<x-app-layout title="Car Findal Service">
    <main>
        <!-- New Cars -->
        <section>
            <div class="container">
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
                <div class="car-items-listing">
                    @forelse ($cars as $car)
                        <x-car-item :$car :isInWatchlist="true" />
                    @empty
                        <h4>You Don't have any favourite car</h4>
                    @endforelse
                </div>
                {{ $cars->onEachSide(1)->links('pagination') }}
            </div>
        </section>
        <!--/ New Cars -->
    </main>
</x-app-layout>
