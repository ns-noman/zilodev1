@extends('frontend.users.master')
@section('user_section')
<!-- checkout-area -->
<section class="checkout-area pt-10 pb-10">
    <div class="container">
        <form action="{{ url('user/address-store') }}" class="checkout-form" method="POST">
        @csrf
        <div class="row justify-content-center">
            <div class="col-lg-12" id="billingdiv">
                <div class="checkout-wrap">
                    <h5 class="title">{{ __('translate.bill_info') }}</h5>
                    <input value="{{ isset($address) ? $address->id : null }}" type="hidden" name="address_id">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-grp">
                                    <label for="billing_first_name">{{ __('translate.first_name') }} <span>*</span></label>
                                    <input required value="{{ isset($address) ? $address->billing_first_name : null }}" type="text" name="billing_first_name" id="billing_first_name">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-grp">
                                    <label for="billing_last_name">{{ __('translate.last_name') }} <span>*</span></label>
                                    <input required value="{{ isset($address) ? $address->billing_last_name : null }}" type="text" id="billing_last_name" name="billing_last_name">
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-grp">
                                    <label for="billing_company_name">{{ __('translate.company_name') }} <small>({{ __('translate.optional') }})</small></label>
                                    <input value="{{ isset($address) ? $address->billing_company_name : null }}" type="text" id="billing_company_name" name="billing_company_name">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-grp">
                                    <label>{{ __('translate.country') }} / {{ __('translate.region') }} *</label>
                                    <select class="custom-select" id="billing_country_id" name="billing_country_id">
                                        <option value="">{{ __('translate.select_country') }}</option>
                                        @foreach($countries as $key => $country)
                                            <option value="{{ $country->id }}" {{ isset($address)? ($address->billing_country_id==$country->id? 'selected' : null) : null }}>{{ $country->country_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-grp">
                                    <label for="billing_street_address">{{ __('translate.street_address') }} *</label>
                                    <input required value="{{ isset($address) ? $address->billing_street_address : null }}" type="text" id="billing_street_address" name="billing_street_address">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="billing_city">{{ __('translate.town') }} / {{ __('translate.city') }} *</label>
                                    <input required value="{{ isset($address) ? $address->billing_city : null }}" type="text" id="billing_city" name="billing_city">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="billing_state">{{ __('translate.state') }} *</label>
                                    <input required value="{{ isset($address) ? $address->billing_state : null }}" type="text" id="billing_state" name="billing_state">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="billing_zip_code">{{ __('translate.postal_zip') }} <span>*</span></label>
                                    <input required value="{{ isset($address) ? $address->billing_zip_code : null }}" type="text" id="billing_zip_code" name="billing_zip_code">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="billing_phone">{{ __('translate.your_phone') }} <span>*</span></label>
                                    <input required value="{{ isset($address) ? $address->billing_phone : null }}" type="text" id="billing_phone" name="billing_phone">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-grp">
                                    <label for="billing_email">{{ __('translate.email_address1') }} <span>*</span></label>
                                    <input required value="{{ isset($address) ? $address->billing_email : null }}" type="billing_email" name="billing_email">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="different-address custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="stda" name="stda">
                                    <label class="custom-control-label" for="stda">{{ __('translate.ship_to_dif_add') }}?</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-grp mb-0">
                                    <label for="notes">{{ __('translate.order_note') }} <small>({{ __('translate.optional') }})</small></label>
                                    <textarea name="notes" id="notes" placeholder="{{ __('translate.or_note_pl') }}">{{ isset($address) ? $address->notes : null }}</textarea>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
            <div class="col-lg-6" id="shippingdiv" hidden>
                <div class="checkout-wrap">
                    <h5 class="title">{{ __('translate.ship_info') }}</h5>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-grp">
                                    <label for="shipping_first_name">{{ __('translate.first_name') }} <span>*</span></label>
                                    <input value="{{ isset($address) ? $address->shipping_first_name : null }}" type="text" name="shipping_first_name" id="shipping_first_name">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-grp">
                                    <label for="shipping_last_name">{{ __('translate.last_name') }} <span>*</span></label>
                                    <input value="{{ isset($address) ? $address->shipping_last_name : null }}" type="text" id="shipping_last_name" name="shipping_last_name">
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-grp">
                                    <label for="shipping_company_name">{{ __('translate.company_name') }} <small>({{ __('translate.optional') }})</small></label>
                                    <input value="{{ isset($address) ? $address->shipping_company_name : null }}" type="text" id="shipping_company_name" name="shipping_company_name">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-grp">
                                    <label>{{ __('translate.country') }} / {{ __('translate.region') }} *</label>
                                    <select class="custom-select" id="shipping_country_id" name="shipping_country_id">
                                        <option value="">{{ __('translate.select_country') }}</option>
                                        @foreach($countries as $key => $country)
                                            <option value="{{ $country->id }}" {{ isset($address)? ($address->shipping_country_id==$country->id? 'selected' : null) : null }}>{{ $country->country_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-grp">
                                    <label for="shipping_street_address">{{ __('translate.street_address') }} *</label>
                                    <input value="{{ isset($address) ? $address->shipping_street_address : null }}" type="text" id="shipping_street_address" name="shipping_street_address">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="shipping_city">{{ __('translate.town') }} / {{ __('translate.city') }} *</label>
                                    <input value="{{ isset($address) ? $address->shipping_city : null }}" type="text" id="shipping_city" name="shipping_city">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="shipping_state">{{ __('translate.state') }} *</label>
                                    <input value="{{ isset($address) ? $address->shipping_state : null }}" type="text" id="shipping_state" name="shipping_state">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="shipping_zip_code">{{ __('translate.postal_zip') }} <span>*</span></label>
                                    <input value="{{ isset($address) ? $address->shipping_zip_code : null }}" type="text" id="shipping_zip_code" name="shipping_zip_code">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-grp">
                                    <label for="shipping_phone">{{ __('translate.your_phone') }} <span>*</span></label>
                                    <input value="{{ isset($address) ? $address->shipping_phone : null }}" type="text" id="shipping_phone" name="shipping_phone">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-grp">
                                    <label for="shipping_email">{{ __('translate.email_address1') }} <span>*</span></label>
                                    <input value="{{ isset($address) ? $address->shipping_email : null }}" type="shipping_email" id="shipping_email">
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
