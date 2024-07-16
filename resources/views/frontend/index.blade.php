@extends('layouts.frontend.master')
@section('content')
    <!-- main-area -->
    @if ($alert = Session::get('alert'))
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12 p-1">
                        <div class="alert alert-{{ $alert['messageType'] }} alert-dismissible fade show">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>
                                {{ $alert['message'] }}
                            </strong>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    <main>
        <!-- slider-area -->
        <section class="third-slider-area" data-background="">
            <div class="custom-container-two">
                <div class="row">
                    <div class="col-12">
                        <div class="slider-active">
                            @foreach ($sliders as $slider)
                                <div class="single-slider slider-bg" data-background="{{ asset('public/uploads/slider/'.$slider->bgImg) }}">
                                    <div class="slider-content">
                                        <h5 data-animation="fadeInUp" data-delay=".3s">{{ $slider->title }}</h5>
                                        <h2 data-animation="fadeInUp" data-delay=".6s">Stylish top<span>{{ $slider->productName }}</span></h2>
                                        <p data-animation="fadeInUp" data-delay=".9s">Get up to
                                            <span>{{ $slider->discount }}%</span> Off Today Only</p>
                                        <a href="{{ url($slider->productLink) }}" class="btn yellow-btn"
                                            data-animation="fadeInUp" data-delay="1s">{{ __('translate.shop_now') }}</a>
                                    </div>
                                    <div class="slider-img" data-animation="fadeInRight" data-delay="1.2s">
                                        <img src="{{ asset('public/uploads/slider/' . $slider->proImg) }}"
                                            alt="{{ $slider->productName }}" title="{{ $slider->productName }}">
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    @foreach ($featureProducts as $product)
                        <div class="col-xl-4 col-md-6 col-sm-10">
                            <div class="slider-bottom-product list-product-item mb-30">
                                <div class="list-product-thumb">
                                    <a href="{{ url('product-details/' . $product->slug) }}"><img height="142px"
                                            width="172px"
                                            src="{{ asset('public/uploads/product/' . $product->product_image) }}"
                                            alt="{{ $product->product_title }}"></a>
                                </div>
                                <div class="list-product-content">
                                    <h6><a
                                            href="{{ url('product-details/' . $product->slug) }}">{{ Str::substr($product->product_title, 0, 25) }}{{ strlen($product->product_title) > 25 ? '...' : '.' }}</a>
                                    </h6>
                                    <p>{{ $basicInfo->currency_symbol }} {{ $product->new_price }}<span>{
                                            {{ round((($product->old_price - $product->new_price) / $product->old_price) * 100) }}%
                                            off }</span></p>
                                    <div class="rating">
                                        <i class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 1 ? 'active' : null }}"></i>
                                        <i class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 2 ? 'active' : null }}"></i>
                                        <i class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 3 ? 'active' : null }}"></i>
                                        <i class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 4 ? 'active' : null }}"></i>
                                        <i class="fas fa-star {{ ceil($product->avgrating()->avg('rating')) >= 5 ? 'active' : null }}"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
        <!-- slider-area-end -->


        <!-- exclusive-collection-area -->
        <section class="exclusive-collection pt-100 pb-55">
            <div class="custom-container-two">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="section-title text-center mb-60">
                            <span class="sub-title">{{ __('translate.exclusive_collection') }}</span>
                            <h2 class="title">{{ __('translate.best_selling_product') }}</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    @foreach ($bestselling as $product)
                        <div class="col-xl-3 col-md-4 col-sm-6">
                            <div class="exclusive-item exclusive-item-three text-center mb-40">
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
                                            href="{{ url('product-details/' . $product->slug) }}">{{ Str::substr($product->product_title, 0, 40) }}{{ count_chars($product->product_title) > 40 ? '...' : null }}</a>
                                    </h5>
                                    <div class="exclusive--item--price">
                                        <del class="old-price">{{ $basicInfo->currency_symbol }} {{ $product->old_price }}</del>
                                        <span class="new-price">{{ $basicInfo->currency_symbol }} {{ $product->new_price }}</span>
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
            </div>
        </section>
        <!-- exclusive-collection-area-end -->

        <!-- deal-of-the-day -->
        <section class="deal-of-the-day theme-bg pt-100 pb-70">
            <div class="custom-container-two">
                <div class="row">
                    <div class="custom-col-4">
                        <div class="deal-of-day-banner mb-30">
                            <a href="{{ $homeFeature[0]->feature_url }}"><img
                                    src="{{ asset($homeFeature[0]->feature_image ? 'public/uploads/home-feature/' . $homeFeature[0]->feature_image : 'public/admin-assets/dist/img/placeholder.png') }}"
                                    alt=""></a>
                        </div>
                    </div>
                    <div class="custom-col-8">
                        <div class="deal-day-top">
                            <div class="deal-day-title">
                                <h4 class="title">{{ __('translate.deal_of_day') }}</h4>
                            </div>
                            <div class="view-all-deal">
                                <a href="{{ url('/categories/all') }}"><i class="flaticon-scroll"></i> {{ __('translate.view_all') }}</a>
                            </div>
                        </div>
                        <div class="row deal-day-active">
                            @foreach ($deals as $key => $deal)
                                <div class="col-xl-3">
                                    <div class="most-popular-viewed-item mb-30">
                                        <div class="viewed-item-top">
                                            <div class="most--popular--item--thumb mb-20">
                                                <a href="{{ url('product-details/' . $deal->product->slug) }}">
                                                    <img width="170px" height="178px" src="{{ asset('public/uploads/product/' . $deal->product->product_image) }}" alt="">
                                                </a>
                                            </div>
                                            <div class="super-deal-content">
                                                <h6><a href="{{ url('product-details/' . $deal->product->slug) }}">{{ Str::substr($product->product_title, 0, 25) }}...</a></h6>
                                                <p>{{ $basicInfo->currency_symbol }} {{ $deal->product->new_price }}<span>{
                                                        {{ round((($deal->product->old_price - $deal->product->new_price) / $deal->product->old_price) * 100) }}%
                                                        {{ __('translate.off') }} }</span></p>
                                            </div>
                                        </div>
                                        <div class="viewed-item-bottom">
                                            <ul>
                                                <li>{{ __('translate.total_sold') }} : {{ $deal->product->total_sale }}</li>
                                                <li>{{ __('translate.stocks') }} : {{ $deal->product->product_details()->sum('stock') }}</li>
                                            </ul>
                                            <div class="progress">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: {{ round((($deal->product->old_price - $deal->product->new_price) / $deal->product->old_price) * 100) }}%;"
                                                    aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <div class="viewed-offer-time">
                                                <p><span>{{ __('translate.hurry_up') }}</span> {{ __('translate.limited_time_offer') }}</p>
                                                <div class="coming-time" data-countdown="{{ $deal->end_at }}"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- deal-of-the-day-end -->

        <!-- top-cat-banner -->
        <div class="top--cat--banner--area pt-80">
            <div class="custom-container-two">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-6">
                        <div class="top-cat-banner-item yellow mt-20">
                            <a href="{{ $homeFeature[1]->feature_url }}"><img
                                    src="{{ asset($homeFeature[1]->feature_image ? 'public/uploads/home-feature/' . $homeFeature[1]->feature_image : 'public/admin-assets/dist/img/placeholder.png') }}"
                                    alt=""></a>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-6">
                        <div class="row">
                            <div class="col-lg-12 col-md-6">
                                <div class="top-cat-banner-item dark-gray mt-20">
                                    <a href="{{ $homeFeature[2]->feature_url }}"><img
                                            src="{{ asset($homeFeature[2]->feature_image ? 'public/uploads/home-feature/' . $homeFeature[2]->feature_image : 'public/admin-assets/dist/img/placeholder.png') }}"
                                            alt=""></a>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-6">
                                <div class="top-cat-banner-item lite-red mt-20">
                                    <a href="{{ $homeFeature[3]->feature_url }}"><img
                                            src="{{ asset($homeFeature[3]->feature_image ? 'public/uploads/home-feature/' . $homeFeature[3]->feature_image : 'public/admin-assets/dist/img/placeholder.png') }}"
                                            alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- top-cat-banner-end -->

        <!-- trending-this-week -->
        <section class="trending-this-week-area pt-100 pb-55">
            <div class="custom-container-two">
                <div class="row">
                    <div class="col-12">
                        <div class="deal-day-top">
                            <div class="deal-day-title">
                                <h4 class="title">{{ __('translate.trending_this_week') }}</h4>
                            </div>
                            <div class="view-all-deal">
                                <a href="{{ url('/categories/all') }}"><i class="flaticon-scroll"></i> {{ __('translate.view_all') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    @foreach ($trendings as $product)
                        <div class="col-xl-3 col-md-4 col-sm-6">
                            <div class="exclusive-item exclusive-item-three text-center mb-40">
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
                                            href="{{ url('product-details/' . $product->slug) }}">{{ Str::substr($product->product_title, 0, 40) }}{{ count_chars($product->product_title) > 40 ? '...' : '.' }}</a>
                                    </h5>
                                    <div class="exclusive--item--price">
                                        <del class="old-price">{{ $basicInfo->currency_symbol }} {{ $product->old_price }}</del>
                                        <span class="new-price">{{ $basicInfo->currency_symbol }} {{ $product->new_price }}</span>
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
            </div>
        </section>
        <!-- trending-this-week-end -->

        <!-- bs-cat-area -->
        <section class="bs-cat-area theme-bg pt-100 pb-70">
            <div class="custom-container-two">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="section-title text-center mb-60">
                            <span class="sub-title">{{ __('translate.exclusive_collection') }}</span>
                            <h2 class="title">{{ __('translate.best_selling_category') }}</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="deal-of-day-banner mb-30">
                            <a href="{{ $homeFeature[4]->feature_url }}"><img
                                    src="{{ asset($homeFeature[4]->feature_image ? 'public/uploads/home-feature/' . $homeFeature[4]->feature_image : 'public/admin-assets/dist/img/placeholder.png') }}"
                                    alt=""></a>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-12">
                        <div class="row">
                            @foreach ($best_seller_cats as $item)
                                <div class="col-sm-6">
                                    <div class="bs-cat-box mb-30">
                                        <div class="bs-cat-thumb">
                                            <a href="{{ url('categories/' . $item->slug) }}"><img
                                                    src="{{ asset('public/uploads/category/' . $item->image) }}"
                                                    alt="{{ $item->title }}"></a>
                                        </div>
                                        <div class="bs-cat-list">
                                            <ul>
                                                <li class="title">{{ $item->title }}</li>
                                                @foreach ($item->subcategoris as $subcat)
                                                    <li><a
                                                            href="{{ url('categories/' . $subcat->slug) }}">{{ $subcat->title }}</a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                        <a href="{{ url('categories/' . $item->slug) }}" class="view-all">{{ __('translate.view_all') }}</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- bs-cat-area-end -->

        <!-- testimonial-area -->
        <section class="testimonial-area pt-100 pb-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="section-title text-center mb-60">
                            <span class="sub-title">{{ __('translate.our_testimonial') }}</span>
                            <h2 class="title">{{ __('translate.happy_customer_quotes') }}</h2>
                        </div>
                    </div>
                </div>
                <div class="row testimonial-active">
                    @foreach ($reviews as $key => $review)
                        <div class="col-xl-4">
                            <div class="testimonial-item text-center">
                                <div class="testi-avatar-img mb-20">
                                    <img height="88px" width="88px"
                                        src="{{ $review->user->image ? asset('public/uploads/user/' . $review->user->image) : asset('public/frontend-assets/img/user.png') }}"
                                        alt="">
                                </div>
                                <div class="testi-avatar-info">
                                    <h5>{{ $review->user->name }}</h5>
                                    <div class="rating">
                                        <i class="fas fa-star {{ $review->rating >= 1 ? 'active' : null }}"></i>
                                        <i class="fas fa-star {{ $review->rating >= 2 ? 'active' : null }}"></i>
                                        <i class="fas fa-star {{ $review->rating >= 3 ? 'active' : null }}"></i>
                                        <i class="fas fa-star {{ $review->rating >= 4 ? 'active' : null }}"></i>
                                        <i class="fas fa-star {{ $review->rating >= 5 ? 'active' : null }}"></i>
                                    </div>
                                </div>
                                <div class="testi-content">
                                    <p>“ {{ $review->review }} ”</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
        <!-- testimonial-area-end -->
    </main>
    <!-- main-area-end -->
@endsection
