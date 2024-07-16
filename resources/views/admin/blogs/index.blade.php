@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            @include('layouts.admin.flash-message')
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Blog</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Blog</li>
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
                                    <a href="{{ route('blogs.create') }}"class="btn btn-light shadow rounded m-0"><i
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
                                                    <th>SL</th>
                                                    <th>Blog Category</th>
                                                    <th>Title</th>
                                                    <th>Short Description</th>
                                                    <th>Image</th>
                                                    <th>Created By</th>
                                                    <th>Status</th>
                                                    <th>Language</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($blogs as $blog)
                                                    <tr>
                                                        <td> {{ $loop->iteration }}</td>
                                                        <td> {{ $blog->blogcategory->cat_name }}</td>
                                                        <td> {{ $blog->title }}</td>
                                                        <td> {{ $blog->short_desc }}</td>
                                                        <td><img src="{{ asset("public/uploads/blog/". $blog->image) }}" width="60px"></td>
                                                        <td> {{ $blog->user->name }}</td>
                                                        <td>
                                                            @if ($blog->status == 1)
                                                                Active
                                                            @else
                                                                Inactive
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @foreach (Config::get('languages') as $lang => $language)
                                                                    <a href="{{ url('admin/blog-localization/'. $blog->id . '/'. $lang) }}">
                                                                        @if($blog->translate($lang))
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
                                                                <a href="{{ route('blogs.edit', $blog->id) }}"
                                                                    class="btn btn-info">
                                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                                </a>
                                                                <form action="{{ route('blogs.destroy', $blog->id) }}" method="post">
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
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>SL</th>
                                                    <th>Blog Category</th>
                                                    <th>Title</th>
                                                    <th>Short Description</th>
                                                    <th>Image</th>
                                                    <th>Created By</th>
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
