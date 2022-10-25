<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }
    public function login(Request $request)
    {
         $validator = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required',
        ]);
        
        if ($validator->fails()) {

            $data ['status'] = 404;
            $data ['data'] = 'Validation Error.';
            $data ['message'] = $validator->errors()->first();
            return response()->json($data);
        }
        $input = $request->only('email','password');
        if (!auth()->attempt($input)) {
            return response([
                'message' => 'Incorrect Details,Please try again',
            'status'=>401]);
        }else{

        $token = auth()->user()->createToken('web')->accessToken;

        return response(['user' => auth()->user(), 'token' => $token,'status'=>200]);
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
