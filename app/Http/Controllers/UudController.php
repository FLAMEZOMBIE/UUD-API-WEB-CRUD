<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use App\Http\Controllers\Controller;
use App\Models\Uud;
use Exception;
use GuzzleHttp\Promise\Create;
use Illuminate\Support\Facades\Validator;

class UudController extends Controller
{
    //
    public function index(){
        $uud = Uud::all(); 
 
        return response()->json($uud);
  
     }
     public function create(Request $request){
          $request->validate([
             
             'bab' => 'required',
             'pasal' => 'required',
             'ayat' => 'required',
             'isi' => 'required',
 
         ]);
 
         Uud::create($request->all());
         $data = Uud::all()->last();
         return Response::json([   
             'status' => 'created', 
             $data 
         ]); 
     }
     public function update(Request $request, Uud $uud, $id){ 
         $request->validate([
             
             'bab' => 'required',
             'pasal' => 'required',
             'ayat' => 'required',
             'isi' => 'required',
         ]);
         $uud = Uud::find($id);
         $uud->update($request->all());
         $data = Uud::latest('updated_at')->first();
         return Response::json([ 
             'status' => 'Data Edited Successfully',
             $data
 
         ]); 
     }
     public function delete(Uud $uud, $id){
         $uud = Uud::find($id);
         $uud->delete();
         return Response::json([ 
             'status' => 'data deleted'
         ]); 
     }
}
