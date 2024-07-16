@php
    $basicInfo = App\Models\BasicInfo::first();
@endphp
@extends('layouts.frontend.master')
@section('content')
<!-- main-area -->
<main>

    <!-- breadcrumb-area -->
    @include('frontend.users.user-bread')
    <!-- breadcrumb-area-end -->

    <!-- my-account-area -->
    <section class="my-account-area pattern-bg pt-100 pb-100" data-background="{{ asset('public/frontend-assets/img/bg') }}/pattern_bg.jpg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-10">
                    <div class="login-page-title">
                        <h2 class="title"><span>{{ __('translate.register') }}</span></h2>
                    </div>
                    <div class="my-account-bg" data-background="{{ asset('public/frontend-assets/img/bg') }}/my_account_bg.png">
                        <div class="my-account-content">
                            <p>{{ __('translate.welcome') }} {{ $basicInfo->title }} {{ __('translate.please_register_your_account') }}</p>
                            <form method="POST" action="{{ url('user/register') }}" class="login-form">
                                @csrf
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-grp">
                                            <label for="name">{{ __('translate.name') }}<span>*</span></label>
                                            <input type="text" id="name" name="name" placeholder="{{ __('translate.enter_your_name') }}">
                                            <span><x-input-error :messages="$errors->get('name')" class="mt-2" /></span>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-grp">
                                            <label for="email">{{ __('translate.email') }}<span>*</span></label>
                                            <input type="email" id="email" name="email" placeholder="{{ __('translate.enter_your_email') }}">
                                            <span><x-input-error :messages="$errors->get('email')" class="mt-2" /></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-grp">
                                            <label for="phone">{{ __('translate.phone') }}<span>*</span></label>
                                            <input type="number" id="phone" name="phone" placeholder="{{ __('translate.enter_your_phone') }}">
                                            <span><x-input-error :messages="$errors->get('phone')" class="mt-2" /></span>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-grp">
                                            <label for="default_address">{{ __('translate.address') }}<span>*</span></label>
                                            <input type="text" id="default_address" name="default_address" placeholder="{{ __('translate.enter_your_address') }}">
                                            <span><x-input-error :messages="$errors->get('default_address')" class="mt-2" /></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-grp">
                                            <label for="password">{{ __('translate.password') }}<span>*</span></label>
                                            <input type="password" id="password" name="password" placeholder="******">
                                            <span><x-input-error :messages="$errors->get('password')" class="mt-2" /></span>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-grp">
                                            <label for="password_confirmation">{{ __('translate.confirm_password') }}<span>*</span></label>
                                            <input type="password" id="password_confirmation" name="password_confirmation" placeholder="******">
                                            <span><x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" /></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-grp-btn">
                                    <button type="submit" class="btn">{{ __('translate.register') }}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- my-account-area-end -->
</main>
<!-- main-area-end -->
@endsection
