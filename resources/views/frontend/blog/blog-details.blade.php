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
                        <h2>{{ __('translate.blog_single') }}</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{ url('/home') }}">{{ __('translate.home') }}</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{ __('translate.blog_single') }}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb-area-end -->

    <!-- blog-details-area -->
    <section class="blog-details-area pt-100 pb-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="blog-post-item s-blog-post-item blog-details-wrap">
                        <div class="blog-thumb mb-25">
                            <img src="{{ asset("public/uploads/blog/". $blog->image) }}" alt="">
                            <ul class="blog-overlay-tag">
                                <li><a href="#">{{ $blog->blogcategory->cat_name }}</a></li>
                            </ul>
                        </div>
                        <div class="blog-post-content">
                            <div class="blog-post-meta">
                                <ul>
                                    <li><i class="far fa-calendar-alt"></i>{{ date_format(date_create($blog->created_at),"F d, Y") }}</li>
                                </ul>
                            </div>
                            <h4>{{ $blog->title }}</h4>
                            <p>{!! $blog->description !!}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-8">
                    <aside class="blog-sidebar">
                        <div class="widget blog-sidebar-widget mb-50">
                            <div class="blog-sidebar-title mb-25">
                                <h5>{{ __('translate.category_post') }}</h5>
                            </div>
                            <div class="blog-cat-list">
                                <ul>
                                     @foreach($blogCategories as $blogCategory)
                                        <li><a href="{{ url('blog/'.$blogCategory->cat_url) }}">{{ $blogCategory->cat_name }}</a>{{ count($blogCategory->category_post) }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <div class="widget blog-sidebar-widget mb-50">
                            <div class="blog-sidebar-title mb-25">
                                <h5>{{ __('translate.latest_post') }}</h5>
                            </div>
                            <div class="blog-rc-post">
                                <ul>
                                    @foreach($latests as $latest)
                                        <li>
                                            <div class="rc-post-thumb">
                                                <a href="{{ url('blog-details/'. $latest->slug ) }}"><img width="95px" height="101px" src="{{ asset("public/uploads/blog/". $latest->image) }}" alt=""></a>
                                            </div>
                                            <div class="rc-post-content">
                                                <h5><a href="{{ url('blog-details/'. $latest->slug ) }}">{{ $latest->title }}</a></h5>
                                                <span>{{ date_format(date_create($latest->created_at),"F d, Y") }}</span>
                                            </div>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>
    <!-- blog-details-area-end -->

</main>
<!-- main-area-end -->

@endsection
