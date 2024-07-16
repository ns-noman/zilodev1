 @extends('layouts.frontend.master')
@section('content')
<!-- main-area -->
<main>

    <!-- breadcrumb-area -->
    <section class="breadcrumb-area breadcrumb-bg" data-background="{{ asset('public/frontend-assets') }}/img/bg/breadcrumb_bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
                        <h2>{{ $service->title }}</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{ url('home') }}">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{ $service->title }}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb-area-end -->

    <!-- terms-and-conditions-area -->
    <section class="terms-and-conditions-area pt-100 pb-95">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    {!! $service->description !!}
                </div>
            </div>
        </div>
    </section>
    <!-- terms-and-conditions-area-end -->
</main>
<!-- main-area-end -->
@endsection
