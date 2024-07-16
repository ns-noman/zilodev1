@extends('frontend.users.master')
@section('user_section')
<section class="checkout-area pt-10 pb-10">
    <div class="container">
        <form action="{{ url('user/update-profile') }}" class="checkout-form" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="checkout-wrap">
                        <h5 class="title">{{ __('translate.my_profile') }}</h5>
                        <div class="row">
                            <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                @php
                                    if(Auth::guard('web')->user()->image)
                                    {
                                        if(Auth::guard('web')->user()->google_id || Auth::guard('web')->user()->facebook_id){
                                            $src = Auth::guard('web')->user()->image;
                                        }else{
                                            $src = asset('public/uploads/user/'. Auth::guard('web')->user()->image);
                                        }
                                    }else{
                                        $src = asset('public/frontend-assets/img/user.png');
                                    }
                                @endphp
                                <label class="mpbtn col-md-2 col-sm-2" style="cursor:pointer">
                                    <img id="image_view" style="max-width:100%" class="img-thumbnail" src="{{ $src }}">
                                    <input name="image" id="image" style="display:none" onchange="profile(this);" type="file" accept="image/*">
                                </label>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="name"><span>{{ __('translate.name') }}*</span></label>
                                    <input required value="{{ Auth::guard('web')->user()->name }}" type="text" name="name" id="name">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="email"><span>{{ __('translate.email') }}*</span></label>
                                    <input disabled value="{{ Auth::guard('web')->user()->email }}" type="text" name="email" id="email">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="phone"><span>{{ __('translate.phone') }}*</span></label>
                                    <input required value="{{ Auth::guard('web')->user()->phone }}" type="text" name="phone" id="phone">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="default_address"><span>{{ __('translate.address') }}*</span></label>
                                    <input required value="{{ Auth::guard('web')->user()->default_address }}" type="text" name="default_address" id="default_address">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="btn btn-md" type="submit">SUBMIT</button>
        </form>
    </div>
</section>
@endsection
@section('script')
<script>
function profile(input) {
    
    if("{{ Auth::guard('web')->user()->google_id }}" || "{{ Auth::guard('web')->user()->facebook_id }}"){
        alert('Profile picture Can not be changed!');
    }else{
        if (input.files && input.files[0]) {
            var reader = new FileReader();
    
            reader.onload = function(e) {
                $('#image_view').attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
}
</script>
@endsection