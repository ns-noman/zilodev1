@extends('layouts.frontend.master')
@section('content')
    <!-- main-area -->
    <main>
        <!-- breadcrumb-area -->
        <section class="breadcrumb-area breadcrumb-bg"
            data-background="{{ asset('public/frontend-assets/img/bg') }}/breadcrumb_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-content text-center">
                            <h2>{{ __('translate.about_us') }}</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">{{ __('translate.home') }}</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ __('translate.about_us') }}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- about-area -->
        <section class="about-area pt-100 pb-100">
            <div class="container">
                <div class="row align-items-xl-center">
                    <div class="col-lg-6">
                        <div class="about-img">
                            <img src="{{ asset('public/uploads/about-us/' . $aboutUs->image) }}" width="585px" height="444px" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-content">
                            <h4 class="title">{{ $aboutUs->title }}</h4>
                            <p>
                                {!! $aboutUs->description !!}
                            </p>
                            <div class="our-mission-wrap">
                                <h4 class="title">{{ __('translate.mission') }}</h4>
                                <div class="our-mission-list">
                                    <div class="mission-box">
                                        <div class="mission-icon">
                                            <i class="flaticon-project"></i>
                                        </div>
                                        <div class="mission-count">
                                            <h2><span class="odometer" data-count="{{ $aboutUs->projects }}">00</span>+</h2>
                                            <span>Projects</span>
                                        </div>
                                    </div>
                                    <div class="mission-box">
                                        <div class="mission-icon">
                                            <i class="flaticon-revenue"></i>
                                        </div>
                                        <div class="mission-count">
                                            <h2>$<span class="odometer" data-count="{{ $aboutUs->revenues }}">00</span>M</h2>
                                            <span>Revenue</span>
                                        </div>
                                    </div>
                                    <div class="mission-box">
                                        <div class="mission-icon">
                                            <i class="flaticon-quality"></i>
                                        </div>
                                        <div class="mission-count">
                                            <h2><span class="odometer" data-count="{{ $aboutUs->awards }}">00</span>+</h2>
                                            <span>Awards</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- about-area-end -->

        <!-- features-area -->
        <section class="features-area theme-bg pt-100 pb-70">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="section-title text-center mb-70">
                            <span class="sub-title">{{ __('translate.why_choose_us') }}</span>
                            <h2 class="title">{{ __('translate.experience_in_setting_up') }}</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6">
                        <div class="features-wrap-item mb-30">
                            <div class="features-icon">
                                <i class="flaticon-shuttle"></i>
                            </div>
                            <div class="features-content">
                                <h5>{{ __('translate.home_fast_delivery') }}</h5>
                                <p>{!! $aboutUs->delivery !!}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="features-wrap-item mb-30">
                            <div class="features-icon">
                                <i class="flaticon-secure-payment"></i>
                            </div>
                            <div class="features-content">
                                <h5>{{ __('translate.secure_payment') }}</h5>
                                <p>{!! $aboutUs->payment !!}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="features-wrap-item mb-30">
                            <div class="features-icon">
                                <i class="flaticon-24-hours-support"></i>
                            </div>
                            <div class="features-content">
                                <h5>24/7 {{ __('translate.customer_support') }}</h5>
                                <p><p>{!! $aboutUs->support !!}</p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- features-area-end -->

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
@endsection
