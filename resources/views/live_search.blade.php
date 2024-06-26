@extends('layouts.app')

@section('title', 'Search')

@section('content')

<!-- The provided HTML code snippet is creating a search interface within a web page. Here's a breakdown
of what each part of the code is doing: -->
  <div class="container box">
   
   
    <div class="panel-body">
     <div class="form-group">
      <input type="text" name="search" id="search" class="form-control" 
      placeholder="Search Text from Title or Description" />
     </div>
     <div class="table-responsive">
      <h3 class="text-center">Total Data : <span id="total_records"></span></h3>
      <table class="table table-striped table-bordered">
       <thead>
        <tr>
         <th>Title</th>
         
        </tr>
       </thead>
       <tbody>

       </tbody>
      </table>
     </div>
    </div>    
   </div>
  
@endsection



