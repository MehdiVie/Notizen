<?php

namespace App\Http\Controllers;

use \App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use DB;

class LiveSearchController extends Controller
{
    function index()
    {
      if (!checkValidUser(0)) {
        return view('auth.create');
      }
     return view('live_search');
    }

    function action(Request $request)
    {
     if($request->ajax())
     {
      $output = '';
      $total_row =0;
      $query = $request->get('query');
      
      if($query != '')
      {
        
        $data = DB::table('notizbuches')
        ->where('user_id', auth()->user()->id)
        ->where(function($q) use($query) {
          $q->where('title', 'like', '%'.$query.'%')
            ->orWhere('description', 'like', '%'.$query.'%');
        })
        ->get();
        $total_row = $data->count();
      }
      /*else
      {
       $data = DB::table('notizbuches')
         ->orderBy('id', 'desc')
         ->get();
      }*/
      
      if($total_row > 0)
      {
       foreach($data as $row)
       {
        $output .= '
        <tr>
         <td><a  href="/notiz/'.$row->id.'" target="_self">'.$row->title.'</a></td>
        </tr>
        ';
       }
      }
      elseif ($query != '')
      {
       $output = '
       <tr>
        <td align="center" colspan="5">No Data Found</td>
       </tr>
       ';
      }
      $data = array(
       'table_data'  => $output,
       'total_data'  => $total_row
      );

      echo json_encode($data);
     }
    }
}
