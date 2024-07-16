<section class="breadcrumb-area breadcrumb-bg" data-background="{{ asset('public/frontend-assets/img/bg') }}/breadcrumb_bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb-content text-center">
                    <h2>{{ __('translate.my_account') }}</h2>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ url('/home') }}">{{ __('translate.home') }}</a></li>
                            <li class="breadcrumb-item active" aria-current="page">{{ __('translate.my_account') }}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>