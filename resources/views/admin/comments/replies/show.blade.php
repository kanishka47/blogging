@extends('layouts.admin')

@section('content')



    @if(count($replies)>0)


        <table class="table">

            <h1>replies</h1>
            <thead>
            <tr>
                <th>Id</th>
                <th>Author</th>
                <th>Email</th>
                <th>reply</th>
            </tr>
            </thead>
            <tbody>

            @foreach($replies as  $reply)
                <tr>
                    <td>{{$reply->id}}</td>
                    <td>{{$reply->author}}</td>
                    <td>{{$reply->email}}</td>
                    <td>{{$reply->body}}</td>
                    <td><a href="{{route('home.post',$reply->comment->post->slug)}}">View Post</a></td>


                    <td>

                        @if($reply->is_active == 1)


                            {!! Form::Open(['method'=>'PATCH','action'=>['CommentRepliesController@update', $reply->id]]) !!}

                            <input type="hidden" name="is_active" value="0">

                            <div class="form-group">

                                {!! Form::submit('Un-approve',['class'=>'btn btn-success']) !!}

                            </div>

                            {!! Form::Close() !!}


                        @else

                            {!! Form::Open(['method'=>'PATCH','action'=>['CommentRepliesController@update', $reply->id]]) !!}

                            <input type="hidden" name="is_active" value="1">

                            <div class="form-group">

                                {!! Form::submit('Approve',['class'=>'btn btn-info']) !!}

                            </div>

                            {!! Form::Close() !!}



                        @endif

                    </td>


                    <td>

                        {!! Form::Open(['method'=>'DELETE','action'=>['CommentRepliesController@destroy', $reply->id]]) !!}



                        <div class="form-group">

                            {!! Form::submit('Delete',['class'=>'btn btn-danger']) !!}

                        </div>

                        {!! Form::Close() !!}

                    </td>

                </tr>

            @endforeach
            </tbody>
        </table>

    @else

        <h1 class="text-center">No replies</h1>

    @endif

@stop