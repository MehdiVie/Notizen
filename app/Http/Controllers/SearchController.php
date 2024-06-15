<?php
namespace App\Http\Controllers;
use App\Models\Employee;
use Illuminate\Http\Request;

class SearchController extends Controller
{   public function index()   
    {      
        return view('search.search');   
    }   
    
    public function search(Request $request)   
    {      
        $notes = Notizbuch::all();      
        if($request->keyword != '')
        {      
            $notes = Notizbuch::where('title','LIKE','%'.$request->keyword.'%')->get();      
        }      
        return response()->json(['notes' => $notes]);    
    }
}