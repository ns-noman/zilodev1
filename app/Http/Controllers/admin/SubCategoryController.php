<?php

namespace App\Http\Controllers\admin;

use App\Models\SubCategory;
use App\Models\Category;
use App\Models\SubChild;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;


class SubCategoryController extends Controller
{
    public function index()
    {
        $subCategories = SubCategory::with('category')->get();
        return view('admin.sub-categories.index', compact('subCategories'));
    }

    public function create()
    {
        $categories = Category::orderBy('title', 'asc')->get();
        return view('admin.sub-categories.create', compact('categories'));
    }

    public function store(Request $request)
    {
        $data = $request->all();
        $data['admin_id'] = Auth::guard('admin')->user()->id;
        $data['slug'] = strtolower(str_replace('--', '-', preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', strip_tags($request->title)))));
        SubCategory::create($data);
        return redirect('admin/catalogue/sub-categories')->with('alert',['messageType'=>'success','message'=>'Data Inserted Successfully!']);
    }

    public function edit(SubCategory $subCategory)
    {
        $categories = Category::orderBy('title', 'asc')->get();
        return view('admin.sub-categories.edit', compact('categories', 'subCategory'));
    }

    public function update(Request $request, SubCategory $subCategory)
    {
        $data = $request->all();
        $data['slug'] = strtolower(str_replace('--', '-', preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', strip_tags($request->title)))));
        $subCategory->update($data);
        return redirect('/admin/catalogue/sub-categories')->with('alert',['messageType'=>'warning','message'=>'Data Updated Successfully!']);
    }
    public function subCatLoad($subCatID)
    {
        $data = SubCategory::where('cat_id','=',$subCatID)->get();
        return response()->json($data, 200);
    }
    
    public function localization(Request $request, $id, $locale)
    {
        if($request->isMethod('post'))
        {
            SubCategory::find($id)->update([$locale=>$request->all(),]);
            return redirect('admin/catalogue/sub-categories')->with('alert',['messageType'=>'warning','message'=>'Data Updated Successfully!']);
        }else{
            $data = SubCategory::find($id)->translate($locale);
            return view('admin.sub-categories.localization', compact('data','id','locale'));
        }
    }

    public function destroy(SubCategory $subCategory)
    {
        $data = SubChild::where('sub_cat_id',$subCategory->id)->get();
        if(count($data)) return redirect()->back()->with('alert',['messageType'=>'danger','message'=>'This data can not be delele!']);
        $subCategory->delete();
        return redirect()->back()->with('alert',['messageType'=>'danger','message'=>'Data Deleted Successfully!']);
    }
}
