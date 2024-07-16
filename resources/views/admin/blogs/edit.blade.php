@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
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
                    <div class="col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Create Form</h3>
                            </div>
                            <form action="{{ route('blogs.update', $blog->id) }}" method="POST" enctype="multipart/form-data">
                                @csrf()
                                @method('patch')
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Blog Category Name</label>
                                                <select required class="form-control" name="cat_id">
                                                    <option value="" selected>Select</option>
                                                    @foreach ($blogCategorys as $blogCategory)
                                                        <option value="{{ $blogCategory->id }}" {{ $blogCategory->id==$blog->cat_id? 'selected' : null }}>{{ $blogCategory->cat_name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Blog Title</label>
                                                <input value="{{ $blog->title }}" class="form-control" type="text" name="title" placeholder="Blog Title" required>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Short Description</label>
                                                <input value="{{ $blog->short_desc }}" class="form-control" type="text" name="short_desc" placeholder="Short Description" required>
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <div class="form-group">
                                                <label>Description</label>
                                                <textarea required id="summernote" class="form-control" name="description">{{ $blog->description }}</textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <label style="margin-left: 10px;">Image (820 X 511)</label>
                                            <div class="form-group">
                                                <label class="col-7">
                                                    <img id="image_view" class="img-thumbnail" src="{{ asset($blog->image ? 'public/uploads/blog/' . $blog->image : 'public/uploads/admin/placeholder.png') }}">
                                                    <input style="display:none" onchange="setImage(this);" type="file" name="image" id="image" accept="image/*">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Status</label>
                                                <select required class="form-control" name="status">
                                                    <option value="1" {{ $blog->status==1? 'selected':'' }}>Active</option>
                                                    <option value="0" {{ $blog->status==0? 'selected':'' }}>Inactive</option>
                                                </select>
                                            </div>
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
@section('script')
    <script>
        $('#summernote').summernote({
            placeholder: 'Description',
            tabsize: 2,
            height: 100
        });
        function setImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#image_view').attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    </script>
@endsection