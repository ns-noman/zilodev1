@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            @include('layouts.admin.flash-message')
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Sub Child</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Sub Child</li>
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
                                    <a href="{{ route('sub-child.create') }}"class="btn btn-light shadow rounded m-0"><i
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
                                                    <th>Category</th>
                                                    <th>Sub Category</th>
                                                    <th>Title</th>
                                                    <th>Meta Tile</th>
                                                    {{-- <th>Meta Description</th> --}}
                                                    <th>Status</th>
                                                    <th>Language</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($subChildren as $subChild)
                                                    <tr>
                                                        <td>{{ $loop->iteration }}</td>
                                                        <td>{{ $subChild->subcategory->category->title }}</td>
                                                        <td>{{ $subChild->subcategory->title }}</td>
                                                        <td>{{ $subChild->title }}</td>
                                                        <td>{{ $subChild->meta_title }}</td>
                                                        {{-- <td>{{ $subChild->meta_description }}</td> --}}
                                                        <td>{{ $subChild->status==1? 'Active' : 'Inactive' }}</td>
                                                        <td>
                                                            @foreach (Config::get('languages') as $lang => $language)
                                                                <a href="{{ url('admin/catalogue/subchild-localization/'. $subChild->id . '/'. $lang) }}">
                                                                    @if($subChild->translate($lang))
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
                                                                <a href="{{ route('sub-child.edit', $subChild->id) }}"
                                                                    class="btn btn-info">
                                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                                </a>
                                                                <form action="{{ route('sub-child.destroy', $subChild->id) }}" method="post">
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
                                                    <th>Category</th>
                                                    <th>Sub Category</th>
                                                    <th>Title</th>
                                                    <th>Meta Tile</th>
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
