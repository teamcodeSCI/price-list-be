<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Landing;
use App\Models\Price;
use Exception;
use Illuminate\Http\Request;

class PriceController extends Controller
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
            $landingId = $request->query('landing_id');
            if ($landingId === null) {
                $price = Price::all();
                return response()->json([
                    'status' => true,
                    'messsage' => 'Success',
                    'data' => $price
                ], 200);
            }
            $price = Price::where('landing_id', '=', $landingId)->get();
            return response()->json([
                'status' => true,
                'messsage' => 'Success',
                'data' => $price
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'messsage' => $e
            ], 500);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try {
            $landingId = $request->query('landing_id');
            if ($landingId === null) {
                $price = Price::all();
                return response()->json([
                    'status' => true,
                    'messsage' => 'Success',
                    'data' => $price
                ], 200);
            }
            $price = Price::where('landing_id', '=', $landingId)->orderBy('created_at', 'desc')->get();
            return response()->json([
                'status' => true,
                'messsage' => 'Success',
                'data' => $price
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'messsage' => $e
            ], 500);
        }
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
            $landing = Landing::find($input['landing_id']);
            if (!$landing) {
                return response()->json([
                    'status' => true,
                    'messsage' => 'Landing not found',
                ], 400);
            }
            $price = Price::create($input);
            return response()->json([
                'status' => true,
                'messsage' => 'Success',
                'data' => $price
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'messsage' => $e
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
            $price = Price::find($id);
            if (!$price) {
                return response()->json([
                    'status' => false,
                    'messsage' => 'Price not found'
                ], 400);
            }
            $landing = Landing::find($input['landing_id']);
            if (!$landing) {
                return response()->json([
                    'status' => false,
                    'messsage' => 'Landing not found'
                ], 400);
            }
            $price->update($input);
            return response()->json([
                'status' => true,
                'messsage' => 'Success',
                'data' => $price
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'messsage' => $e
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

            $price = Landing::find($id);
            if (!$price) {
                return response()->json([
                    'status' => true,
                    'messsage' => 'Landing not found'
                ], 400);
            }
            $price->delete();
            return response()->json([
                'status' => true,
                'messsage' => 'Success',
                'data' => $price
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'messsage' => $e
            ], 500);
        }
    }
}
