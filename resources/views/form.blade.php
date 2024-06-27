@extends('layouts.app')

@section('title', isset($notiz)? "Edit Notiz" : "Add Notiz")

@section('content')

<form method="POST" 
action="{{ isset($notiz) ? route('notiz.update', ['notiz' => $notiz->id]) : route('notiz.store') }}">

    @csrf
    @isset($notiz)
        @method('PUT')
    @endisset
    <!-- Title input -->
    <div data-mdb-input-init class="form-outline mb-4">
      <label class="form-label" for="form4Example2">Title</label>
      <input type="text" name="title" id="title" class="form-control" value="{{$notiz->title ?? old('title')}}" 
      style="font-family:Helvetica Neue, Helvetica, Arial, and sans-serif; font-size: 20px;"  />
      @error('title')
        <p class="text-danger">{{$message}}</p>
      @enderror
    </div>
    <!-- Description input -->
    <div data-mdb-input-init class="form-outline mb-4">
      <label class="form-label" for="description">Description</label>
      <textarea class="form-control" name="description" id="description" rows="12" style="white-space: pre-wrap; font-family:Helvetica Neue, Helvetica, Arial, and sans-serif; font-size: 20px; resize:none; ">{{$notiz->description ?? old('description')}}</textarea>
      @error('description')
        <p class="text-danger">{{$message}}</p>
      @enderror
    </div>
  
    <!-- Checkbox -->
    <div data-mdb-input-init class="form-outline mb-4">
      <input class="form-check-input me-2" type="checkbox"  name="completed" 
      id="completed"  />
      <label class="form-check-label" for="form4Example4">
        Completed
      </label>
    </div>
  
    <!-- Submit button -->
    <button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn 
    
    btn-primary  
    
    mb-4"
    style="width: 100px; height:50px;"
    >
      @isset($notiz)
        Update Note
      @else
        Add Note
      @endisset
    </button>
  </form>

@endsection