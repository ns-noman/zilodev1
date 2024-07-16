<?php

namespace App\Http\Controllers\admin;

use App\Models\Category;
use App\Models\SubCategory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::orderBy('id', 'desc')->get();
        return view('admin.categories.index', compact('categories'));
    }

    public function create()
    {
        return view('admin.categories.create');
    }

    public function store(Request $request)
    {
        $data = $request->all();

        $data['admin_id'] = Auth::guard('admin')->user()->id;
        $fileName = 'cat-'. time().'.'. $data['image']->getClientOriginalExtension();
        $data['image']->move(public_path('uploads/category'), $fileName);
        $data['image'] = $fileName;
        $data['slug'] = strtolower(str_replace('--', '-', preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', strip_tags($request->title)))));
        $category = Category::create($data);
        return redirect('admin/catalogue/categories')->with('alert',['messageType'=>'success','message'=>'Data Inserted Successfully!']);
    }

    public function edit(Category $category)
    {
        return view('admin.categories.edit', compact('category'));
    }

    public function update(Request $request, Category $category)
    {
        $data = $request->all();

        if(isset($data['image'])){
            $fileName = 'cat-'. time().'.'. $data['image']->getClientOriginalExtension();
            $data['image']->move(public_path('uploads/category'), $fileName);
            $data['image'] = $fileName;

            $imagePath = public_path('uploads/category/'.$category->image);
            if($category->image) unlink($imagePath);
        }

        $data['slug'] = strtolower(str_replace('--', '-', preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', strip_tags($request->title)))));
        
        $category->update($data);

        return redirect('/admin/catalogue/categories')->with('alert',['messageType'=>'warning','message'=>'Data Updated Successfully!']);
    }
    
    public function localization(Request $request, $id, $locale)
    {
        if($request->isMethod('post'))
        {
            Category::find($id)->update([$locale=>$request->all(),]);
            return redirect('admin/catalogue/categories')->with('alert',['messageType'=>'warning','message'=>'Data Updated Successfully!']);
        }else{
            $data = Category::find($id)->translate($locale);
            return view('admin.categories.localization', compact('data','id','locale'));
        }
    }

    public function destroy(Category $category)
    {
        $data = SubCategory::where('cat_id',$category->id)->get();
        if(count($data)) return redirect()->back()->with('alert',['messageType'=>'danger','message'=>'This data can not be delele!']);

        $imagePath = public_path('uploads/category/'.$category->image);
        if($category->image) unlink($imagePath);
        $category->delete();

        return redirect()->back()->with('alert',['messageType'=>'danger','message'=>'Data Deleted Successfully!']);
    }
}
