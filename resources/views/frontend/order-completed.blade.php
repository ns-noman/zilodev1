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
                            <h2>Order Completed</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Order Completed</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- order-complete-area -->
        <section class="order-complete-area pattern-bg pt-100 pb-100"
            data-background="{{ asset('public/frontend-assets') }}/img/bg/pattern_bg.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-lg-10">
                        <div class="order-complete-bg"
                            data-background="{{ asset('public/frontend-assets') }}/img/bg/order_comp_bg.png">
                            <div class="order-complete-content">
                                <h3><span>your</span> Order Is Completed!</h3>
                                <div class="check mb-25">
                                    <img src="{{ asset('public/frontend-assets') }}/img/icon/check.png" alt="">
                                </div>
                                <p>Thank you for your order! Your order is being processed and will be completed within 6-12
                                    Hours. You will receive an
                                    email confirmation when your order is completed.</p>
                                <a href="{{ url('/categories/all') }}" class="btn">CONTINUE SHOPPING</a>
                                <p class="get-ans">Get answers to all your <a href="#">Questions</a> you might have.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- order-complete-area-end -->

    </main>
    <!-- main-area-end -->
@endsection
