@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
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
                    <div class="col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Edit Form</h3>
                            </div>
                            <form action="{{ route('products.update', $product->id) }}" method="POST" enctype="multipart/form-data">
                                @csrf()
                                @method('PATCH')
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label>Product Title *</label>
                                                <input value="{{ $product->product_title }}" class="form-control"
                                                    type="text" name="product_title" id="product_title"
                                                    placeholder="Product Title" required>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label>Short Description</label>
                                                <input value="{{ $product->short_desc }}" class="form-control"
                                                    type="text" name="short_desc" id="short_desc"
                                                    placeholder="Short Description" required>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>Description *</label>
                                                <textarea id="description" name="description" required>{{ $product->meta_description }}</textarea>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <label style="margin-left: 10px;">Thumbnail Front (327 X 358)</label>
                                            <div class="form-group">
                                                <div class="row">
                                                    <label class="col-6">
                                                        <img id="product_image_view" style="width:100px!imporatant; height:100px!imporatant;" class="img-thumbnail" src="{{ asset($product->product_image ? 'public/uploads/product/' . $product->product_image : 'public/uploads/admin/placeholder.png') }}">
                                                        <input class="variant-image" style="display:none" onchange="productImage(this);" type="file" name="product_image" id="product_image" accept="image/*">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <label style="margin-left: 10px;">Thumbnail Back (327 X 358)</label>
                                            <div class="form-group">
                                                <div class="row">
                                                    <label class="col-6">
                                                        <img id="product_image_back_view" style="width:100px!imporatant; height:100px!imporatant;" class="img-thumbnail" src="{{ asset($product->product_image_back ? 'public/uploads/product/' . $product->product_image_back : 'public/uploads/admin/placeholder.png') }}">
                                                        <input class="variant-image" style="display:none" onchange="productImageBack(this);" type="file" name="product_image_back" id="product_image_back" accept="image/*">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4"></div>
                                        <div class="col-3">
                                            <div class="form-group">
                                                <label>Product Code *</label>
                                                <input value="{{ $product->product_code }}" class="form-control"
                                                    type="text" name="product_code" id="product_code" value=""
                                                    placeholder="Product Code" required>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="form-group">
                                                <label>Old Price</label>
                                                <input value="{{ $product->old_price }}" type="number" id="old_price"
                                                    name="old_price" class="form-control" style="text-align:right"
                                                    min='0' placeholder="0.00">
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="form-group">
                                                <label>New Price*</label>
                                                <input value="{{ $product->new_price }}" required type="number"
                                                    id="new_price" name="new_price" class="form-control"
                                                    style="text-align:right" min='0' placeholder="0.00" required>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="form-group">
                                                <label>Weight(gm)*</label>
                                                <input value="{{ $product->product_weight }}" required type="number"
                                                    id="product_weight" name="product_weight" class="form-control"
                                                    style="text-align:right" min='0' placeholder="0.00" required>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label>Sub Category *</label>
                                                <select name="sub_cat_id" id="sub_cat_id" class="form-control" required>
                                                    <option value="">Select</option>
                                                    @foreach ($subCategories as $subCat)
                                                        <option value="{{ $subCat->id }}" {{ $subCat->id==$product->sub_cat_id? 'selected' :null }}>{{ $subCat->title }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label>Sub Child</label>
                                                <select class="form-control" name="sub_child_id" id="sub_child_id">
                                                    <option value="0">Select Sub-Child</option>
                                                    @if(count($subChild))
                                                        @foreach ($subChild as $item)
                                                            <option value="{{ $item->id }}" {{ $item->id==$product->sub_child_id? 'selected' :null }}>{{ $item->title }}</option>
                                                        @endforeach
                                                    @endif
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-5">
                                            <div class="form-group">
                                                <label>Color*</label>
                                                <select class="select2" name="colors" id="colors"
                                                    multiple="multiple" data-placeholder="Select Colors"
                                                    style="width: 100%;">
                                                    @foreach ($colors as $color)
                                                        <option value="{{ $color->id }}">{{ $color->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-5">
                                            <div class="form-group">
                                                <label>Sizes*</label>
                                                <div class="select2-purple">
                                                    <select class="select2" name="sizes" id="sizes"
                                                        multiple="multiple" data-placeholder="Select Sizes"
                                                        data-dropdown-css-class="select2-purple" style="width: 100%;">
                                                        @foreach ($sizes as $size)
                                                            <option value="{{ $size->id }}">{{ $size->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-2">
                                            <button type="button" class="btn btn-primary" style="margin-top: 32px" id="generate">Generate</button>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <table class="table table-hover table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th width="10%">S/N</th>
                                                            <th width="15%">Color</th>
                                                            <th width="15%">Size</th>
                                                            <th width="15%">Stock</th>
                                                            <th width="35%">Image (499 X 597)</th>
                                                            <th width="10%">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody class="item-table">
                                                        @foreach ($productDetails as $item)
                                                            <tr>
                                                                <td align="center" valign="middle" class="serial"></td>
                                                                <td align="left" valign="middle">{{ $item->color->name }}</td>
                                                                <td align="left" valign="middle">{{ $item->size->name }} </td>
                                                                <td><input value="{{ $item->stock }}" type="number"
                                                                        name="stock[]"
                                                                        class="form-control form-control-sm"
                                                                        style="text-align:right" min="0"
                                                                        placeholder="0.00" required></td>
                                                                <td align="left" valign="middle">
                                                                    <label class="col-3">
                                                                        <img id="oldImage-{{ $item->id }}" style="width:100px!imporatant; height:100px!imporatant;"
                                                                            class="img-thumbnail"
                                                                            src="{{ asset($item->image ? 'public/uploads/product/' . $item->image : 'public/uploads/admin/placeholder.png') }}">
                                                                        <input id="oldVariantImage-{{ $item->id }}" hidden onchange="oldVariantImage({{ $item->id }})" class="form-control form-control-sm oldVariantImage" type="file" name="image[]">
                                                                    </label>
                                                                </td>
                                                                <input type="hidden" name="color_id[]"
                                                                    value="{{ $item->color_id }}" class="color_id">
                                                                <input type="hidden" name="size_id[]"
                                                                    value="{{ $item->size_id }}" class="size_id">
                                                                <td align="center" valign="middle">
                                                                    <button class="btn btn-danger btn-sm item-delete"><i
                                                                            class="fa fa-trash"
                                                                            style="cursor:pointer"></i></button>
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label>Trending Type</label>
                                                        <select class="form-control" name="trending_type" id="trending_type">
                                                            <option {{ $product->trending_type==0? 'selected':'' }} value="0" selected>No</option>
                                                            <option {{ $product->trending_type==1? 'selected':'' }} value="1">Yes</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label>Best Seller</label>
                                                        <select class="form-control" name="best_seller" id="best_seller">
                                                            <option {{ $product->best_seller==0? 'selected':'' }} value="0" selected>No</option>
                                                            <option {{ $product->best_seller==1? 'selected':'' }} value="1">Yes</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label>New Arrivals</label>
                                                        <select class="form-control" name="new_arrival" id="new_arrival">
                                                            <option {{ $product->new_arrival==0? 'selected':'' }} value="0" selected>No</option>
                                                            <option {{ $product->new_arrival==1? 'selected':'' }} value="1">Yes</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label>Home Feature</label>
                                                        <select class="form-control" name="home_feature" id="home_feature">
                                                            <option {{ $product->home_feature==0? 'selected':'' }} value="0">No</option>
                                                            <option {{ $product->home_feature==1? 'selected':'' }} value="1">Yes</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label>Status</label>
                                                        <select class="form-control" name="status" id="status">
                                                            <option value="1" {{ $product->status==1? 'selected':'' }}>Active</option>
                                                            <option value="0" {{ $product->status==0? 'selected':'' }}>Inactive</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label>Meta Title</label>
                                                <input value="{{ $product->meta_title }}" class="form-control"
                                                    type="text" name="meta_title" id="meta_title"
                                                    placeholder="Meta Title">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label>Meta Keywords</label>
                                                <input value="{{ $product->meta_keywords }}" class="form-control"
                                                    type="text" name="meta_keywords" id="meta_keywords"
                                                    placeholder="Meta Keywords">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>Meta Description</label>
                                                <textarea id="meta_description" name="meta_description">{{ $product->meta_description }}</textarea>
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
        function productImageBack(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#product_image_back_view').attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    $(document).ready(function() {

        $('#sub_cat_id').change(function() {
            $.ajax({
                url: "{{ url('admin/catalogue/load-sub-child') }}/" + $(this).val(),
                method: "GET",
                dataType: "json",
                success: function(data) {
                    var output = '<option value="0">Select Sub-Child</option>';
                    $.each(data, function(key, value) {
                        output += '<option value="' + value.id + '">' + value
                            .title + '</option>';
                    });
                    $('#sub_child_id').html(output);
                }
            });
        });

        $('#generate').click(function() {

            let appendedProduct = [];
            let old_color_id = [];
            let old_size_id = [];
            $('.color_id').each(function(index,item){
                old_color_id[index] = item.value
            });
            $('.size_id').each(function(index,item){
                old_size_id[index] = item.value
            });

            var duplicate = 0;
            $('#colors :selected').each(function() {
                let coloID = $(this).val();
                $('#sizes :selected').each(function() {
                    let sizeID = $(this).val();
                    for (let i = 0; i < old_color_id.length; i++) {
                        if(old_color_id[i] === coloID &&  old_size_id[i] === sizeID){
                            duplicate +=1;
                        }
                    }
                        
                });
            });

            if(duplicate) return alert("Duplicate Combination Found!");


            let product_details = '';
            let id = 0;
            $('#colors :selected').each(function() {
                let coloName = $(this).text();
                let coloID = $(this).val();

                $('#sizes :selected').each(function() {
                    let sizeName = $(this).text();
                    let sizeID = $(this).val();
                    product_details += '<tr>';
                    product_details +=
                        '<td align="center" valign="middle" class="serial"></td>';
                    product_details += '<td align="left" valign="middle">' + coloName +
                        '</td>';
                    product_details += '<td align="left" valign="middle">' + sizeName +
                        '</td>';
                    product_details +=
                        '<td><input type="number" name="stock[]" class="form-control form-control-sm" style="text-align:right" min="0" placeholder="0.00" required></td>';

                    product_details +=
                        '<td align="left" valign="middle"><label class="col-3">';
                    product_details += '<img id="image-' + id +
                        '" style="width:100px!imporatant; height:100px!imporatant;" class="img-thumbnail" src="{{ asset('public/uploads/admin/placeholder.png') }}">'
                    product_details += '<input hidden onchange="variantImage(' + id +
                        ');" class="form-control form-control-sm variantImage" type="file" name="image[]" required>';
                    product_details += '</label></td>';

                    product_details +=
                        '<input type="hidden" name="color_id[]" value="' + coloID +
                        '">';
                    product_details += '<input type="hidden" name="size_id[]" value="' +
                        sizeID + '">';
                    product_details += '<td align="center" valign="middle">';
                    product_details +=
                        '<button class="btn btn-danger btn-sm item-delete"><i class="fa fa-trash" style="cursor:pointer"></i></button></td>';
                    product_details += '</tr>';

                    id++;
                });
            });


            $('.item-table').append(product_details);
            serialMaintain();
        });
        const serialMaintain = () => {
            var i = 1;
            $('.serial').each(function(key, element) {
                $(element).html(i);
                i++;
            });
        }
        
        serialMaintain();
        
        $('.item-table').on('click', '.item-delete', function() {
            $(this).parents('tr').remove();
            serialMaintain();
        });


        $('#description').summernote({
            placeholder: 'Product Description',
            tabsize: 2,
            height: 100
        });
        $('#meta_description').summernote({
            placeholder: 'Meta Description',
            tabsize: 2,
            height: 100
        });


    });

    function productImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#product_image_view').attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    function variantImage(id) {
        let input = document.getElementsByClassName("variantImage")[id];
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('#image-' + id).attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    function oldVariantImage(id){
        let input = document.getElementById('oldVariantImage-'+id);
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#oldImage-' + id).attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
@endsection
