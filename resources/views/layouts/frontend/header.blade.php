  @php
    use App\Models\Category;
    $cart = Session::get('cart')!=null ? Session::get('cart'):[];
    $cartTotal = 0;
    foreach ($cart as $item) {
        $cartTotal += $item['new_price'] * $item['quantity'];
    }
    $categories = Category::orderBy('title','asc')->where('status','=',1)->get();

    foreach ($categories as $key=> $category){
        $categories[$key]->sub_cat = App\Models\SubCategory::where('cat_id', $category->id)->where('status','=',1)->orderBy('title','asc')->get();
        foreach ($categories[$key]->sub_cat as $sub_cat_key => $sub_cat_value) {
            $categories[$key]->sub_cat[$sub_cat_key]->sub_child = App\Models\SubChild::where('sub_cat_id', $sub_cat_value->id)->where('status','=',1)->orderBy('title','asc')->get();
        }
    }
    $blogCategories = App\Models\BlogCategory::where('cat_status','=',1)->get();
  @endphp
  <!-- header-area -->
  <header class="header-style-two header-style-three">
    <!-- header-top -->
    <div class="header-top-area">
        <div class="custom-container-two">
            <div class="row">
                <div class="col-md-8 col-sm-7">
                    <div class="header-top-left">
                        <ul>
                            <li>
                                <div class="hidden fixed top-0 right-0 sm:block">
                                    <span class="mr-2">{{ __('translate.languages') }}</span>
                                    <div class="language">
                                        <select name="" class="form-control form-control-sm top-selector language_switcher">
                                            <option>{{ Config::get('languages')[App::getLocale()] }}</option>
                                            @foreach (Config::get('languages') as $lang => $language)
                                                @if ($lang != App::getLocale())
                                                       <option value="{{ $lang }}"> <a class="dropdown-item" href="#"> {{$language}}</a> </option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="heder-top-guide">
                                    <span>{{ __('translate.quick_guide') }}</span>
                                    <div class="dropdown">
                                        <button class="dropdown-toggle" type="button" id="dropdownMenuButton2" data-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                            {{ __('translate.help') }}
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                                            @foreach($quickGuides as $key => $quickGuide)
                                                <a class="dropdown-item" href="{{  url('/services/'.$quickGuide->slug ) }}">{{ $quickGuide->head }}</a>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-5">
                    <div class="header-top-right">
                        <ul>
                            <li>
                                <a href="{{ url('/user/login') }}">{{ __('translate.register') }} <span>{{ __('translate.or') }}</span>{{ __('translate.sign_in') }}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header-top-end -->
    <!-- menu-area -->
    <div id="sticky-header" class="main-header menu-area">
        <div class="custom-container-two">
            <div class="row">
                <div class="col-12">
                    <div class="mobile-nav-toggler"><i class="fas fa-bars"></i></div>
                    <div class="menu-wrap">
                        <nav class="menu-nav show">
                            <div class="logo">
                                <a href="{{ url('/home') }}"><img src="{{ asset('public/uploads/basic-info/'. $basicInfo->logo) }}" alt="{{ $basicInfo->title }}" title="{{ $basicInfo->title }}"></a>
                            </div>
                            
                            <div class="navbar-wrap main-menu d-none d-lg-flex">
                                <ul class="navigation">
                                    <li class="{{ request()->is('home') ? 'active' : '' }}"><a href="{{ url('/home') }}">{{ __('translate.home') }}</a></li>
                                    <li class="dropdown {{ request()->is('categories*') ? 'active' : '' }}"><a href="#">{{ __('translate.categories') }}</a>
                                        <ul class="submenu">
                                            @foreach ($categories as $category)
                                                <li><a href="{{ url('categories/'. $category->slug) }}">{{ $category->title }}</a></li>
                                            @endforeach
                                        </ul> 
                                    </li>
                                    <li class="{{ request()->is('about-us*') ? 'active' : '' }}"><a href="{{ url('/about-us') }}">{{ __('translate.about_us') }}</a></li>
                                    <li class="dropdown {{ request()->is('blog*') ? 'active' : '' }}"><a href="#">{{ __('translate.blog') }}</a>
                                        <ul class="submenu">
                                            @foreach($blogCategories as $blogCategory)
                                                <li><a href="{{ url('blog/'.$blogCategory->cat_url) }}">{{ $blogCategory->cat_name }}</a></li>
                                            @endforeach
                                        </ul> 
                                    </li>
                                    <li class="{{ request()->is('contact*') ? 'active' : '' }}"><a href="{{ url('/contact') }}">{{ __('translate.contact') }}</a></li>
                                </ul>
                            </div>
                            <div class="header-action d-md-block">
                                <ul>
                                    <li><a href="{{ url('/wish-list') }}"><i class="flaticon-heart"></i></a></li>
                                    <li><a href="{{ url('/user/profile') }}"><i class="flaticon-user"></i></a></li>
                                    <li class="header-shop-cart"><a href="#"><i class="flaticon-shopping-bag"></i><span class="cart-count">{{ count($cart) }}</span></a>
                                        <span class="cart-total-price">{{ $basicInfo->currency_symbol }} {{ $cartTotal }}</span>
                                        <ul class="minicart">
                                            @foreach($cart as $index => $item)
                                                <li class="d-flex align-items-start">
                                                    <div class="cart-img">
                                                        <a href="{{ url('product-details/' . $item['slug']) }}">
                                                            <img src="{{ asset('public/uploads/product/'.$item['product_image']) }}" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="cart-content">
                                                        <h4>
                                                            <a href="{{ url('product-details/' . $item['slug']) }}">{{ Str::substr($item['product_title'], 0, 30) }}{{ strlen($item['product_title'])>30?'...':'.' }}</a>
                                                        </h4>
                                                        <div class="cart-price">
                                                            <span class="new">{{ $basicInfo->currency_symbol }}{{ $item['new_price'] }}</span>
                                                            <span>
                                                                <del>{{ $basicInfo->currency_symbol }}{{ $item['old_price'] }}</del>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="del-icon">
                                                        <a href="{{ url('cart-delete/'. $index) }}">
                                                            <i class="far fa-trash-alt"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            @endforeach
                                            <li>
                                                <div class="total-price">
                                                    <span class="f-left">{{ __('translate.total') }}:</span>
                                                    <span class="f-right">{{ $basicInfo->currency_symbol }} {{ $cartTotal }}</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkout-link">
                                                    <a href="{{ url('/cart') }}">{{ __('translate.shopping_cart') }}</a>
                                                    <a class="red-color" href="{{ url('user/checkout') }}">{{ __('translate.check_out') }}</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <!-- Mobile Menu  -->
                    <div class="mobile-menu">
                        <div class="menu-backdrop"></div>
                        <div class="close-btn"><i class="fas fa-times"></i></div>
                        <nav class="menu-box">
                            <div class="nav-logo"><a href="{{ url('home') }}"><img src="{{ asset('public/uploads/basic-info/'. $basicInfo->logo) }}" alt="{{ $basicInfo->title }}" title="{{ $basicInfo->title }}"></a>
                            </div>
                            <div class="menu-outer">
                                <!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
                            </div>
                            <div class="social-links">
                                <ul class="clearfix">
                                    <li><a href="{{ $basicInfo->facebook }}"><span class="fab fa-facebook-square"></span></a></li>
                                    <li><a href="{{ $basicInfo->instagram }}"><span class="fab fa-instagram"></span></a></li>
                                    <li><a href="{{ $basicInfo->twitter }}"><span class="fab fa-twitter"></span></a></li>
                                    <li><a href="{{ $basicInfo->pinterest }}"><span class="fab fa-pinterest-p"></span></a></li>
                                    <li><a href="{{ $basicInfo->linkedIn }}"><span class="fab fa-linkedin-in"></span></a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <!-- End Mobile Menu -->
                </div>
            </div>
        </div>
    </div>
    <!-- menu-area-end -->
    {{-- 
    
     --}}
    <!-- header-search-area -->
    <div class="header-search-area d-none d-md-block">
        <div class="custom-container-two">
            <div class="row align-items-center">
                <div class="col-xl-3 col-lg-4 d-none d-lg-block">
                    <div class="header-category d-none d-lg-block">
                        <a href="{{ url('/categories/all') }}" class="cat-toggle"><i class="flaticon-menu"></i>{{ __('translate.all_dept') }}</a>
                        <ul class="category-menu">
                            @foreach($categories as $key=> $category)
                                <li class="has-dropdown"><a href="{{ url('categories/'. $category->slug) }}">
                                    <div class="cat-menu-img"><img height="38px" width="38px" src="{{ asset('public/uploads/category/'. $category->image) }}" alt="{{ $category->title }}"></div>
                                    {{ $category->title }}
                                    </a>
                                    <ul class="mega-menu">
                                        @php
                                            $liCount = 0;
                                        @endphp
                                        @foreach($category->sub_cat as $subcatkey=> $subcategory)
                                            @if ($liCount++==0)
                                                <li>
                                            @endif
                                                <ul>
                                                    <li class="dropdown-title">{{ $subcategory->title }}</li>
                                                    @foreach($subcategory->sub_child as $sub_child)
                                                        <li><a href="{{ url('/categories/'.$sub_child->slug) }}">{{ $sub_child->title }}</a></li>
                                                    @endforeach
                                                </ul>
                                            @if ($liCount==2)
                                                </li>
                                                @php
                                                    $liCount=0;
                                                @endphp
                                            @endif
                                        @endforeach
                                    </ul>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-8">
                    <div class="d-flex align-items-center justify-content-center justify-content-lg-end">
                        <div class="header-search-wrap">
                            <form action="javascript:void(0)">
                                <input type="text" id="query" placeholder="{{ __('translate.search_pl_hl') }}">
                                <select class="custom-select" id="cat_id">
                                    <option value="all" selected="">{{ __('translate.all_dept') }}</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->slug }}">{{ $category->title }}</option>
                                    @endforeach
                                </select>
                                <button id="btn_search" onclick="search()"><i class="flaticon-magnifying-glass-1"></i></button>
                            </form>
                        </div>
                        <div class="header-free-shopping">
                            <p>{{ __('translate.free_shi_order') }} <span>{{ $basicInfo->currency_symbol }}39+</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header-search-area-end -->
</header>
<!-- header-area-end -->
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
    function search()
    {
        let query = document.getElementById("query").value;
        let slug = document.getElementById("cat_id").value;
        window.open('{{ url("categories/") }}' +'/'+slug+'?&q='+query,'_self');
    } 
    $("body").on("change", ".language_switcher", function(event) {
        event.preventDefault();
        var lang = $(this).val();
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            type: "POST",
            url: "{{ url('change-lang') }}",
            data: {
                lang: lang,
            },
            success: function() {
                window.location.reload();
            },
            error: function() {
                window.location.reload();
            }
        });
    });
</script>
    