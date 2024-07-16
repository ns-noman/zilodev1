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
                        <h2 class="title">Reset Your Password</h2>
                    </div>
                    <div class="my-account-bg" data-background="{{ asset('public/frontend-assets/img/bg') }}/my_account_bg.png">
                        <div class="my-account-content">
                            <form method="POST" action="{{ route('password.email') }}" class="login-form">
                                @csrf
                                <div class="form-grp">
                                    <label for="email">{{ __('Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.') }}</label>
                                </div>
                                @if(Session::get('status'))
                                    <div class="form-grp">
                                        <label class="text-success">{{ Session::get('status') }}</label>
                                    </div>
                                @endif
                                <div class="form-grp">
                                    <x-input-label for="email" :value="__('Email')" />
                                    <input type="text" id="email" name="email">
                                    <span class="text-red"><x-input-error :messages="$errors->get('email')" class="mt-2" /></span>
                                </div>
                                <div class="form-grp-btn">
                                    <button type="submit" class="btn">{{ __('Email Password Reset Link') }}</button>
                                    <a class="btn" hidden></a>
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
@endsection