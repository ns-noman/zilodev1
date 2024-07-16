@extends('layouts.frontend.master')
@section('content')
    <!-- main-area -->
    <main>
        <!-- message -->
        @if ($alert = Session::get('alert'))
            <section class="breadcrumb-area breadcrumb-bg"
                data-background="{{ asset('public/frontend-assets/img/bg') }}/breadcrumb_bg.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-{{ $alert['messageType'] }} alert-dismissible fade show">
                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                        <strong>
                                            {{ $alert['message'] }}
                                        </strong>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        @endif
        <!-- message-end -->
        <!-- breadcrumb-area -->
        <section class="breadcrumb-area breadcrumb-bg"
            data-background="{{ asset('public/frontend-assets/img/bg') }}/breadcrumb_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-content text-center">
                            <h2>{{ __('translate.contact_us') }}</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ url('/home') }}">{{ __('translate.home') }}</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ __('translate.contact_us') }}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->
        <!-- contact-area -->
        <section class="contact-area primary-bg pt-100 pb-70">
            <div class="container">
                <div class="contact-wrap-padding">
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-md-6 col-sm-8">
                            <div class="contact-info-box text-center mb-30">
                                <div class="contact-box-icon">
                                    <i class="flaticon-placeholder"></i>
                                </div>
                                <div class="contact-info-content">
                                    <h5>{{ __('translate.our_location') }}</h5>
                                    <p>{{ $basicInfo->address }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-8">
                            <div class="contact-info-box text-center mb-30">
                                <div class="contact-box-icon">
                                    <i class="flaticon-mail"></i>
                                </div>
                                <div class="contact-info-content">
                                    <h5>{{ __('translate.our_email') }}</h5>
                                    <p>Email Us: {{ $basicInfo->email }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-8">
                            <div class="contact-info-box text-center mb-30">
                                <div class="contact-box-icon">
                                    <i class="flaticon-telephone"></i>
                                </div>
                                <div class="contact-info-content">
                                    <h5>{{ __('translate.phone_numbers') }}</h5>
                                    <p>Contact Numbers: {{ $basicInfo->phone1 }}</p>
                                    <p>{{ $basicInfo->phone2 }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- contact-area-end -->

        <!-- contact-area -->
        <section class="contact-area pt-100 pb-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-5 col-lg-7 col-md-9">
                        <div class="contact-title text-center mb-60">
                            <div class="section-title text-center">
                                <span class="sub-title">{{ __('translate.lets_talk') }}</span>
                                <h2 class="title">Send Us a Massage</h2>
                            </div>
                            <p>We are always happy to talk with you. Be sure to write to us if you have any
                                questions or need help and support.</p>
                        </div>
                    </div>
                </div>
                <div class="contact-wrap-padding">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="contact-form">
                                <form action="{{ url('/message/store') }}" method="POST">
                                    @csrf
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-grp">
                                                <input required name="first_name" type="text" placeholder="First Name*">
                                                <i class="far fa-user"></i>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-grp">
                                                <input required name="last_name" type="text" placeholder="Last Name*">
                                                <i class="far fa-user"></i>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-grp">
                                                <input required name="email" type="email" required
                                                    placeholder="Your Email*">
                                                <i class="far fa-envelope"></i>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-grp">
                                                <input required name="phone" type="text" placeholder="Phone*">
                                                <i class="fas fa-mobile-alt"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <textarea name="message" id="message" placeholder="Enter Your Massage" required></textarea>
                                    <button type="submit" class="btn">submit</button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="contact-map">
                                {!! $basicInfo->mapLink !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- contact-area-end -->
    </main>
    <!-- main-area-end -->
@endsection
