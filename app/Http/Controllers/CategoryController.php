<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use Exception;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        try {
            $brandId = $request->query('brand_id');
            $categories = Category::all();
            if ($brandId) {
                $categories = Category::where('brand_id', '=', $brandId)->get();
            }
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $categories
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => $e
            ], 500);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        try {
            $input = $request->all();
            $brand = Brand::where('id', '=', $input['brand_id'])->get();
            if (count($brand) === 0) {
                return response()->json([
                    'status' => false,
                    'message' => 'Brand not found',
                ], 400);
            }
            $category = Category::where('brand_id', '=', $input['brand_id'])
                ->where('category', '=', $input['category'])
                ->get();
            if (count($category) !== 0) {
                return response()->json([
                    'status' => false,
                    'message' => 'Category already exists',
                ], 400);
            }
            $category = Category::create($input);
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $category
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => $e
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        try {
            $input = $request->all();
            $category = Category::find($id);
            if (!$category) {
                return response()->json([
                    'status' => false,
                    'message' => 'Category not found',
                ], 400);
            }
            $brand = Brand::where('id', '=', $input['brand_id'])->get();
            if (count($brand) === 0) {
                return response()->json([
                    'status' => false,
                    'message' => 'Brand not found',
                ], 400);
            }
            $category->update($input);
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $category
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => $e
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $category = Category::find($id);
            if ($category === null) {
                return response()->json([
                    'status' => false,
                    'message' => 'Category not found'
                ], 400);
            }
            $category->delete();
            return response()->json([
                'status' => true,
                'message' => 'Success',
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => $e
            ], 500);
        }
    }
}
