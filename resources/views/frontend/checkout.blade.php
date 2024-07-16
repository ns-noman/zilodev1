@extends('layouts.frontend.master')
@section('content')
    <!-- main-area -->
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
        $deliveryCharge = $cartTotal * (20 / 100);
        $grandTotal = $cartTotal - $discount + $deliveryCharge;

        $deliveryCharge = number_format((float) ($cartTotal * (20 / 100)), 2, '.', '');
        $cartTotal = number_format((float) $cartTotal, 2, '.', '');
        $discount = number_format((float) $discount, 2, '.', '');
        $grandTotal = number_format((float) $grandTotal, 2, '.', '');
        $basicInfo = App\Models\BasicInfo::first();
    @endphp
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
                            <h2>{{ __('translate.check_out') }}</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">{{ __('translate.home') }}</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ __('translate.check_out') }}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- checkout-area -->
        <section class="checkout-area pt-100 pb-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="checkout-wrap">
                            <h5 class="title">{{ __('translate.ship_info') }}</h5>
                            <form action="#" class="checkout-form">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="form-grp">
                                            <label for="shipping_first_name">{{ __('translate.first_name') }} <span>*</span></label>
                                            <input disabled
                                                value="{{ isset($address) ? $address->shipping_first_name : null }}"
                                                type="text" name="shipping_first_name" id="shipping_first_name">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-grp">
                                            <label for="shipping_last_name">{{ __('translate.last_name') }} <span>*</span></label>
                                            <input disabled
                                                value="{{ isset($address) ? $address->shipping_last_name : null }}"
                                                type="text" id="shipping_last_name" name="shipping_last_name">
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-grp">
                                            <label for="shipping_company_name">{{ __('translate.company_name') }}
                                                <small>({{ __('translate.optional') }})</small></label>
                                            <input disabled
                                                value="{{ isset($address) ? $address->shipping_company_name : null }}"
                                                type="text" id="shipping_company_name" name="shipping_company_name">
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-grp">
                                            <label>{{ __('translate.country') }} / {{ __('translate.region') }} *</label>
                                            <select disabled class="custom-select" id="shipping_country_id"
                                                name="shipping_country_id">
                                                <option value="">{{ __('translate.select_country') }}</option>
                                                @foreach ($countries as $key => $country)
                                                    <option value="{{ $country->id }}"
                                                        {{ isset($address) ? ($address->shipping_country_id == $country->id ? 'selected' : null) : null }}>
                                                        {{ $country->country_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-grp">
                                            <label for="shipping_street_address">{{ __('translate.street_address') }} *</label>
                                            <input disabled
                                                value="{{ isset($address) ? $address->shipping_street_address : null }}"
                                                type="text" id="shipping_street_address" name="shipping_street_address">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-grp">
                                            <label for="shipping_city">{{ __('translate.town') }} / {{ __('translate.city') }} *</label>
                                            <input disabled value="{{ isset($address) ? $address->shipping_city : null }}"
                                                type="text" id="shipping_city" name="shipping_city">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-grp">
                                            <label for="shipping_state">{{ __('translate.state') }} *</label>
                                            <input disabled value="{{ isset($address) ? $address->shipping_state : null }}"
                                                type="text" id="shipping_state" name="shipping_state">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-grp">
                                            <label for="shipping_zip_code">{{ __('translate.postal_zip') }} <span>*</span></label>
                                            <input disabled
                                                value="{{ isset($address) ? $address->shipping_zip_code : null }}"
                                                type="text" id="shipping_zip_code" name="shipping_zip_code">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-grp">
                                            <label for="shipping_phone">{{ __('translate.your_phone') }} <span>*</span></label>
                                            <input disabled value="{{ isset($address) ? $address->shipping_phone : null }}"
                                                type="text" id="shipping_phone" name="shipping_phone">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-grp">
                                            <label for="shipping_email">{{ __('translate.email_address1') }} <span>*</span></label>
                                            <input disabled value="{{ isset($address) ? $address->shipping_email : null }}"
                                                type="shipping_email" id="shipping_email">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-grp mb-0">
                                            <label for="notes">{{ __('translate.order_note') }} <small>({{ __('translate.optional') }})</small></label>
                                            <textarea disabled name="notes" id="notes" placeholder="{{ __('translate.or_note_pl') }}">{{ isset($address) ? $address->notes : null }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <a class="btn btn-md" href="{{ url('user/address-book') }}">EDIT</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-8">
                        <aside class="shop-cart-sidebar checkout-sidebar">
                            <div class="shop-cart-widget">
                                <h6 class="title">{{ __('translate.cart_total') }}</h6>
                                <form action="#">
                                    <ul>
                                        <li><span>{{ __('translate.sub_total') }}</span> {{ $basicInfo->currency_symbol }} {{ $cartTotal }}</li>
                                        @if ($coupon)
                                            <li><span>{{ __('translate.discount') }}({{ $coupon->discount_perc }}%)</span> {{ $basicInfo->currency_symbol }} {{ $discount }}
                                            </li>
                                        @endif
                                        <li><span>{{ __('translate.shipping_charge') }}</span> {{ $basicInfo->currency_symbol }} {{ $deliveryCharge }}</li>
                                        <li class="cart-total-amount"><span>{{ __('translate.total') }}</span> <span class="amount">{{ $basicInfo->currency_symbol }} {{ $grandTotal }}</span></li>
                                    </ul>
                                    <div class="bank-transfer">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input paymentMethod"
                                                id="customCheck3">
                                            <label class="custom-control-label" for="customCheck3">{{ __('translate.bank_transfer') }}</label>
                                        </div>
                                    </div>
                                    <div class="bank-transfer">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input paymentMethod"
                                                id="customCheck4" payment-type="cash_on_delivery">
                                            <label class="custom-control-label" for="customCheck4">{{ __('translate.cash_on_delivery') }}</label>
                                        </div>
                                    </div>
                                    <div class="paypal-method">
                                        <div class="paypal-method-flex">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input paymentMethod"
                                                    id="customCheck5">
                                                <label class="custom-control-label" for="customCheck5">{{ __('translate.paypal') }}</label>
                                            </div>
                                            <div class="paypal-logo"><img
                                                    src="{{ asset('public/frontend-assets') }}/img/images/paypal_logo.png"
                                                    alt=""></div>
                                        </div>
                                        <p>Pay via PayPal; you can pay with your credit
                                            card if you don’t have a PayPal account</p>
                                    </div>
                                    <div class="paypal-method">
                                        <div class="paypal-method-flex">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input paymentMethod"
                                                    id="customCheck6">
                                                <label class="custom-control-label" for="customCheck6">{{ __('translate.pay_on_card') }}</label>
                                            </div>
                                            <div class="paypal-logo"><img src="{{ asset('public/frontend-assets') }}/img/images/payment_card.png"  alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="payment-terms">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck7">
                                            <label class="custom-control-label" for="customCheck7">{{ __('translate.terms_and_condition') }} *</label>
                                        </div>
                                    </div>
                                    <button class="btn" id="proceed_to_checkout">{{ __('translate.proceed_to_checkout') }}</button>
                                </form>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </section>
        <!-- checkout-area-end -->

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
            $('.paymentMethod').on('click', function() {
                $('.paymentMethod').each(function(index, element) {
                    $(this).prop('checked', false);
                });
                $(this).prop('checked', true)
            });

            $('#proceed_to_checkout').on('click', function(e) {
                e.preventDefault();
                let isChecked = false;
                $('.paymentMethod').each(function(index, element) {
                    if ($(this).prop('checked')) {
                        isChecked = true;
                    }
                });
                if (isChecked) {
                    let payment_type = $('.paymentMethod:checkbox:checked').attr('payment-type');
                    if (payment_type == 'cash_on_delivery') {
                        window.open('{{ url('user/order-place') }}', '_self');
                    } else {
                        Swal.fire({
                            title: "This payment method is not activeted yet! Only Cash on delivery Allowed.",
                            showClass: {
                                popup: `
                    animate__animated
                    animate__fadeInUp
                    animate__faster
                `
                            },
                            hideClass: {
                                popup: `
                    animate__animated
                    animate__fadeOutDown
                    animate__faster
                `
                            }
                        });
                    }
                } else {
                    Swal.fire({
                        title: "Please select one payment method!",
                        showClass: {
                            popup: `
                    animate__animated
                    animate__fadeInUp
                    animate__faster
                `
                        },
                        hideClass: {
                            popup: `
                    animate__animated
                    animate__fadeOutDown
                    animate__faster
                `
                        }
                    });
                }
            });

        });
    </script>
@endsection
