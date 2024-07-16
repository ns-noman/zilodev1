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
                        <h2>{{ __('translate.blog') }}</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{ url('/home') }}">{{ __('translate.home') }}</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{ __('translate.blog') }}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb-area-end -->

    <!-- blog-area -->
    <section class="blog-area pt-100 pb-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">

                    @foreach($blogs as $key => $blog)
                        <div class="blog-post-item s-blog-post-item classic-blog-post">
                            <div class="blog-thumb">
                                <a href="{{ url('blog-details/'. $blog->slug ) }}"><img width="513px" height="418px" src="{{ asset("public/uploads/blog/". $blog->image) }}" alt=""></a>
                            </div>
                            <div class="blog-post-content">
                                <ul class="blog-overlay-tag">
                                    <li><a href="#">{{ $blog->blogcategory->cat_name }}</a></li>
                                </ul>
                                <h4><a href="{{ url('blog-details/'. $blog->slug ) }}">{{ $blog->title }}</a></h4>
                                <div class="blog-post-meta">
                                    <ul>
                                        <li><i class="far fa-user"></i>By <a href="#">{{ $blog->user->name }}</a></li>
                                        <li><i class="far fa-calendar-alt"></i> {{ date_format(date_create($blog->created_at),"F d, Y") }}</li>
                                    </ul>
                                </div>
                                <p>{{ $blog->short_desc }}</p>
                                <div class="s-blog-post-bottom">
                                    <a class="read-more" href="{{ url('blog-details/'. $blog->slug ) }}">{{ __('translate.read_more') }} <i class="fas fa-plus"></i></a>
                                    <div class="classic-blog-share">
                                        <a href="#"><i class="fab fa-facebook-square"></i></a>
                                        <a href="#"><i class="fab fa-twitter-square"></i></a>
                                        <a href="#"><i class="fab fa-pinterest-square"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
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
</main>
@endsection
