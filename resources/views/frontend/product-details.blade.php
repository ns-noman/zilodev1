@extends('layouts.frontend.master')
@section('content')
    <!-- main-area -->
    <main>
        <!-- breadcrumb-area -->
        <section class="breadcrumb-area breadcrumb-bg"
            data-background="{{ asset('public/frontend-assets') }}/img/bg/breadcrumb_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-content text-center">
                            <h2>{{ __('translate.product_details') }}</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ url('home') }}">{{ __('translate.home') }}</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ __('translate.product_details') }}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- shop-details-area -->
        <section class="shop-details-area pt-100 pb-100">
            <div class="container">
                <div class="row mb-95">
                    <div class="col-xl-7 col-lg-6">
                        <div class="shop-details-nav-wrap">
                            <div class="shop-details-nav">
                                @foreach ($product->details as $key => $item)
                                    <div class="shop-nav-item">
                                        <img src="{{ asset('public/uploads/product/' . $item->image) }}" alt="">
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <div class="shop-details-img-wrap">
                            <div class="shop-details-active">
                                @foreach ($product->details as $key => $item)
                                    <div class="shop-details-img">
                                        <a href="{{ asset('public/uploads/product/' . $item->image) }}" class="popup-image">
                                            <img src="{{ asset('public/uploads/product/' . $item->image) }}" alt="">
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-6">
                        <div class="shop-details-content">
                            <span class="stock-info">{{ $product->hasStock ? 'In Stock' : 'Out Of Stock' }}</span>
                            <h2>{{ $product->product_title }}</h2>
                            <div class="shop-details-review">
                                <div class="rating">
                                    <i class="fas fa-star {{ $product->avg_rating >= 1 ? 'active' : null }}"></i>
                                    <i class="fas fa-star {{ $product->avg_rating >= 2 ? 'active' : null }}"></i>
                                    <i class="fas fa-star {{ $product->avg_rating >= 3 ? 'active' : null }}"></i>
                                    <i class="fas fa-star {{ $product->avg_rating >= 4 ? 'active' : null }}"></i>
                                    <i class="fas fa-star {{ $product->avg_rating >= 5 ? 'active' : null }}"></i>
                                </div>
                                <span>- {{ count($product->review->items()) }} {{ __('translate.customer_reviews') }}</span>
                            </div>
                            <div class="shop-details-price">
                                <h2>{{ $basicInfo->currency_symbol }}{{ $product->new_price }} <del>{{ $basicInfo->currency_symbol }}{{ $product->old_price }}</del></h2>
                            </div>
                            <style>
                                div.color img {
                                    width: 30px;
                                }

                                #color li.active,
                                #ul-size li.active {
                                    border-style: solid;
                                    border-color: red;
                                    border-width: 1px;
                                }
                            </style>
                            <p>{{ $product->short_desc }}</p>
                            <div class="product-details-size mb-10">
                                <span>{{ __('translate.color') }} : </span>
                                <ul id="color">
                                    @foreach ($product->colors as $key => $item)
                                        <li class="colorImages {{ $key == 0 ? 'active' : null }}"
                                            colorid="{{ $item->color_id }}"><img title="{{ $item->color->name }}"
                                                height="30px" width="30px"
                                                src="{{ asset('public/uploads/product/' . $item->image) }}" alt="">
                                        </li>
                                    @endforeach
                                </ul>

                            </div>
                            <div class="product-details-size mb-40">
                                <span>{{ __('translate.size') }} : </span>
                                <ul id="ul-size">
                                </ul>
                            </div>
                            <div class="perched-info">
                                <div class="cart-plus">
                                    <form action="#">
                                        <div class="cart-plus-minus">
                                            <input type="text" value="1" id="product_qty">
                                        </div>
                                    </form>
                                </div>
                                <a id="addToCart" href="javascript:void(0)" class="btn add-card-btn">{{ __('translate.add_to_cart') }}</a>
                            </div>
                            <div class="shop-details-bottom">
                                <h5><a href="javascript:void(0)" id="addToWishList"><i class="far fa-heart"></i>{{ __('translate.add_to_wish_list') }}</a></h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-desc-wrap mb-20">
                            <ul class="nav nav-tabs mb-25" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="details-tab" data-toggle="tab" href="#details"
                                        role="tab" aria-controls="details" aria-selected="true">{{ __('translate.product_details') }}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="qa-tab" data-toggle="tab" href="#qa" role="tab"
                                        aria-controls="qa" aria-selected="false">{{ __('translate.answer_question') }}</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="details" role="tabpanel"
                                    aria-labelledby="details-tab">
                                    <div class="product-desc-content">
                                        <h4 class="title">{{ __('translate.product_details') }}</h4>
                                        <div class="row">
                                            <div class="col-xl-3 col-md-4">
                                                <div class="product-desc-img">
                                                    {{-- <img src="{{ asset('public/uploads') }}/product/desc_img.jpg" alt=""> --}}
                                                </div>
                                            </div>
                                            <div class="col-xl-9 col-md-8">
                                                <h5 class="small-title">{{ $product->product_title }}</h5>
                                                <p>{!! $product->description !!}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="qa" role="tabpanel" aria-labelledby="qa-tab">
                                    <div class="product-desc-content">
                                        <h4 class="title">{{ __('translate.answer_question') }}</h4>
                                        <div class="row">
                                            <div class="col-xl-3 col-md-4">
                                                <div class="product-desc-img">
                                                    {{-- <img src="{{ asset('public/uploads') }}/product/desc_img.jpg" alt=""> --}}
                                                </div>
                                            </div>
                                            <div class="col-xl-9 col-md-8">
                                                <p>
                                                    @isset($product->subchild->answer_question)
                                                        {!! $product->subchild->answer_question !!}
                                                    @endisset
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="related-product-wrap pb-40">
                            <div class="deal-day-top">
                                <div class="deal-day-title">
                                    <h4 class="title">{{ __('translate.viewers_also_like') }}</h4>
                                </div>
                                <div class="related-slider-nav">
                                    <div class="slider-nav"></div>
                                </div>
                            </div>
                            <div class="row">
                                @foreach ($product->relatedProducts as $key => $relatedProduct)
                                    <div class="col-xl-3">
                                        <div class="exclusive-item exclusive-item-three text-center">
                                            <div class="exclusive-item-thumb">
                                                <a href="{{ url('product-details/' . $relatedProduct->slug) }}">
                                                    <img width="327px" height="358px"
                                                        src="{{ asset('public/uploads/product/' . $relatedProduct->product_image) }}"
                                                        alt="">
                                                    <img width="327px" height="358px" class="overlay-product-thumb"
                                                        src="{{ asset('public/uploads/product/' . $relatedProduct->product_image_back) }}"
                                                        alt="">
                                                </a>
                                            </div>
                                            <div class="exclusive-item-content">
                                                <h5><a
                                                        href="{{ url('product-details/' . $relatedProduct->slug) }}">{{ Str::substr($relatedProduct->product_title, 0, 40) }}{{ strlen($relatedProduct->product_title) > 40 ? '...' : '.' }}</a>
                                                </h5>
                                                <div class="exclusive--item--price">
                                                    <del class="old-price">{{ $basicInfo->currency_symbol }}{{ $relatedProduct->old_price }}</del>
                                                    <span class="new-price">{{ $basicInfo->currency_symbol }}{{ $relatedProduct->new_price }}</span>
                                                </div>
                                                <div class="rating">
                                                    <i
                                                        class="fas fa-star {{ ceil($relatedProduct->avgrating()->avg('rating')) >= 1 ? 'active' : null }}"></i>
                                                    <i
                                                        class="fas fa-star {{ ceil($relatedProduct->avgrating()->avg('rating')) >= 2 ? 'active' : null }}"></i>
                                                    <i
                                                        class="fas fa-star {{ ceil($relatedProduct->avgrating()->avg('rating')) >= 3 ? 'active' : null }}"></i>
                                                    <i
                                                        class="fas fa-star {{ ceil($relatedProduct->avgrating()->avg('rating')) >= 4 ? 'active' : null }}"></i>
                                                    <i
                                                        class="fas fa-star {{ ceil($relatedProduct->avgrating()->avg('rating')) >= 5 ? 'active' : null }}"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <div class="product-reviews-wrap">
                            <div class="deal-day-top">
                                <div class="deal-day-title">
                                    <h4 class="title">{{ __('translate.product_reviews') }}</h4>
                                </div>
                            </div>
                            <div class="reviews-count-title">
                                <h5 class="title">{{ count($product->review->items()) }} {{ __('translate.review_for') }} "{{ $product->product_title }}"</h5>
                            </div>
                            <div class="row">
                                <div class="col-lg-8 col-sm-12">
                                    <div class="product-review-list blog-comment">
                                        <ul>
                                            @foreach ($product->review->items() as $key => $value)
                                                <li>
                                                    <div class="single-comment">
                                                        <div class="comment-avatar-img">
                                                            <img height="32px" width="32px"
                                                                src="{{ $value->user->image ? asset('public/uploads/user/' . $value->user->image) : asset('public/frontend-assets/img/user.png') }}"
                                                                alt="img">
                                                        </div>
                                                        <div class="comment-text">
                                                            <div class="comment-avatar-info">
                                                                <h5>{{ $value->user->name }} <span class="comment-date"> -
                                                                        {{ date_format(date_create($value->created_at), 'M d, Y') }}</span>
                                                                </h5>
                                                                <div class="rating">
                                                                    <i
                                                                        class="fas fa-star {{ $value->rating >= 1 ? 'active' : null }}"></i>
                                                                    <i
                                                                        class="fas fa-star {{ $value->rating >= 2 ? 'active' : null }}"></i>
                                                                    <i
                                                                        class="fas fa-star {{ $value->rating >= 3 ? 'active' : null }}"></i>
                                                                    <i
                                                                        class="fas fa-star {{ $value->rating >= 4 ? 'active' : null }}"></i>
                                                                    <i
                                                                        class="fas fa-star {{ $value->rating >= 5 ? 'active' : null }}"></i>
                                                                </div>
                                                            </div>
                                                            <p>{{ $value->review }}</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            @endforeach
                                            {!! $product->review->onEachSide(1)->links() !!}
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- shop-details-area-end -->

    </main>
    <!-- main-area-end -->
@endsection

@section('script')
    <script>
        $(document).ready(function() {

            loadSize("{{ $product->id }}", "{{ $product->colors[0]->color_id }}");

            $('.colorImages').on('click', function(e) {
                $(this).siblings().each(function(index, element) {
                    $(this).removeClass("active");
                });

                $(this).addClass("active");

                let color_id = $(this).attr("colorid");
                let src = $(this).children()[0].src;
                $('.slick-active a').attr('href', src);
                $('.slick-active a > img').attr('src', src);

                loadSize("{{ $product->id }}", color_id);

            });


            $('.sizes').on('click', function() {
                $(this).siblings().each(function(index, element) {
                    $(this).removeClass("active");
                });
                $(this).addClass("active");
                let color_id = $(this).attr("colorid");
            });



            $('.inc , .dec').on('click', function() {
                let stock = 0;
                let insertQty = parseInt($('#product_qty').val());
                $('.sizes').each(function(index, value) {
                    if ($(this).hasClass("active")) {
                        stock = parseInt($(this).attr("stock"));
                    }
                });
                if (stock < insertQty) {
                    alert('Quantity Exceed!');
                    $('#product_qty').val(stock);
                }
                if (insertQty == 0) {
                    $('#product_qty').val(1);
                }
            });


            $('#addToCart').on('click', function() {
                let cartData = {};
                cartData.product_id = '{{ $product->id }}';
                cartData.color_id = $('.colorImages.active').attr('colorid');
                cartData.size_id = $('.sizes.active').attr('id').split('-')[1];
                cartData.quantity = $('#product_qty').val();

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: "{{ url('cart-insert-update') }}",
                    method: "POST",
                    data: cartData,
                    dataType: "json",
                    success: function(res) {
                        Swal.fire({
                            position: "middle-center",
                            icon: "success",
                            title: res.message,
                            showConfirmButton: false,
                            timer: 2000
                        });
                        const myTimeout = setTimeout(categories, 1500);
                    }
                });

            });

            $('#addToWishList').on('click', function() {
                let wishListData = {};
                wishListData.product_id = '{{ $product->id }}';
                wishListData.color_id = $('.colorImages.active').attr('colorid');
                wishListData.size_id = $('.sizes.active').attr('id').split('-')[1];
                wishListData.quantity = $('#product_qty').val();

                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: "{{ url('wishlist-insert-update') }}",
                    method: "POST",
                    data: wishListData,
                    dataType: "json",
                    success: function(res) {
                        Swal.fire({
                            position: "middle-center",
                            icon: "success",
                            title: res.message,
                            showConfirmButton: false,
                            timer: 2000
                        });
                        const myTimeout = setTimeout(categories, 1500);
                    }
                });

            });


        });

        function categories() {
            window.open("{{ url('categories/all') }}", "_self");
        }


        function sizes(id) {
            $('.sizes').each(function(index, value) {
                $(this).removeClass("active");
            });
            $('#size-' + id).addClass("active");
        }

        function loadSize(productID, colorID) {
            $.ajax({
                url: "{{ url('load-sizes') }}/" + productID + '/' + colorID,
                method: "GET",
                dataType: "json",
                success: function(data) {
                    var output = '';
                    var active = false;
                    $('#product_qty').val(1);
                    $.each(data, function(key, value) {
                        if (value.stock > 0) {
                            output += '<li onclick="sizes(' + value.size_id + ')" stock="' + value
                                .stock + '" id="size-' + value.size_id + '" class="sizes ' + (!active ?
                                    'active' : '') + '">';
                            active = true;
                        } else {
                            output += '<li id="size-' + value.size_id + '" class="sizes">';
                        }

                        output += '<a href="javascript:void(0)">';
                        if (value.stock <= 0) {
                            output += '<del>' + value.size.code + '</del>';
                        } else {
                            output += value.size.code;
                        }
                        output += '</a>';
                        output += '</li>';
                    });
                    $('#ul-size').html(output);
                }
            });
        }
    </script>
@endsection
