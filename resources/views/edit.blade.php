@extends('layouts.app')

@section('title', "Edit Note")

@section('content')

<form method="POST" action="{{ route('notiz.update',['notiz'=>$notiz->id]) }}">

    @csrf
    @method('PUT')
    <!-- Title input -->
    <div data-mdb-input-init class="form-outline mb-4">
      <label class="form-label" for="form4Example2">Title</label>
      <input type="text" name="title" id="title" class="form-control" value="{{$notiz->title}}" style="white-space: pre-wrap; font-family:Helvetica Neue, Helvetica, Arial, and sans-serif; font-size: 20px;  " />
      @error('title')
      <p class="text-danger">{{$message}}</p>
      @enderror
    </div>
  
    <!-- Description input -->
    <div data-mdb-input-init class="form-outline mb-4">
        <label class="form-label" for="description">Description</label>
      <textarea class="form-control" name="description" id="description" rows="12" style="white-space: pre-wrap; font-family:Helvetica Neue, Helvetica, Arial, and sans-serif; font-size: 20px; resize:none; ">{{str_replace('<br />', PHP_EOL, htmlspecialchars_decode($notiz->description))}}</textarea>
      @error('description')
      <p class="text-danger">{{$message}}</p>
    @enderror
    </div>
  
    <!-- Checkbox -->
    <div data-mdb-input-init class="form-outline mb-4">
      <input class="form-check-input me-2" type="checkbox"  name="completed" 
      id="completed" 
      @if ($notiz->completed)
        checked
      @endif
      />
      <label class="form-check-label" for="form4Example4">
        Completed
      </label>
    </div>
  
    <!-- Submit button -->
    <button type="submit" data-mdb-button-init data-mdb-ripple-init class="nav-link btn btn-warning  mb-4"
    style="width: 100px; height:50px;"
    >
      Edit
    </button>
  </form>

@endsection