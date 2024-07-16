@extends('layouts.frontend.master')
@section('content')
@php
    $wishList = Session::get('wishList')!=null ? Session::get('wishList'):[];
    $wishListTotal = 0;
    $discount = 0;
    foreach ($wishList as $key=>$item) {
        $wishListTotal += $item['new_price'] * $item['quantity'];
        $wishList[$key]['hasStock'] = App\Models\ProductDetails::where('product_id','=',$item['product_id'])->sum('stock');
    }
    $coupon = Session::get('coupon');
    if($coupon){
        $discount = $wishListTotal * ($coupon->discount_perc/100);
    }
    $grandTotal = $wishListTotal - $discount;

    $wishListTotal = number_format((float)$wishListTotal, 2, '.', '');
    $discount = number_format((float)$discount, 2, '.', '');
    $grandTotal = number_format((float)$grandTotal, 2, '.', '');
    $basicInfo = App\Models\BasicInfo::first();
@endphp
<!-- main-area -->
<main>

    <!-- breadcrumb-area -->
    <section class="breadcrumb-area breadcrumb-bg" data-background="{{ asset('public/frontend-assets') }}/img/bg/breadcrumb_bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
                        <h2>{{ __('translate.wish_list') }}</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{ url('home') }}">{{ __('translate.home') }}</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{ __('translate.wish_list') }}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb-area-end -->

    <!-- wishlist-area -->
    <section class="wishlist-area pt-100 pb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive-xl">
                        <table class="table m-0">
                            <thead>
                                <tr>
                                    <th class="product-thumbnail"></th>
                                    <th class="product-name">{{ __('translate.product') }}</th>
                                    <th class="product-name">{{ __('translate.color') }}</th>
                                    <th class="product-name">{{ __('translate.size') }}</th>
                                    <th class="product-price">{{ __('translate.price') }}</th>
                                    <th class="product-quantity">{{ __('translate.quantity') }}</th>
                                    <th class="product-subtotal">{{ __('translate.sub_total') }}</th>
                                    <th class="product-stock-status">{{ __('translate.stock_status') }}</th>
                                    <th class="product-add-to-cart"></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($wishList as $index => $item)
                                    <tr>
                                        <td class="product-thumbnail"><a href="{{ url('wishlist-delete/'. $index) }}" class="wishlist-remove"><i class="flaticon-cancel-1"></i></a>
                                            <a href="{{ url('product-details/' . $item['slug']) }}">
                                                <img height="129px" width="103px" src="{{ asset('public/uploads/product/' . $item['product_image']) }}" alt="">
                                            </a>
                                        </td>
                                        <td class="product-name">
                                            <h4><a href="{{ url('product-details/' . $item['slug']) }}">
                                                {{ Str::substr($item['product_title'], 0, 30) }}{{ strlen($item['product_title'])>30?'...':'.' }}
                                            </a></h4>
                                        </td>
                                        <td class="product-price"><span style="color: {{ $item['color_code'] }}">{{ $item['color'] }}</span></td>
                                        <td class="product-price">{{ $item['size'] }}</td>
                                        <td class="product-price">{{ $basicInfo->currency_symbol }} {{ number_format((float)($item['new_price']), 2, '.', '') }}</td>
                                        <td class="product-quantity">
                                            <div class="cart-plus">
                                                <form action="#">
                                                    <div class="cart-plus-minus">
                                                        <input class="product_qty" product_id="{{ $item['product_id'] }}" color_id="{{ $item['color_id'] }}" size_id="{{ $item['size_id'] }}" type="text" value="{{ $item['quantity'] }}">
                                                    </div>
                                                </form>
                                            </div>
                                        </td>
                                        <td class="product-subtotal"><span>{{ $basicInfo->currency_symbol }} {{ number_format((float)($item['new_price'] * $item['quantity']), 2, '.', '') }}</span></td>
                                        <td class="product-stock-status"><span>{{ $item['hasStock']? 'In Stock' : 'Out Of Stock' }}</span></td>
                                        <td class="product-add-to-cart">
                                            @if($item['hasStock'])
                                                <a href="javascript:void(0)" class="btn addToCart"
                                                    product_id="{{ $item['product_id'] }}"
                                                    color_id="{{ $item['color_id'] }}"
                                                    size_id="{{ $item['size_id'] }}"
                                                    quantity="{{ $item['quantity'] }}"
                                                    index="{{ $index }}"add_to_cart
                                                >{{ __('translate.add_to_cart') }}</a>
                                            @else
                                                <a href="javascript:void(0)" class="btn">{{ __('translate.add_to_cart') }}</a>
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>




@endsection
@section('script')
<script>
$(document).ready(function(){
    $('.cart-plus-minus').on('click', function(){

        let input = $(this).children(":first");
        
        let cartData = {};
        cartData.product_id = input.attr('product_id');
        cartData.color_id = input.attr('color_id');
        cartData.size_id = input.attr('size_id');
        cartData.quantity = input.val();

        $.ajax({
                url: "{{ url('wishlist-current-stock') }}"+'/'+cartData.product_id+'/'+cartData.color_id+'/'+cartData.size_id,
                method: "GET",
                dataType: "json",
                success: function(stock){
                    if(cartData.quantity > stock){
                        Swal.fire({
                            position: "middle-center",
                            icon: "success",
                            title: "Quantity Exceed!",
                            showConfirmButton: false,
                            timer: 2000
                        });
                        input.val(stock);
                    }else{
                        updateQuantity(cartData);
                    }
                }
            });
    });


    $('.addToCart').on('click', function(){

        let cartData = {};
        cartData.product_id = $(this).attr('product_id');
        cartData.color_id = $(this).attr('color_id');
        cartData.size_id = $(this).attr('size_id');
        cartData.quantity = $(this).attr('quantity');
        let delItem = $(this).attr('index');
        $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{ url('cart-insert-update') }}",
                method: "POST",
                data: cartData,
                dataType: "json",
                success: function(res){
                    Swal.fire({
                        position: "middle-center",
                        icon: "success",
                        title: res.message,
                        showConfirmButton: false,
                        timer: 2000
                    });
                    const myTimeout = setTimeout(window.open('{{ url("wishlist-delete") }}'+'/'+delItem,'_self'),1500); 
                }
        });
    });

});

function updateQuantity(cartData) {

    $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            url: "{{ url('wishlist-insert-update') }}",
            method: "POST",
            data: cartData,
            dataType: "json",
            success: function(res){
                location.reload();
            }
    });
}


</script>
@endsection