@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            @include('layouts.admin.flash-message')
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Category</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Category</li>
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
                                    <a href="{{ route('categories.create') }}"class="btn btn-light shadow rounded m-0"><i
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
                                                    <th>Srl.</th>
                                                    <th>Title</th>
                                                    <th>Meta Tile</th>
                                                    <th>Meta Description</th>
                                                    <th>Image</th>
                                                    <th>Best Seller</th>
                                                    <th>Status</th>
                                                    <th>Language</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($categories as $category)
                                                    <tr>
                                                        <td>{{ $loop->iteration }}</td>
                                                        <td>{{ $category->title }}</td>
                                                        <td>{{ $category->meta_title }}</td>
                                                        <td>{{ $category->meta_description }}</td>
                                                        <td><img src="{{ asset('public/uploads/category/' . $category->image) }}" height="50px" width="50px"></td>
                                                        <td>{{ $category->best_seller==1? 'Yes' : 'No' }}</td>
                                                        <td>{{ $category->status==1? 'Active' : 'Inactive' }}</td>
                                                        <td>
                                                            @foreach (Config::get('languages') as $lang => $language)
                                                                    <a href="{{ url('admin/catalogue/category-localization/'. $category->id . '/'. $lang) }}">
                                                                        @if($category->translate($lang))
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
                                                                <a href="{{ route('categories.edit', $category->id) }}"
                                                                    class="btn btn-info">
                                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                                </a>
                                                                <form action="{{ route('categories.destroy', $category->id) }}" method="post">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="submit" class="btn btn-danger">
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
                                                    <th>Srl.</th>
                                                    <th>Title</th>
                                                    <th>Meta Tile</th>
                                                    <th>Meta Description</th>
                                                    <th>Image</th>
                                                    <th>Best Seller</th>
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
