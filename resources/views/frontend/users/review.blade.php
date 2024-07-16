@extends('frontend.users.master')
@section('user_section')
<!-- checkout-area -->
<section class="checkout-area pt-10 pb-10">
    <div class="container">
        <div class="row">
            <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6">
                <div class="exclusive-item exclusive-item-three text-center mb-50">
                    <div class="exclusive-item-thumb">
                        <a href="{{ url('product-details/' . $product->slug) }}">
                            <img src="{{ asset('public/uploads/product/' . $product->product_image) }}" alt="{{ $product->product_title }}">
                            <img class="overlay-product-thumb" src="{{ asset('public/uploads/product/' . $product->product_image) }}" alt="{{ $product->product_title }}">
                        </a>
                    </div>
                    <div class="exclusive-item-content">
                        <h5><a href="{{ url('product-details/' . $product->slug) }}">{{ $product->product_title }}</a></h5>
                        <div class="exclusive--item--price">
                            <del class="old-price">${{ $product->old_price }}</del>
                            <span class="new-price">${{ $product->new_price }}</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="product-review-form">
                    <div class="rising-star mb-40">
                        <h5>Your Rating</h5>
                        <div class="rising-rating" data-rate-value="{{ $review ? $review->rating: '3' }}"></div>
                    </div>
                    <form action="{{ url('user/review/store-update') }}" method="POST">
                        @csrf
                        <input type="hidden" id="rating" name="rating" value="3">
                        <input type="hidden" id="order_id" name="order_id" value="{{ $product->order_id }}">
                        <input type="hidden" id="product_id" name="product_id" value="{{ $product->id }}">
                        <input type="hidden" id="review_id" name="review_id" value="{{ $review ? $review->id: null }}">
                        <div class="form-grp">
                            <label for="review">YOUR REVIEW *</label>
                            <textarea name="review" id="review" required>{{ $review ? $review->review:null }}</textarea>
                        </div>
                        <button class="btn" type="submit">SUBMIT</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('script')
<script>
    $(document).ready(function(){
        $('.rising-rating').on('click',function(){
            let rating = $(this).attr('data-rate-value');
            $('#rating').val(rating);
        });
    });
</script>
@endsection