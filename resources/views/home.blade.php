@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    @if($st==1)

                            <a href="{{route('posts.index')}}">Admin Page</a>

                        @else

                            <a href="{{route('posts.index',6)}}">View Posts</a>

                        @endif

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
