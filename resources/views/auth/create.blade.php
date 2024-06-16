@extends('layouts.app')

@section('content')
<!-- This code snippet is a form for user authentication, specifically for logging in. Let's break down
what each part of the form is doing: -->
<form method="POST" action="{{ route('auth.store') }}" >
    @csrf

    <div class="form-group">
      <label for="exampleInputEmail1">Email</label>
      <input type="email" class="form-control" id="email" name="email"  
      placeholder="Enter email" required>
      @error('email')
      <p class="text-danger">{{$message}}</p>
      @enderror
      <div class="invalid-feedback">
        Please enter Email.
      </div>
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control" id="password" name="password" 
      placeholder="Password" required>
      @error('password')
      <p class="text-danger">{{$message}}</p>
      @enderror
      <div class="invalid-feedback">
        Please enter Password.
      </div>
    </div>

    <div class="form-group form-check">
      <input type="checkbox" class="form-check-input" id="remember" name="remember" >
      <label class="form-check-label" for="exampleCheck1">Remember me!</label>
    </div>

    <button type="submit" class="btn btn-primary">Login</button>
    
  </form>
  @endsection