<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\Models\Applications;

class ApplicationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = \DB::table('applications')
        ->join('jobs','jobs.id','applications.job_id')
        ->select('jobs.id as job_ids','jobs.title','applications.id as apply_id','applications.fullname','applications.phone','applications.email','applications.cv','applications.status','applications.created_at','applications.updated_at')
        ->orderBy('applications.created_at','DESC')
        ->limit(10)
        ->get();
        return response()->json(['Message'=>"List of application",'data'=>$data,'status'=>200],200);
        //
    }
 public function status(Request $request){
    $id = $request->id;
    $status= $request->status;
    $update = \DB::table('applications')->where('id',$id)->update([
        'status' => $status,
    ]);
    $statusD=($status == 1?"Passed":$status==2)?"Dropped":"Pending";
    return response()->json(['Message'=>$statusD,'status'=>200]);

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
        $validator = Validator::make($request->all(), [
            'fullname' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'cv' => 'required|mimes:pdf|max:2040',
            'job_id' => 'required|integer',
            
        ]);
        
        if ($validator->fails()) {

            $data ['status'] = 404;
            $data ['data'] = 'Validation Error.';
            $data ['message'] = $validator->errors()->first();
            return response()->json($data);
        }
        $apply = new Applications();

        if ($request->file('cv')) {
            $directory = public_path() . '/cv';
            if (!is_dir($directory)) {
                mkdir($directory);
                chmod($directory, 0777);
            }
            
            $docName = $request->fullname . '_cv.' . $request->file('cv')->getClientOriginalExtension();
            $request->file('cv')->move($directory, $docName);
            $apply->fullname = $request->fullname;
            $apply->phone = $request->phone;
            $apply->email = $request->email;
            $apply->job_id = $request->job_id;
            $apply->cv = 'cv/' . $docName;
            $apply->save();
            return response()->json(['Message' =>'Application sent well','status'=>200]);
        }else{
            return response()->json(['Message' =>'Application sent well','status'=>401]);
        }
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
