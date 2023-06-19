<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Extension;
use App\Models\Landing;
use Exception;
use Illuminate\Http\Request;

class ExtensionController extends Controller
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
                $extension = Extension::all();
                return response()->json([
                    'status' => true,
                    'message' => 'success',
                    'data' => $extension
                ], 200);
            }
            $landing = Landing::find($landingId);
            if (!$landing) {
                return response()->json([
                    'status' => false,
                    'message' => 'Landing not found',
                ], 400);
            }
            $extension = Extension::query();
            $extension = $extension->where('landing_id', '=', $landingId)->orderBy('created_at', 'desc')->get();
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $extension,
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
        try {
            $input = $request->all();
            $landing = Landing::find(intval($input['landing_id']));
            if (!$landing) {
                return response()->json([
                    'status' => false,
                    'message' => 'landing not found'
                ], 400);
            }
            $extension = Extension::where('start_date', '=', $input['start_date'])->get();
            if (count($extension) !== 0) {
                return response()->json([
                    'status' => false,
                    'message' => 'extension already exist'
                ], 400);
            }
            $extension = Extension::where('end_date', '=', $input['end_date'])->get();
            if (count($extension) !== 0) {
                return response()->json([
                    'status' => false,
                    'message' => 'extension already exist'
                ], 400);
            }
            $extension = Extension::create($input);
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $extension
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
        try {
            $input = $request->all();
            $extension = Extension::find($id);
            if (!$extension) {
                return response()->json([
                    'status' => false,
                    'message' => 'Extension not found'
                ], 400);
            }
            $landing = Landing::find($input['landing_id']);
            if (!$landing) {
                return response()->json([
                    'status' => false,
                    'message' => 'Landing not found'
                ], 400);
            }
            $extension->update($input);
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $extension
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
        try {

            $extension = Extension::find($id);
            if (!$extension) {
                return response()->json([
                    'status' => false,
                    'message' => 'Extension not found'
                ], 400);
            }

            $extension->delete();
            return response()->json([
                'status' => true,
                'message' => 'Success',
                'data' => $extension
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'status' => false,
                'message' => $e,
            ], 500);
        }
    }
}
