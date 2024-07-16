@extends('layouts.frontend.master')
@section('content')
    <style>
        .list-group-item.active {
            background-color: #f9d016;
            border: none;
        }
    </style>
    <!-- main-area -->
    <main>
        <section class="mt-3">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        @include('layouts.frontend.flash-message')
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area -->
        @include('frontend.users.user-bread')
        <!-- breadcrumb-area-end -->
        <section class="my-account-area pattern-bg pt-20 pb-100"
            data-background="{{ asset('public/frontend-assets/img/bg') }}/pattern_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="list-group list-group-flush" style="top:2px;">
                            @include('frontend.users.sidebar')
                        </div>
                    </div>
                    <div class="col-md-9">
                        @yield('user_section')
                    </div>
                </div>
            </div>
        </section>
    </main>
    <!-- main-area-end -->
@endsection
@section('script')
<script>
$(document).ready(function(){
    $('#stda').on('click', function(){
        if($(this).prop('checked') == true){

            $('#billingdiv').removeClass('col-lg-12');
            $('#billingdiv').addClass('col-lg-6');
            $('#shippingdiv').prop('hidden', false);

            $('#shipping_first_name').prop('required', true);
            $('#shipping_last_name').prop('required', true);
            $('#shipping_country_id').prop('required', true);
            $('#shipping_street_address').prop('required', true);
            $('#shipping_city').prop('required', true);
            $('#shipping_state').prop('required', true);
            $('#shipping_zip_code').prop('required', true);
            $('#shipping_phone').prop('required', true);
            $('#shipping_email').prop('required', true);


        }else{

            $('#billingdiv').removeClass('col-lg-6');
            $('#billingdiv').addClass('col-lg-12');
            $('#shippingdiv').prop('hidden', true);

            $('#shipping_first_name').prop('required', false);
            $('#shipping_last_name').prop('required', false);
            $('#shipping_country_id').prop('required', false);
            $('#shipping_street_address').prop('required', false);
            $('#shipping_city').prop('required', false);
            $('#shipping_state').prop('required', false);
            $('#shipping_zip_code').prop('required', false);
            $('#shipping_phone').prop('required', false);
            $('#shipping_email').prop('required', false);
        }
    });

});
</script>

<script>
    $(document).ready(function(){
        $('#current_password').keyup(function(){
            var current_password = $(this).val();
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: '{{ url("/user/check-user-password") }}',
                type: 'POST',
                data: {
                    current_password:current_password,
                },
                success: function(res){
                    if(current_password){
                        if(res){
                            $('#check-current-password').html('<font color="green">Correct Password</font>');
                            $('#submit').removeAttr('disabled');
                        }else{
                            $('#check-current-password').html('<font color="red">Incorrect Password</font>');
                            $('#submit').attr('disabled', true);
                        }
                    }else{
                        $('#check-current-password').html('');
                        $('#submit').attr('disabled', true);
                    }
                    }
                })
        });
        $('#confirm_password').keyup(function(){
            var confirm_password = $(this).val();
            var new_password = $('#new_password').val();
    
            if(confirm_password == new_password){
                $('#check-confirm-password').html('<font color="green">Password Matched</font>');
            }else{
                $('#check-confirm-password').html('<font color="red">Password Mismatch</font>');
            }
        });
    
        $('#change-pass').on('submit',function(e){
    
            e.preventDefault();
    
            var new_password = $('#new_password').val();
            var confirm_password = $('#confirm_password').val();
            if(confirm_password!=new_password) return alert("Mismatch Password!");
    
            var url = $(this).attr('action');
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: url,
                type: 'POST',
                data: {
                    new_password:new_password,
                },
                success: function(bool){
                        if(bool){
                            Swal.fire({
                            position: "middle-center",
                            icon: "success",
                            title: "Your password has been updated!",
                            showConfirmButton: false,
                            timer: 1500
                            });
                            $('#change-pass')[0].reset();
                            $('#check-confirm-password').html('');
                            $('#check-current-password').html('');
                            $('#submit').attr('disabled', true);
                        }
                    }
                })
            });
        });
    </script>
@endsection