@extends('frontend.users.master')
@section('user_section')
    @php
        $basicInfo = App\Models\BasicInfo::first();
    @endphp
    <section class="checkout-area pt-10 pb-10">
        <div class="container">
            <div class="row">
                <section class="col-lg-12">
                    <div class="card">
                        <div class="card-header bg-warning p-1">
                            <h3 class="card-title">{{ __('translate.my_orders') }}</h3>
                        </div>
                        <div class="card-body">
                            <div class="bootstrap-data-table-panel">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-centre">

                                        {{-- 'sn'=>'SN',
                                        ''=>'Order No',
                                        ''=>'Order Date',
                                        ''=>'Order Status',
                                        ''=>'Payment Status',
                                        ''=>'Payment Method', --}}

                                        <thead>
                                            <tr>
                                                <th>{{ __('translate.sn') }}</th>
                                                <th>{{ __('translate.order_no') }}</th>
                                                <th>{{ __('translate.order_date') }}</th>
                                                <th>{{ __('translate.total') }}</th>
                                                <th>{{ __('translate.order_status') }}</th>
                                                <th>{{ __('translate.payment_status') }}</th>
                                                <th>{{ __('translate.payment_method') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($orders as $order)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td><a target="_blank" href="{{ url('user/orders/invoice/'.$order->id) }}"><b>{{ $order->order_no }}</b></a></td>
                                                    <td>
                                                        @php
                                                            $date = date_create($order->created_at);
                                                            echo date_format($date,"d M Y");
                                                        @endphp
                                                    </td>
                                                    <td>{{ $basicInfo->currency_symbol }} {{ $order->total_price }}</td>
                                                    <td>{{ $order->order_status }}</td>
                                                    <td>{{ $order->payment_status }}</td>
                                                    <td>{{ $order->payment_method }}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
@endsection
