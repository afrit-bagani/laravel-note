<x-app-layout>
    <main>
        <!-- Found Cars -->
        <section>
            <div class="container">
                <div class="sm:flex items-center justify-between mb-medium">
                    <div class="flex items-center">
                        <button class="show-filters-button flex items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                                stroke="currentColor" style="width: 20px">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M6 13.5V3.75m0 9.75a1.5 1.5 0 0 1 0 3m0-3a1.5 1.5 0 0 0 0 3m0 3.75V16.5m12-3V3.75m0 9.75a1.5 1.5 0 0 1 0 3m0-3a1.5 1.5 0 0 0 0 3m0 3.75V16.5m-6-9V3.75m0 3.75a1.5 1.5 0 0 1 0 3m0-3a1.5 1.5 0 0 0 0 3m0 9.75V10.5" />
                            </svg>
                            Filters
                        </button>
                        <h2>Define your search criteria</h2>
                    </div>

                    <select class="sort-dropdown">
                        <option value="">Order By</option>
                        <option value="price">Price Asc</option>
                        <option value="-price">Price Desc</option>
                    </select>
                </div>
                <div class="search-car-results-wrapper">
                    <div class="search-cars-sidebar">
                        <div class="card card-found-cars">
                            <p class="m-0">Found <strong>4,568</strong> cars</p>

                            <button class="close-filters-button">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"
                                    style="width: 24px">
                                    <path fill-rule="evenodd"
                                        d="M5.47 5.47a.75.75 0 0 1 1.06 0L12 10.94l5.47-5.47a.75.75 0 1 1 1.06 1.06L13.06 12l5.47 5.47a.75.75 0 1 1-1.06 1.06L12 13.06l-5.47 5.47a.75.75 0 0 1-1.06-1.06L10.94 12 5.47 6.53a.75.75 0 0 1 0-1.06Z"
                                        clip-rule="evenodd" />
                                </svg>
                            </button>
                        </div>
                        <x-search-form />
                    </div>

                    <div class="search-cars-results">
                        <div class="car-items-listing">
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                            <div class="car-item card">
                                <a href="#">
                                    <img src="/img/cars/Lexus-RX200t-2016/1.jpeg" alt=""
                                        class="car-item-img rounded-t" />
                                </a>
                                <div class="p-medium">
                                    <div class="flex items-center justify-between">
                                        <small class="m-0 text-muted">New Jersey</small>
                                        <button class="btn-heart">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                style="width: 20px">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                                            </svg>
                                        </button>
                                    </div>
                                    <h2 class="car-item-title">2016 - Lexus RX200t</h2>
                                    <p class="car-item-price">$25,000</p>
                                    <hr />
                                    <p class="m-0">
                                        <span class="car-item-badge">SUV</span>
                                        <span class="car-item-badge">Electric</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <nav class="pagination my-large">
                            <a href="#" class="pagination-item">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" style="width: 18px">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="m18.75 4.5-7.5 7.5 7.5 7.5m-6-15L5.25 12l7.5 7.5" />
                                </svg>
                            </a>
                            <a href="#" class="pagination-item">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" style="width: 18px">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M15.75 19.5 8.25 12l7.5-7.5" />
                                </svg>
                            </a>

                            <a href="#" class="pagination-item"> 1 </a>
                            <a href="#" class="pagination-item"> 2 </a>
                            <span class="pagination-item active"> 3 </span>
                            <a href="#" class="pagination-item"> 4 </a>
                            <a href="#" class="pagination-item">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" style="width: 18px">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                                </svg>
                            </a>
                            <a href="#" class="pagination-item">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" style="width: 18px">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="m5.25 4.5 7.5 7.5-7.5 7.5m6-15 7.5 7.5-7.5 7.5" />
                                </svg>
                            </a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!--/ Found Cars -->
    </main>
</x-app-layout>
