<?php
  
namespace App\Http\Controllers;
   
use App\Models\Uud;
use Illuminate\Http\Request;
  
class UudWebController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $uuds = Uud::oldest()->paginate(1000);
    
        return view('uud.index',compact('uuds'));
    }
     
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('uud.create');
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'bab' => 'required',
            'pasal' => 'required',
            'ayat' => 'required',
            'isi' => 'required',
        ]);
    
        Uud::create($request->all());
     
        return redirect()->route('uud.index')
                        ->with('success','Data created successfully.');
    }
     
    /**
     * Display the specified resource.
     *
     * @param  \App\Uud  $uud
     * @return \Illuminate\Http\Response
     */
    public function show(Uud $uud)
    {
        return view('uud.show',compact('uud'));
    } 
     
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Uud  $uud
     * @return \Illuminate\Http\Response
     */
    public function edit(Uud $uud)
    {
        return view('uud.edit',compact('uud'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Uud  $uud
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Uud $uud)
    {
        $request->validate([
            'bab' => 'required',
            'pasal' => 'required',
            'ayat' => 'required',
            'isi' => 'required',
        ]);
    
        $uud->update($request->all());
    
        return redirect()->route('uud.index')
                        ->with('success','Data updated successfully');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Uud  $uud
     * @return \Illuminate\Http\Response
     */
    public function destroy(Uud $uud)
    {
        $uud->delete();
    
        return redirect()->route('uud.index')
                        ->with('success','Data deleted successfully');
    }
}