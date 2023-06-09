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
                    'message' => 'success',
                    'data' => $landing
                ], 200);
            }
            $landing = Landing::query();
            $landing = $landing->where('brand_id', '=', $brandId)->orderBy('created_at', 'desc');
            $totalItems = $landing->count();
            if ($request->has('link')) {
                $landing->where('url', 'like', '%' . $request->query('link') . '%');
            }

            $page = $request->query('page', 1);
            $perPage = $request->query('perPage', 10);
            $offset = ($page - 1) * $perPage;

            $landing = $landing->offset($offset)->limit($perPage)->get();

            foreach ($landing as $item) {
                $item['category'] = Category::select('category')->where('id', '=', $item['category_id'])->where('brand_id', '=', $item['brand_id'])->first();
                $item['category'] = $item['category'];
                if ($item['category'] === null) {
                    $item['category'] = ['category' => ''];
                }
            }

            $paginationData = [
                'current_page' => $page,
                'per_page' => $perPage,
                'total' => $totalItems,
                'last_page' => ceil($totalItems / $perPage),
            ];

            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $landing,
                'pagination' => $paginationData,
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
            $brand = Brand::find(intval($input['brand_id']));
            if (!$brand) {
                return response()->json([
                    'status' => false,
                    'message' => 'Brand not found'
                ], 400);
            }
            $category = Category::find(intval($input['category_id']));
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
            $landing['category'] = Category::select('category')->where('id', '=', $landing['category_id'])->first();
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
            $landing['category'] = Category::select('category')->where('id', '=', $landing['category_id'])->first();
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
}
