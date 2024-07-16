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
                        <h2 class="title"><span>{{ __('translate.login') }}</span> / {{ __('translate.register') }}</h2>
                    </div>
                    <div class="my-account-bg" data-background="{{ asset('public/frontend-assets/img/bg') }}/my_account_bg.png">
                        <div class="my-account-content">
                            <p>{{ __('translate.login_welcome',['title'=> $basicInfo->title]) }}</p>
                            <div class="direct-login">
                                <a href="{{ url('auth/facebook') }}"><i class="fab fa-facebook-f"></i>{{ __('translate.login_with_facebook') }}</a>
                                <a href="{{ url('auth/google') }}" class="xing"><i class="fab fa-google"></i>{{ __('translate.login_with_google') }}</a>
                            </div>
                            <span class="or">- {{ __('translate.or') }} -</span>
                            <form method="POST" action="{{ url('user/login') }}" class="login-form">
                                @csrf
                                <div class="form-grp">
                                    <label for="email">{{ __('translate.email_address') }} <span>*</span></label>
                                    <input type="text" id="email" name="email">
                                    <span class="text-red"><x-input-error :messages="$errors->get('email')" class="mt-2" /></span>
                                </div>
                                <div class="form-grp">
                                    <label for="password">{{ __('translate.password') }} <span>*</span></label>
                                    <input type="password" id="password" name="password">
                                    <span><x-input-error :messages="$errors->get('password')" class="mt-2" /></span>
                                    <i class="far fa-eye" onclick="myFunction()"></i>
                                </div>
                                <div class="form-grp-bottom">
                                    <div class="remember">
                                        <input type="checkbox" id="check">
                                        <label for="check">{{ __('translate.remember_me') }}</label>
                                    </div>
                                    <div class="forget-pass">
                                        <a href="{{ url('/user/forgot-password') }}">{{ __('translate.forget_password') }}</a>
                                    </div>
                                </div>
                                <div class="form-grp-btn">
                                    <button type="submit" class="btn">{{ __('translate.login') }}</button>
                                    <a href="{{ url('user/register') }}" class="btn">{{ __('translate.sign_up') }}</a>
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

<script>
    function myFunction() {
        var x = document.getElementById("password");
        if (x.type === "password") {
        x.type = "text";
        } else {
        x.type = "password";
        }
    }
</script>
@endsection