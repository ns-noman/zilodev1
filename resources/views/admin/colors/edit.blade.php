@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Colors</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Colors</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Edit Form</h3>
                            </div>
                            <form action="{{ route('colors.update', $color->id) }}" method="POST">
                                @csrf()
                                @method('patch')
                                <div class="card-body">
                                    <div class="row">
                                        <div class="form-group col-sm-12 col-md-6 col-lg-6">
                                            <label>Color Name</label>
                                            <input value="{{ $color->name }}" type="text" class="form-control" name="name" placeholder="Color Name" required>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-6 col-lg-6">
                                            <label>Color Code</label>
                                            <input value="{{ $color->code }}" type="text" class="form-control" name="code" placeholder="Color Code" required>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>Status</label>
                                            <select name="status" id="status" class="form-control">
                                                <option {{ $color->status==1? 'selected':'' }} value="1">Active</option>
                                                <option {{ $color->status==0? 'selected':'' }} value="0">Inactive</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection