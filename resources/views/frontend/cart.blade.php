@extends('layouts.frontend.master')
@section('content')
    @php
        $cart = Session::get('cart') != null ? Session::get('cart') : [];
        $cartTotal = 0;
        $discount = 0;
        foreach ($cart as $item) {
            $cartTotal += $item['new_price'] * $item['quantity'];
        }
        $coupon = Session::get('coupon');
        if ($coupon) {
            $discount = $cartTotal * ($coupon->discount_perc / 100);
        }
        $grandTotal = $cartTotal - $discount;

        $cartTotal = number_format((float) $cartTotal, 2, '.', '');
        $discount = number_format((float) $discount, 2, '.', '');
        $grandTotal = number_format((float) $grandTotal, 2, '.', '');
        $basicInfo = App\Models\BasicInfo::first();
    @endphp
    <!-- main-area -->
    <main>
        <section class="mt-3">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        @include('layouts.frontend.flash-message')
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area -->
        <section class="breadcrumb-area breadcrumb-bg"
            data-background="{{ asset('public/frontend-assets') }}/img/bg/breadcrumb_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-content text-center">
                            <h2>{{ __('translate.shopping_cart') }}</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ url('/home') }}">{{ __('translate.home') }}</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ __('translate.shopping_cart') }}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- shop-cart-area -->
        <section class="shop-cart-area wishlist-area pt-100 pb-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="table-responsive-xl">
                            <table class="table mb-0">
                                <thead>
                                    <tr>
                                        <th class="product-thumbnail"></th>
                                        <th class="product-name">{{ __('translate.product') }}</th>
                                        <th class="product-name">{{ __('translate.color') }}</th>
                                        <th class="product-name">{{ __('translate.size') }}</th>
                                        <th class="product-price">{{ __('translate.price') }}</th>
                                        <th class="product-quantity">{{ __('translate.quantity') }}</th>
                                        <th class="product-subtotal">{{ __('translate.sub_total') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($cart as $index => $item)
                                        <tr>
                                            <td class="product-thumbnail"><a href="{{ url('cart-delete/' . $index) }}"
                                                    class="wishlist-remove"><i class="flaticon-cancel-1"></i></a><a
                                                    href="{{ url('product-details/' . $item['slug']) }}"><img height="129px"
                                                        width="103px"
                                                        src="{{ asset('public/uploads/product/' . $item['product_image']) }}"
                                                        alt=""></a></td>
                                            <td class="product-name">
                                                <h4><a href="{{ url('product-details/' . $item['slug']) }}">
                                                        {{ Str::substr($item['product_title'], 0, 30) }}{{ strlen($item['product_title']) > 30 ? '...' : '.' }}
                                                    </a></h4>
                                            </td>
                                            <td class="product-price"><span
                                                    style="color: {{ $item['color_code'] }}">{{ $item['color'] }}</span>
                                            </td>
                                            <td class="product-price">{{ $item['size'] }}</td>
                                            <td class="product-price">{{ $basicInfo->currency_symbol }} {{ number_format((float) $item['new_price'], 2, '.', '') }}</td>
                                            <td class="product-quantity">
                                                <div class="cart-plus">
                                                    <form action="#">
                                                        <div class="cart-plus-minus">
                                                            <input class="product_qty"
                                                                product_id="{{ $item['product_id'] }}"
                                                                color_id="{{ $item['color_id'] }}"
                                                                size_id="{{ $item['size_id'] }}" type="text"
                                                                value="{{ $item['quantity'] }}">
                                                        </div>
                                                    </form>
                                                </div>
                                            </td>
                                            <td class="product-subtotal"><span>{{ $basicInfo->currency_symbol }} {{ number_format((float) ($item['new_price'] * $item['quantity']), 2, '.', '') }}</span>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="shop-cart-bottom mt-20">
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="cart-coupon">
                                        @if ($coupon)
                                            <button class="btn">{{ __('translate.coupon_applied') }}</button>
                                            <a href="{{ url('coupon-delete') }}" class="wishlist-remove"><i class="flaticon-cancel-1"></i></a>
                                        @else
                                            <form action="{{ url('coupon-apply') }}" method="POST">
                                                @csrf
                                                <input name="coupon_code" type="text" placeholder="{{ __('translate.enter_coupon_code') }}">
                                                <button class="btn">{{ __('translate.apply_coupon') }}</button>
                                            </form>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="continue-shopping">
                                        <a href="{{ url('categories/all') }}" class="btn">{{ __('translate.continue_shopping') }}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-8">
                        <aside class="shop-cart-sidebar">
                            <div class="shop-cart-widget">
                                <h6 class="title">{{ __('translate.cart_total') }}</h6>
                                <form action="{{ url('user/checkout') }}">
                                    <ul>
                                        <li><span>{{ __('translate.sub_total') }}</span> {{ $basicInfo->currency_symbol }} {{ $cartTotal }}</li>
                                        @if ($coupon)
                                            <li>
                                                <span>{{ __('translate.discount') }}({{ $coupon->discount_perc }}%)</span> {{ $basicInfo->currency_symbol }} {{ $discount }}
                                            </li>
                                        @endif
                                        <li class="cart-total-amount"><span>{{ __('translate.total') }}</span> <span class="amount">{{ $basicInfo->currency_symbol }} {{ $grandTotal }}</span></li>
                                    </ul>
                                    <button class="btn"><a href="{{ url('user/checkout') }}">{{ __('translate.proceed_to_checkout') }}</a></button>
                                </form>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </section>
        <!-- shop-cart-area-end -->

        <!-- core-features -->
        <section class="core-features-area core-features-style-two">
            <div class="container">
                <div class="core-features-border">
                    <div class="row justify-content-center">
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="core-features-item mb-50">
                                <div class="core-features-icon">
                                    <img src="{{ asset('public/frontend-assets') }}/img/icon/core_features01.png"
                                        alt="">
                                </div>
                                <div class="core-features-content">
                                    <h6>Free Shipping On Over {{ $basicInfo->currency_symbol }} 50</h6>
                                    <span>Agricultural mean crops livestock</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="core-features-item mb-50">
                                <div class="core-features-icon">
                                    <img src="{{ asset('public/frontend-assets') }}/img/icon/core_features02.png"
                                        alt="">
                                </div>
                                <div class="core-features-content">
                                    <h6>Membership Discount</h6>
                                    <span>Only MemberAgricultural livestock</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="core-features-item mb-50">
                                <div class="core-features-icon">
                                    <img src="{{ asset('public/frontend-assets') }}/img/icon/core_features03.png"
                                        alt="">
                                </div>
                                <div class="core-features-content">
                                    <h6>Money Return</h6>
                                    <span>30 days money back guarantee</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="core-features-item mb-50">
                                <div class="core-features-icon">
                                    <img src="{{ asset('public/frontend-assets') }}/img/icon/core_features04.png"
                                        alt="">
                                </div>
                                <div class="core-features-content">
                                    <h6>Online Support</h6>
                                    <span>30 days money back guarantee</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- core-features-end -->
    </main>
    <!-- main-area-end -->
@endsection

@section('script')
    <script>
        $(document).ready(function() {
            $('.cart-plus-minus').on('click', function() {

                let input = $(this).children(":first");

                let cartData = {};
                cartData.product_id = input.attr('product_id');
                cartData.color_id = input.attr('color_id');
                cartData.size_id = input.attr('size_id');
                cartData.quantity = input.val();

                $.ajax({
                    url: "{{ url('current-stock') }}" + '/' + cartData.product_id + '/' + cartData
                        .color_id + '/' + cartData.size_id,
                    method: "GET",
                    dataType: "json",
                    success: function(stock) {
                        if (cartData.quantity > stock) {
                            Swal.fire({
                                position: "middle-center",
                                icon: "success",
                                title: "Quantity Exceed!",
                                showConfirmButton: false,
                                timer: 2000
                            });
                            input.val(stock);
                        } else {
                            updateQuantity(cartData);
                        }
                    }
                });
            });

        });
        function updateQuantity(cartData) {
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{ url('cart-insert-update') }}",
                method: "POST",
                data: cartData,
                dataType: "json",
                success: function(res) {
                    location.reload();
                }
            });
        }
    </script>
@endsection
