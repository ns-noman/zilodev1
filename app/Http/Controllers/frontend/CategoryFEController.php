<?php

namespace App\Http\Controllers\frontend;

use App\Models\Product;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\SubChild;
use App\Models\BasicInfo;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CategoryFEController extends Controller
{
    public function categories(Request $request, $slug = null){
        $query = $request->q;
        $products = Product::query();
        $category = Category::query();
        $category = $category->where('slug','like','%'.$slug.'%')->where('status','=',1)->first();
        if($query){
            $products = $products->where('product_title','like','%'.$query.'%');
            $categories = Category::with('products')->where('status','=',1)->get();
            $title = 'All Categories';
            $data = 'categories';
            if($category){
                $products = $products->where('cat_id',$category->id);
                $title = $category->title;
            } 
        }else{
            if($category){
                $products = $products->where('cat_id',$category->id);
                $subcategory = SubCategory::with('products')->where('cat_id','=',$category->id)->where('status','=',1)->get();
                $title = $category->title;
                $data = 'subcategory';
            }
            else{
                $subCategory = SubCategory::where('slug','like','%'.$slug.'%')->where('status','=',1)->first();
                if($subCategory){
                    $products = $products->where('sub_cat_id','=',$subCategory->id);
                    $subchild = SubChild::with('products')->where('sub_cat_id','=',$subCategory->id)->where('status','=',1)->get();
                    $title = $subCategory->title;
                    $data = 'subchild';
                }else{
                    $subChild = SubChild::where('slug','like','%'.$slug.'%')->where('status','=',1)->first();
                    if($subChild){
                        $products = $products->where('sub_child_id','=',$subChild->id);
                        $subchild = SubChild::with('products')->where('sub_cat_id','=',$subChild->sub_cat_id)->where('status','=',1)->get();
                        $title = $subChild->title;
                        $data = 'subchild';
                    }else{
                        $categories = Category::with('products')->where('status','=',1)->get();
                        $title = 'All Categories';
                        $data = 'categories';
                    }
                }
            }
        }

        $sortBy = $request->sortBy;
        $productType = $request->productType;
        $priceRange = $request->priceRange;

        if($sortBy){
            if($sortBy==1){
                $orderBy = ['product_title','asc'];
            }
            if($sortBy==2){
                $orderBy = ['product_title','desc'];
            }
            if($sortBy==3){
                $orderBy = ['new_price','asc'];
            }
            if($sortBy==4){
                $orderBy = ['new_price','desc'];
            }
            $formData['sortBy'] = $sortBy;
        }else{
            $orderBy = ['id','desc'];
            $formData['sortBy'] = 0;
        }

        if($productType){
            if($productType==1){
                $products = $products->where('new_arrival','=',1);
            }
            if($productType==2){
                $products = $products->where('best_seller','=',1);
            }
            if($productType==3){
                $products = $products->where('trending_type','=',1);
            }
            $formData['productType'] = $productType;
        }else{
            $formData['productType'] = '';
        }
        if($priceRange){
            $priceRange = explode('-',$priceRange);
            $products = $products->whereBetween('new_price',$priceRange);
            
            $formData['price_from'] = $priceRange[0];
            $formData['price_to'] = $priceRange[1];
        }else{
            $formData['price_from'] = 0;
            $formData['price_to'] = 500;
        }
        
        $products = $products->with('avgrating')->where('status','=',1)->orderBy($orderBy[0],$orderBy[1])->paginate(20);

        $new_products = Product::with('avgrating')->where('new_arrival','=',1)->orderBy('id', 'desc')->limit(12)->get();

        $sortBy = $request->sortBy;
        $productType = $request->productType;
        $priceRange = $request->priceRange;

        $formData['title'] = $title;
        $basicInfo = BasicInfo::first();
        return view('frontend.categories',compact('products','new_products','formData','basicInfo',$data));
    }
}
