@php
    $basicInfo = App\Models\BasicInfo::first();
    $quickGuides = App\Models\Service::where('serviceID','=',1)->where('status','=',1)->orderBy('head','asc')->get();
    $custServices = App\Models\Service::where('serviceID','=',2)->where('status','=',1)->orderBy('head','asc')->get();
@endphp
<!doctype html>
<html class="no-js" lang="{{ App::getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>{{ $basicInfo->title }}</title>
        <meta name="csrf-token" content="{{ csrf_token() }}" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		@include('layouts.frontend.links')
    </head>
    <body>
        @include('layouts.frontend.preloader')
        @include('layouts.frontend.header')
        @yield('content')
        @include('layouts.frontend.footer')
        @include('layouts.frontend.scripts')
        @yield('script')
    </body>
</html>
