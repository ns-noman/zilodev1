@php
use Illuminate\Support\Facades\DB;
$privileges = DB::table('privileges')
                ->join('menus', function ($join) {
                    $join->on('privileges.menu_id', '=', 'menus.id');
                })
                ->where('privileges.role_id', Auth::guard('admin')->user()->type)
                ->select('menus.menu_name')
                ->get()->toArray();
$privileges = array_column($privileges,'menu_name');
@endphp
<aside class="main-sidebar sidebar-dark-primary elevation-0 bg-dark">
    <a href="{{ url('admin/profile/update-admin-details') }}" class="brand-link bg-warning">
        <img src="{{ Auth::guard('admin')->user()->image? asset('public/uploads/admin/'. Auth::guard('admin')->user()->image): asset('public/frontend-assets/img/user.png') }}" alt="{{ $basicInfo->title }} Logo"
            class="brand-image img-circle elevation-3" style="opacity: .8" height="30" width="30">
        <span class="brand-text font-weight-dark text-dark">{{ Str::ucfirst(Auth::guard('admin')->user()->name) }}</span>
    </a>
    <div class="sidebar">
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                {{-- @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Dashboard',$privileges)) --}}
                <li class="nav-item {{ request()->is('admin/dashboard') ? 'menu-open' : '' }}">
                    <a href="{{ url('admin/dashboard') }}" class="nav-link {{ request()->is('admin/dashboard') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                {{-- @endif --}}
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Basic Info Manage',$privileges))
                    <li class="nav-item {{ request()->is('admin/basic-infos*') ? 'menu-open' : '' }}">
                        <a href="{{ url('admin/basic-infos') }}" class="nav-link {{ request()->is('admin/basic-infos*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Basic Info Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Admin',$privileges))
                <li class="nav-item {{ request()->is('admin/admin*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('admin/admin*') ? 'active' : '' }}">
                      <i class="nav-icon fas fa-edit"></i>
                      <p>
                        Admin
                        <i class="fas fa-angle-left right"></i>
                      </p>
                    </a>
                    <ul class="nav nav-treeview">
                      @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Role Manage',$privileges))
                        <li class="nav-item">
                            <a href="{{ url('admin/admin/roles') }}" class="nav-link {{ request()->is('admin/admin/roles*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Role Manage</p>
                            </a>
                        </li>
                      @endif
                      @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Admin Manage',$privileges))
                        <li class="nav-item">
                            <a href="{{ url('admin/admin/admins') }}" class="nav-link {{ request()->is('admin/admin/admins*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Admin Manage</p>
                            </a>
                        </li>
                      @endif
                    </ul>
                </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Settings',$privileges))
                <li class="nav-item {{ request()->is('admin/profile/*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('admin/profile/*') ? 'active' : '' }}">
                      <i class="nav-icon fas fa-edit"></i>
                      <p>
                        Settings
                        <i class="fas fa-angle-left right"></i>
                      </p>
                    </a>
                    <ul class="nav nav-treeview">
                      @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Update Password',$privileges))
                        <li class="nav-item">
                            <a href="{{ url('admin/profile/update-admin-password') }}" class="nav-link {{ request()->is('admin/profile/update-admin-password*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Update Password</p>
                            </a>
                        </li>
                      @endif
                      @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Update Details',$privileges))
                        <li class="nav-item">
                            <a href="{{ url('admin/profile/update-admin-details') }}" class="nav-link {{ request()->is('admin/profile/update-admin-details*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Update Details</p>
                            </a>
                        </li>
                      @endif
                    </ul>
                </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Catalogue Manage',$privileges))
                <li class="nav-item {{ request()->is('admin/catalogue/*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('admin/catalogue/*') ? 'active' : '' }}">
                      <i class="nav-icon fas fa-edit"></i>
                      <p>
                        Catalogue Manage
                        <i class="fas fa-angle-left right"></i>
                      </p>
                    </a>
                    <ul class="nav nav-treeview">
                        @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Category',$privileges))
                            <li class="nav-item">
                                <a href="{{ url('admin/catalogue/categories') }}" class="nav-link {{ request()->is('admin/catalogue/categories*') ? 'active' : '' }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Category</p>
                                </a>
                            </li>
                        @endif
                        @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Sub Category',$privileges))
                            <li class="nav-item">
                                <a href="{{ url('admin/catalogue/sub-categories') }}" class="nav-link {{ request()->is('admin/catalogue/sub-categories*') ? 'active' : '' }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Sub Category</p>
                                </a>
                            </li>
                        @endif
                        @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Sub Child',$privileges))
                            <li class="nav-item">
                                <a href="{{ url('admin/catalogue/sub-child') }}" class="nav-link {{ request()->is('admin/catalogue/sub-child*') ? 'active' : '' }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Sub Child</p>
                                </a>
                            </li>
                        @endif
                        @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Color',$privileges))
                            <li class="nav-item">
                                <a href="{{ url('admin/catalogue/colors') }}" class="nav-link {{ request()->is('admin/catalogue/colors*') ? 'active' : '' }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Color</p>
                                </a>
                            </li>
                        @endif
                        @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Size',$privileges))
                            <li class="nav-item">
                                <a href="{{ url('admin/catalogue/sizes') }}" class="nav-link {{ request()->is('admin/catalogue/sizes*') ? 'active' : '' }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Size</p>
                                </a>
                            </li>
                        @endif
                        @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Product',$privileges))
                            <li class="nav-item">
                                <a href="{{ url('admin/catalogue/products') }}" class="nav-link {{ request()->is('admin/catalogue/products*') ? 'active' : '' }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Product</p>
                                </a>
                            </li>
                        @endif
                    </ul>
                </li>
                @endif
                
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Order Manage',$privileges))
                    <li class="nav-item">
                        <a href="{{ url('admin/orders') }}" class="nav-link {{ request()->is('admin/orders*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Order Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Customer Manage',$privileges))
                    <li class="nav-item {{ request()->is('admin/customers*') ? 'menu-open' : '' }}">
                        <a href="{{ url('admin/customers') }}" class="nav-link {{ request()->is('admin/customers*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Customer Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Today\'s Deal Manage',$privileges))
                    <li class="nav-item">
                        <a href="{{ url('admin/deals') }}"
                            class="nav-link {{ request()->is('admin/deals*') ? 'active' : '' }} ">
                            <i class="nav-icon fas fa-edit"></i></i>Today's Deal Manage</a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Home Feature Manage',$privileges))
                    <li class="nav-item">
                        <a href="{{ url('admin/home-features') }}"
                            class="nav-link {{ request()->is('admin/home-features*') ? 'active' : '' }} ">
                            <i class="nav-icon fas fa-edit"></i></i>Home Feature Manage</a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Blog Category Manage',$privileges))
                    <li class="nav-item">
                        <a href="{{ url('admin/blog-category') }}" class="nav-link {{ request()->is('admin/blog-category*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Blog Category Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Blog Manage',$privileges))
                    <li class="nav-item">
                        <a href="{{ url('admin/blogs') }}" class="nav-link {{ request()->is('admin/blogs*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Blog Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('About Us Manage',$privileges))
                    <li class="nav-item {{ request()->is('admin/about-us*') ? 'menu-open' : '' }}">
                        <a href="{{ url('admin/about-us') }}" class="nav-link {{ request()->is('admin/about-us*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>About Us Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Slider Manage',$privileges))
                    <li class="nav-item {{ request()->is('admin/sliders*') ? 'menu-open' : '' }}">
                        <a href="{{ url('admin/sliders') }}" class="nav-link {{ request()->is('admin/sliders*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Slider Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Review Manage',$privileges))
                    <li class="nav-item {{ request()->is('admin/reviews*') ? 'menu-open' : '' }}">
                        <a href="{{ url('admin/reviews') }}" class="nav-link {{ request()->is('admin/reviews*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Review Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Coupons Manage',$privileges))
                    <li class="nav-item">
                        <a href="{{ url('admin/coupons_manage') }}"
                            class="nav-link {{ request()->is('admin/coupons_manage*') ? 'active' : '' }} ">
                            <i class="nav-icon fas fa-edit"></i></i>Coupons Manage</a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Message Manage',$privileges))
                    <li class="nav-item">
                        <a href="{{ url('admin/messages') }}" class="nav-link {{ request()->is('admin/messages*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Message Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Service Manage',$privileges))
                    <li class="nav-item {{ request()->is('admin/services*') ? 'menu-open' : '' }}">
                        <a href="{{ url('admin/services') }}" class="nav-link {{ request()->is('admin/services*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Service Manage</p>
                        </a>
                    </li>
                @endif
            </ul>
        </nav>
    </div>
</aside>
<aside class="control-sidebar control-sidebar-dark"></aside>
