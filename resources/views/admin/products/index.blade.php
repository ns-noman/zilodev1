@extends('layouts.admin.master')
@section('content')
    @php
        $basicInfo = App\Models\BasicInfo::first();
    @endphp
    <div class="content-wrapper">
        <div class="content-header">
            @include('layouts.admin.flash-message')
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Products</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Products</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <section class="col-lg-12">
                        <div class="card">
                            <div class="card-header bg-primary p-1">
                                <h3 class="card-title">
                                    <a href="{{ route('products.create') }}"class="btn btn-light shadow rounded m-0"><i
                                            class="fas fa-plus"></i>
                                        <span>Add New</span></i></a>
                                </h3>
                            </div>
                            <div class="card-body">
                                <div class="bootstrap-data-table-panel">
                                    <div class="table-responsive">
                                        <table id="example1" class="table table-striped table-bordered table-centre">
                                            <thead>
                                                <tr>
                                                    <th>SN</th>
                                                    <th>Category</th>
                                                    <th>Sub Category</th>
                                                    <th>Sub Child</th>
                                                    <th>Title</th>
                                                    <th>Code</th>
                                                    <th>Sale Price</th>
                                                    <th>Total Sale</th>
                                                    <th>Front Image</th>
                                                    <th>Back Image</th>
                                                    <th>Status</th>
                                                    <th>Language</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($products as $product)
                                                    <tr>
                                                        <td>{{ $loop->iteration }}</td>
                                                        <td>{{ $product->category->title }}</td>
                                                        <td>{{ $product->sub_category->title }}</td>
                                                        <td>{{ isset($product->sub_child->title)? $product->sub_child->title : null }}</td>
                                                        <td>{{ Str::substr($product->product_title, 0, 20) }}{{ strlen($product->product_title) > 20 ? '...' : '.' }}</td>
                                                        <td>{{ $product->product_code }}</td>
                                                        <td>{{ $basicInfo->currency_symbol }} {{ $product->new_price }}</td>    
                                                        <td>{{ $product->total_sale }}</td>
                                                        <td><img src="{{ asset('public/uploads/product/' . $product->product_image) }}" height="50px" width="50px"></td>
                                                        <td><img src="{{ asset('public/uploads/product/' . $product->product_image_back) }}" height="50px" width="50px"></td>
                                                        <td>{{ $product->status==1? 'Active' : 'Inactive' }}</td>
                                                        <td>
                                                            @foreach (Config::get('languages') as $lang => $language)
                                                                    <a href="{{ url('admin/catalogue/product-localization/'. $product->id . '/'. $lang) }}">
                                                                        @if($product->translate($lang))
                                                                                <i class="fa-solid fa-check text-success"></i>
                                                                        @else
                                                                            <i class="fa-solid fa-pen-to-square"></i>
                                                                        @endif
                                                                        {{ $lang }} &nbsp;
                                                                    </a>
                                                            @endforeach
                                                        </td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <a href="{{ route('products.edit', $product->id) }}"
                                                                    class="btn btn-info">
                                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                                </a>

                                                                <form 
                                                                    action="#"
                                                                    {{-- action="{{ route('products.destroy', $product->id) }}" --}}
                                                                    method="post">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button" class="btn btn-danger">
                                                                        <i class="fa-solid fa-trash"></i>
                                                                    </button>
                                                                </form>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>SN</th>
                                                    <th>Category</th>
                                                    <th>Sub Category</th>
                                                    <th>Sub Child</th>
                                                    <th>Title</th>
                                                    <th>Code</th>
                                                    <th>Sale Price</th>
                                                    <th>Total Sale</th>
                                                    <th>Front Image</th>
                                                    <th>Back Image</th>
                                                    <th>Status</th>
                                                    <th>Language</th>
                                                    <th>Action</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </div>
@endsection
