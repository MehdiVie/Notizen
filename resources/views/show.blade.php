@extends('layouts.app')

@section('title', $notiz->title)

@section('content')

    <!-- The line `<h3>{\!! str_replace('/<br.*>/U', '\r\n', htmlspecialchars_decode(->description))
    !!}</h3>` is attempting to replace any HTML `<br>` tags in the `->description` with a
    newline character `\r\n`. However, the usage of `str_replace` seems incorrect as it is treating
    the pattern `/<br.*>/U` as a string literal instead of a regular expression pattern. -->
    <h3>{!! str_replace('/<br.*>/U', '\r\n', htmlspecialchars_decode($notiz->description)) !!}</h3>
    <br>
    @if ($notiz->completed)
        <h5>completed at: {{$notiz->updated_at}}</h5>
    @endif
    <h5>created at: {{$notiz->created_at}}</h5>
    <h5>updated at: {{$notiz->updated_at}}</h5>
    <br>
    <div class="d-flex ">

    
    <div class="nav-item btn btn-warning mx-3 mt-3" style="width: 100px;  height:50px;">
        <a class="nav-link text-light fw-bold " style="margin-top: 8px;"
        href="/notiz/{{$notiz->id}}/edit">
        Edit
        </a>
    </div>
    
    
    <div class="m-3">
    <form method="POST" action="{{route('notiz.destroy',['notiz'=>$notiz->id])}}">
        @csrf
        @method('DELETE')
        <button onclick="return confirm('Are you sure?')" class="btn btn-danger  fw-bold" style="width: 100px; height:50px;" type="Submit">Delete</button>
    </form>
    </div>
    
    </div>
@endsection