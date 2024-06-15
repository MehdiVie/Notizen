@extends('layouts.app')

@section('title', 'Notes List')

@php($i = 0)

@section('content')


<div>
        @forelse ($notizbuch as $notiz)

            @php($i = $i + 1)

            <div class="mb-4">
                {{$i}} - <a class="fs-3" href="{{route('notiz.show',['notiz'=>$notiz->id])}}">{{$notiz->title}}</a>
                (updated at: {{$notiz->updated_at}})
            </div>
        @empty
            <div class="text-danger fw-bold">Kein Notiz</div>
        @endforelse  
</div>



@endsection
