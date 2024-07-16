@extends('layouts.frontend.master')
@section('content')
    <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <!-- main-area -->
    <main>

        <!-- breadcrumb-area -->
        <section class="breadcrumb-area breadcrumb-bg"
            data-background="{{ asset('public/frontend-assets') }}/img/bg/breadcrumb_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-content text-center">
                            <h2>{{ __('translate.smart_shop') }}</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ url('/home') }}">{{ __('translate.home') }}</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ $formData['title'] }}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->
        <!-- shop-area -->
        <div class="shop-area gray-bg pt-10 pb-20">
            <div class="custom-container-two">
                <div class="row justify-content-center">
                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-8 order-2 order-lg-0">
                        <aside class="shop-sidebar">
                            <div class="widget shop-widget mb-30">
                                <div class="shop-widget-title">
                                    <h6 class="title">{{ __('translate.product_category') }}</h6>
                                </div>
                                <div class="shop-cat-list">
                                    <ul>
                                        @if (isset($subcategory))
                                            @foreach ($subcategory as $subcat)
                                                <li><a
                                                        href="{{ url('categories/' . $subcat->slug) }}">{{ $subcat->title }}</a><span>{{ count($subcat->products) }}</span>
                                                </li>
                                            @endforeach
                                        @endif
                                        @if (isset($subchild))
                                            @foreach ($subchild as $subchil)
                                                <li><a
                                                        href="{{ url('categories/' . $subchil->slug) }}">{{ $subchil->title }}</a><span>{{ count($subchil->products) }}</span>
                                                </li>
                                            @endforeach
                                        @endif
                                        @if (isset($categories))
                                            @foreach ($categories as $category)
                                                <li><a
                                                        href="{{ url('categories/' . $category->slug) }}">{{ $category->title }}</a><span>{{ count($category->products) }}</span>
                                                </li>
                                            @endforeach
                                        @endif
                                    </ul>
                                </div>
                            </div>
                            <div class="widget shop-widget mb-30">
                                <div class="shop-widget-title">
                                    <h6 class="title">{{ __('translate.filter_by_price') }}</h6>
                                </div>
                                <div class="price_filter">
                                    <div id="slider-range"></div>
                                    <div class="price_slider_amount">
                                        <span>Price :</span>
                                        <input type="text" id="amount" name="price" placeholder="Add Your Price" />
                                    </div>
                                </div>
                            </div>
                            <div class="widget shop-widget mb-30">
                                <div class="shop-widget-title">
                                    <h6 class="title">{{ __('translate.new_product') }}</h6>
                                    <div class="slider-nav"></div>
                                </div>
                                <div class="sidebar-product-active">
                                    @php
                                        $c = 0;
                                        $total = count($new_products) - 1;
                                    @endphp
                                    @for ($i = 0; $i < ceil(count($new_products) / 3); $i++)
                                        <div class="sidebar-product-list">
                                            <ul>
                                                @for ($j = 0; $j < 3; $j++)
                                                    <li>
                                                        <div class="sidebar-product-thumb">
                                                            <a
                                                                href="{{ url('product-details/' . $new_products[$c]->slug) }}"><img
                                                                    width="95px" height="84px"
                                                                    src="{{ asset('public/uploads/product/' . $new_products[$c]->product_image) }}"
                                                                    alt="{{ $new_products[$c]->product_title }}"></a>
                                                        </div>
                                                        <div class="sidebar-product-content">
                                                            <div class="rating">
                                                                <i
                                                                    class="fas fa-star {{ ceil($new_products[$c]->avgrating()->avg('rating')) >= 1 ? 'active' : null }}"></i>
                                                                <i
                                                                    class="fas fa-star {{ ceil($new_products[$c]->avgrating()->avg('rating')) >= 2 ? 'active' : null }}"></i>
                                                                <i
                                                                    class="fas fa-star {{ ceil($new_products[$c]->avgrating()->avg('rating')) >= 3 ? 'active' : null }}"></i>
                                                                <i
                                                                    class="fas fa-star {{ ceil($new_products[$c]->avgrating()->avg('rating')) >= 4 ? 'active' : null }}"></i>
                                                                <i
                                                                    class="fas fa-star {{ ceil($new_products[$c]->avgrating()->avg('rating')) >= 5 ? 'active' : null }}"></i>
                                                            </div>
                                                            <h5><a
                                                                    href="{{ url('product-details/' . $new_products[$c]->slug) }}">{{ Str::substr($new_products[$c]->product_title, 0, 30) }}{{ strlen($new_products[$c]->product_title) > 30 ? '...' : '.' }}</a>
                                                            </h5>
                                                            <span>{{ $basicInfo->currency_symbol }} {{ $new_products[$c]->new_price }}</span>
                                                        </div>
                                                    </li>
                                                    @php
                                                        if ($c == $total) {
                                                            break;
                                                        }
                                                        $c++;
                                                    @endphp
                                                @endfor
                                            </ul>
                                        </div>
                                    @endfor
                                </div>
                            </div>
                            <div class="widget shop-widget mb-30">
                                <div class="shop-widget-title">
                                    <h6 class="title">{{ __('translate.product_type') }}</h6>
                                </div>
                                <div class="sidebar-brand-list">
                                    <ul id="product_type">
                                        <li class="product_type {{ $formData['productType'] == 1 ? 'active' : null }}"
                                            product_type='1'><a href="javascript:void(0)">{{ __('translate.new_arrival') }}</a></li>
                                        <li class="product_type {{ $formData['productType'] == 2 ? 'active' : null }}"
                                            product_type='2'><a href="javascript:void(0)">{{ __('translate.best_selling') }}</a></li>
                                        <li class="product_type {{ $formData['productType'] == 3 ? 'active' : null }}"
                                            product_type='3'><a href="javascript:void(0)">{{ __('translate.trending') }}</a></li>
                                    </ul>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <div class="col-xl-9 col-lg-8">
                        <div class="shop-top-meta mb-40">
                            <p class="show-result"></p>
                            <div class="shop-meta-right">
                                <form action="#">
                                    <select id="sort_by" class="custom-select">
                                        <option {{ $formData['sortBy'] == 0 ? 'selected' : null }} value="0"
                                            selected="">{{ __('translate.default_sorting') }}</option>
                                        <option {{ $formData['sortBy'] == 1 ? 'selected' : null }} value="1">
                                            Alphabetically, A-Z</option>
                                        <option {{ $formData['sortBy'] == 2 ? 'selected' : null }} value="2">
                                            Alphabetically, Z-A</option>
                                        <option {{ $formData['sortBy'] == 3 ? 'selected' : null }} value="3">Price, low to
                                            high</option>
                                        <option {{ $formData['sortBy'] == 4 ? 'selected' : null }} value="4">Price, high
                                            to low</option>
                                    </select>
                                </form>
                            </div>
                        </div>
                        <div class="row">
                            @foreach ($products->items() as $product)
                                <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6">
                                    <div class="exclusive-item exclusive-item-three text-center mb-50">
                                        <div class="exclusive-item-thumb">
                                            <a href="{{ url('product-details/' . $product->slug) }}">
                                                <img width="327px" height="358px"
                                                    src="{{ asset('public/uploads/product/' . $product->product_image) }}"
                                                    alt="{{ $product->product_title }}">
                                                <img width="327px" height="358px" class="overlay-product-thumb"
                                                    src="{{ asset('public/uploads/product/' . $product->product_image_back) }}"
                                                    alt="{{ $product->product_title }}">
                                            </a>
                                        </div>
                                        <div class="exclusive-item-content">
                                            <h5><a
                                                    href="{{ url('product-details/' . $product->slug) }}">{{ Str::substr($product->product_title, 0, 40) }}{{ strlen($product->product_title) > 40 ? '...' : '.' }}</a>
                                            </h5>
                                            <div class="exclusive--item--price">
                                                <del class="old-price">{{ $basicInfo->currency_symbol }}{{ $product->old_price }}</del>
                                                <span class="new-price">{{ $basicInfo->currency_symbol }}{{ $product->new_price }}</span>
                                            </div>
                                            <div class="rating">
                                                <i
                                                    class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 1 ? 'active' : null }}"></i>
                                                <i
                                                    class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 2 ? 'active' : null }}"></i>
                                                <i
                                                    class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 3 ? 'active' : null }}"></i>
                                                <i
                                                    class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 4 ? 'active' : null }}"></i>
                                                <i
                                                    class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 5 ? 'active' : null }}"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        {!! $products->onEachSide(1)->links() !!}
                    </div>
                </div>
            </div>
        </div>
        <!-- shop-area-end -->

    </main>
    <!-- main-area-end -->

@endsection
@section('script')
    <script>
        $(document).ready(function() {
            $('#sort_by').on('change', function() {
                let sort_by = $('#sort_by').val();
                action(sort_by);
            });

            $('.product_type').on('click', function() {

                $(this).siblings().each(function(index, element) {
                    $(this).removeClass("active");
                })
                $(this).toggleClass("active");
                var isAtive = $(this).hasClass("active");
                product_type = isAtive ? $(this).attr("product_type") : null;
                action(null, product_type = product_type)

            });

            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 500,
                values: ["{{ $formData['price_from'] }}", "{{ $formData['price_to'] }}"],
                slide: function(event, ui) {
                    $("#amount").val("{{ $basicInfo->currency_symbol }} " + ui.values[0] + " - {{ $basicInfo->currency_symbol }} " + ui.values[1]);
                    var price_range = ui.values[0] + '-' + ui.values[1];
                    action(sort_by = '', product_type = null, price_range);
                }
            });
            $("#amount").val("{{ $basicInfo->currency_symbol }} " + $("#slider-range").slider("values", 0) + " - {{ $basicInfo->currency_symbol }} " + $("#slider-range").slider(
                "values", 1));
        });


        function action(sort_by = null, product_type = null, price_range = null) {
            let urlParams = new URLSearchParams(window.location.search);
            let param_sortBy = urlParams.get('sortBy') ? urlParams.get('sortBy') : '';
            let param_productType = urlParams.get('productType') ? urlParams.get('productType') : '';
            let param_priceRange = urlParams.get('priceRange') ? urlParams.get('priceRange') : '';

            if (sort_by) {
                param_sortBy = sort_by;
            } else if (product_type) {
                param_productType = product_type;
            } else if (price_range) {
                param_priceRange = price_range;
            }
            window.location.replace("?&sortBy=" + param_sortBy + "&productType=" + param_productType + "&priceRange=" +
                param_priceRange);
        }
    </script>
@endsection
