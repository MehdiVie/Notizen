@extends('layouts.app')

@section('title', 'Notes List')

@php($i = 0)

@section('content')


<div>

        @forelse ($notizbuch as $key=>$notiz)

            @php($i = $notizbuch->firstItem() + $key)

            <div class="mb-4">
                {{$i}} - <a class="fs-3" href="{{route('notiz.show',['notiz'=>$notiz->id])}}">{{$notiz->title}}</a>
                (updated at: {{$notiz->updated_at}})
            </div>

{{--             @if ($i % $notizbuch->perpage() == 0)
                page : {{$i / $notizbuch->perpage()}}
            @endif

            @if ($notizbuch->total() == $i) 
                page : {{ceil($i / $notizbuch->perpage())}}
            @endif --}}

        @empty
            <div class="text-danger fw-bold">Kein Notiz</div>
        @endforelse  
</div>
<div>
    @if ($notizbuch->count())
    <nav>
        {{$notizbuch->links('pagination::bootstrap-4')}}
    </nav>    
    @endif
</div>



@endsection
