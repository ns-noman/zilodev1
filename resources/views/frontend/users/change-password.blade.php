@extends('frontend.users.master')
@section('user_section')
    <div class="content-wrapper">
        <div class="content-header">
            @include('layouts.admin.flash-message')
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="form-group col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">{{ __('translate.change_password') }}</h3>
                            </div>
                            <form id="change-pass" action="{{ url('user/change-user-password/'. Auth::guard('web')->user()->id)}}" method="POST">
                              @csrf
                                <div class="card-body">
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label class="form-label">{{ __('translate.current_password') }}</label>
                                            <input type="password" class="form-control" id="current_password" name="current_password" placeholder="*******" required>
                                            <span id="check-current-password"></span>
                                        </div>
                                        <div class="form-group col-12">
                                            <label class="form-label">{{ __('translate.new_password') }}</label>
                                            <input type="password" class="form-control" id="new_password" name="new_password" placeholder="*******" required>
                                        </div>
                                        <div class="form-group col-12">
                                            <label class="form-label">{{ __('translate.confirm_password1') }}</label>
                                            <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="*******" required>
                                            <span id="check-confirm-password"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <button id="submit" type="submit" disabled class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection