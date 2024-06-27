<?php

namespace App\Http\Controllers;

use \App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

/* The `LiveSearchController` class in PHP handles live search functionality by querying a database
table based on user input and returning results in JSON format. */
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
        
      /* The code snippet you provided is querying a database table named 'notizbuches' using Laravel's
      Eloquent ORM. Here's a breakdown of what the query is doing: */
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
