<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\Models\Jobs;

class JobsController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $view = Jobs::where('status',0)->get();
        return response()->json(['Message'=>'List of job available',
    'data'=>$view,'status'=>200
    ],200);
        //
    }
public function viewJobDetail(Request $request){
    $id= $request->job_id;
    $view = \DB::table('jobs')->where('id',$id)->get();
    return response()->json(['Message'=>"Details",'data'=>$view,'status'=>200]);
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
function status (Request $request){
    $id = $request->id;
    $update = \DB::table('jobs')->where('id',$id)->update([
        'status' => 1
    ]);
    return response()->json(['Message'=>"Job status changes",'status'=>200]);
}
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'description' => 'required',
            'content' => 'required',
        ]);
        
        if ($validator->fails()) {

            $data ['status'] = 404;
            $data ['data'] = 'Validation Error.';
            $data ['message'] = $validator->errors()->first();
            return response()->json($data);
        }
        $add= Jobs::create([
            'title'=>$request->title,
            'description'=>$request->description,
            'content'=>$request->content,
        ]);
        return response()->json([
            'Message'=>'new post created successfully',
            'status'=>200,
        ],200);
        //
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
    }
}
