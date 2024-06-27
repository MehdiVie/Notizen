<?php

use \App\Http\Controllers\AuthController;
use \App\Http\Controllers\LiveSearchController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use \App\Models\Notizbuch;
use \App\Http\Middleware\CheckPermission;
use \App\Http\Requests\NotizRequest;
use Illuminate\Routing\RouteFileRegistrar;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Collection;

/**
 * The function `checkValidUser` in PHP checks if the authenticated user has access to a specific user
 * ID.
 * 
 * @param int user_id The `checkValidUser` function takes an integer parameter `` which
 * represents the ID of the user being checked for validity. This function is used to determine if the
 * current authenticated user has access to the specified user's Notes based on the provided user
 * ID.
 * 
 * @return The function `checkValidUser` will return `true` if the conditions are met, otherwise it
 * will return `false` or output 'No Access.' and exit the script.
 */
function checkValidUser (int $user_id)  {

    if ((Auth::id() != $user_id) and ($user_id!=0)) {
      echo 'No Access.';
      exit;
      //return ('No Access.');
    }

    if (!Auth::id()) {
      return false;
    }

    return true;
  
}


Route::get('/',function(){
    return redirect()->route('notizbuch.index');
});

Route::get('/notizbuch', function ()  {
   
    if (!checkValidUser(0)) {
      return view('auth.create');
    }

    $query=DB::table('notizbuches')->whereRaw('user_id=?',Auth::id())
    ->orderBy('updated_at', 'DESC')->paginate(5,['*'], 'page');
 

    return view('index',[
        'notizbuch' => $query 
    ]);

})->name('notizbuch.index');

Route::get('/notiz/create', function() {

    if (!checkValidUser(0)) {
      return view('auth.create');
    }

    return view("create");
  });


Route::get('/notiz/{notiz}', function(Notizbuch $notiz) {

    checkValidUser($notiz->user_id);

    return view("show", [
      'notiz'=>$notiz
    ]);
})->name('notiz.show');


Route::get('/notiz/{notiz}/edit', function(Notizbuch $notiz) {

    checkValidUser($notiz->user_id);

    return view("edit", [
        'notiz'=>$notiz
    ]);
})->name('notiz.edit');


/* This specific block of code defines a POST route at '/notiz' in the application. When a POST request
is made to this route, the function provided as the second argument will be executed. Here's a
breakdown of what the function does: */
Route::post('/notiz', function(NotizRequest $request){
    $data = $request->validated();
    
    $notiz = new Notizbuch;
    $notiz->user_id=Auth::id();
    $notiz->title=htmlspecialchars($data['title']);
    $notiz->description=htmlspecialchars(str_replace(PHP_EOL, '<br />', $data['description']), ENT_QUOTES);
    $notiz->completed=$request->input('completed');
    if (!$notiz->completed){
      $notiz->completed=false;
    }
    else{
      $notiz->completed=true;
    }
    
    $notiz->save();

    return redirect()->route('notiz.show',['notiz'=>$notiz->id])
                     ->with('success', 'Note created successfully!');
})->name('notiz.store');

/* The `Route::put('/notiz/{notiz}', ...)` block of code defines a route in the application that
handles a PUT request to update a specific note (`Notizbuch`). Here's a breakdown of what the
function inside this route does: */
Route::put('/notiz/{notiz}', function(Notizbuch $notiz,NotizRequest $request){
  $data = $request->validated();
    
  $notiz->title=htmlspecialchars($data['title']);
  $notiz->description=htmlspecialchars(str_replace(PHP_EOL, '<br />', $data['description']), ENT_QUOTES);
  $notiz->completed=$request->input('completed');
  if (!$notiz->completed){
    $notiz->completed=false;
  }
  else{
    $notiz->completed=true;
  }

  $notiz->save();

  return redirect()->route('notiz.show',['notiz'=>$notiz->id])
                   ->with('success', 'Note updated successfully!');
})->name('notiz.update');

Route::delete('/notiz/{notiz}', function(Notizbuch $notiz){

  $notiz->delete();

  return redirect()->route('notizbuch.index')
                   ->with('success', 'Note deleted successfully!');
})->name('notiz.destroy');

Route::get('login', fn() => to_route('auth.create'))->name('login');
Route::resource('auth', AuthController::class)
        ->only(['create','store']);

Route::delete('logout',fn()=> to_route('auth.destroy'))->name('logout');
Route::delete('auth', [AuthController::class,'destroy'])
        ->name('auth.destroy');

/* These two lines of code are defining routes for a live search feature in the application. */
Route::get('/live_search', [LiveSearchController::class, 'index']);
Route::get('/live_search/action', [LiveSearchController::class, 'action'])->name('live_search.action');

Route::fallback(function () {
  return 'Still got somewhere!';
});

        
        
        

