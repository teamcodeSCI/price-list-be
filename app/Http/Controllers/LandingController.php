<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Landing;
use Exception;
use Illuminate\Http\Request;

class LandingController extends Controller
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
            if ($brandId === null) {
                $landing = Landing::all();
                return response()->json([
                    'status' => true,
                    'message' => $landing
                ], 200);
            }
            $landing = Landing::where('brand_id', '=', $brandId)->get();
            return response()->json([
                'status' => true,
                'message' => $landing
            ], 200);
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
            $brand = Brand::find($input['brand_id']);
            if (!$brand) {
                return response()->json([
                    'status' => false,
                    'message' => 'Brand not found'
                ], 400);
            }
            $category = Category::find($input['category_id']);
            if (!$category) {
                return response()->json([
                    'status' => false,
                    'message' => 'Category not found'
                ], 400);
            }
            $landing = Landing::where('url', '=', $input['url'])->get();
            if (count($landing) !== 0) {
                return response()->json([
                    'status' => false,
                    'message' => 'Landing already exist'
                ], 400);
            }
            $landing = Landing::create($input);
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $landing
            ], 200);
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
            $landing = Landing::find($id);
            if (!$landing) {
                return response()->json([
                    'status' => false,
                    'message' => 'Landing not found'
                ], 400);
            }
            $brand = Brand::find($input['brand_id']);
            if (!$brand) {
                return response()->json([
                    'status' => false,
                    'message' => 'Brand not found'
                ], 400);
            }
            $category = Category::find($input['category_id']);
            if (!$category) {
                return response()->json([
                    'status' => false,
                    'message' => 'Category not found'
                ], 400);
            }
            $landing->update($input);
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $landing
            ], 200);
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
        //
        try {
            $landing = Landing::find($id);
            if (!$landing) {
                return response()->json([
                    'status' => false,
                    'message' => 'Brand not found'
                ], 400);
            }
            $landing->delete();
            return response()->json([
                'status' => true,
                'message' => 'Success'
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => $e
            ], 500);
        }
    }
}
