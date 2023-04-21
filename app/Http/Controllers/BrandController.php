<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Exception;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        try {
            $brand = Brand::all();
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $brand
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

            $getBrandByCode = Brand::where('code', '=', $input['code'])->get();
            $getBrandByName = Brand::where('name', '=', $input['name'])->get();

            if (count($getBrandByCode) !== 0 || count($getBrandByName) !== 0) {
                return response()->json([
                    'status' => false,
                    'message' => 'Brand code or name already exists',
                ], 400);
            }
            $brand = Brand::create($input);
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $brand
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
            $brand = Brand::find($id);
            if (!$brand) {
                return response()->json([
                    'status' => false,
                    'message' => 'Brand not found',
                ], 400);
            }
            $brand->update($request->all());
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $brand
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
        //
        try {
            $brand = Brand::find($id);
            if ($brand === null) {
                return response()->json([
                    'status' => false,
                    'message' => 'Brand not found'
                ], 400);
            }
            $brand->delete();
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $brand
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => $e
            ], 500);
        }
    }
}
