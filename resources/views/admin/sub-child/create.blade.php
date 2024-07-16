@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
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
                    <div class="col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Create Form</h3>
                            </div>
                            <form action="{{ route('sub-child.store') }}" method="POST">
                                @csrf()
                                <div class="card-body">
                                    <div class="row">
                                        <div class="form-group col-sm-12 col-md-6 col-lg-6">
                                            <label>Title</label>
                                            <input type="text" class="form-control" name="title" placeholder="Title" required>
                                        </div>
                                        <div class="form-group col-sm-6 col-md-6 col-lg-6">
                                            <label>Status</label>
                                            <select name="status" id="status" class="form-control">
                                                <option value="1" selected>Active</option>
                                                <option value="0">Inactive</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-6 col-lg-6">
                                            <label>Category</label>
                                            <select class="form-control" id="cat_id">
                                                <option value=''>Select Category</option>
                                                @foreach ($categories as $category)
                                                    <option value="{{ $category->id }}">{{ $category->title }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-6 col-lg-6">
                                            <label>Sub Category</label>
                                            <select class="form-control" name="sub_cat_id" id="sub_cat_id">
                                                <option value=''>Select Sub Category</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                            <label>Meta Title</label>
                                            <input type="text" class="form-control" name="meta_title" placeholder="Meta Title">
                                        </div>
                                        <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                            <label>Meta Description</label>
                                            <textarea class="form-control" id="meta_description" name="meta_description" cols="30" rows="1" placeholder="Meta Description"></textarea>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label>Answer & Question</label>
                                                <textarea id="answer_question" name="answer_question"></textarea>
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
<script type="text/javascript">
    $( document ).ready(function() {
        $('#cat_id').on('change', function(e){
            $.ajax({
                url: '{{ url("/admin/catalogue/sub-cat-load/") }}/' + $(this).val(),
                type: 'GET',
                dataType: 'JSON',
                success: function(data){
                    var option = '<option value="">Select Sub Category</option>';
                    data.forEach((element, index) => {
                        option += '<option value="'+element.id+'">'+element.title+'</option>'
                    });
                    $('#sub_cat_id').html(option);

                }
            })
        });
        $('#answer_question').summernote({
            placeholder: 'Answer & Question',
            tabsize: 2,
            height: 100
        });
        $('#meta_description').summernote({
            placeholder: 'Meta Description',
            tabsize: 2,
            height: 100
        });
    });
</script>
@endsection
