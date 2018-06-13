@extends('layouts.admin')

@section('content')



   @if(count($comments)>0)


    <table class="table">

        <h1>Comments</h1>
        <thead>
          <tr>
            <th>Id</th>
            <th>Author</th>
            <th>Email</th>
              <th>Comment</th>
          </tr>
        </thead>
        <tbody>

          @foreach($comments as  $comment)
          <tr>
            <td>{{$comment->id}}</td>
            <td>{{$comment->author}}</td>
            <td>{{$comment->email}}</td>
              <td>{{$comment->body}}</td>
              <td><a href="{{route('home.post',$comment->post->slug)}}">View Post</a></td>
              <td><a href="{{route('replies.show',$comment->id)}}">View Replies</a></td>

              <td>

                  @if($comment->is_active == 1)


                   {!! Form::Open(['method'=>'PATCH','action'=>['PostCommentsController@update', $comment->id]]) !!}

                           <input type="hidden" name="is_active" value="0">

                        <div class="form-group">

                            {!! Form::submit('Un-approve',['class'=>'btn btn-success']) !!}

                          </div>

                       {!! Form::Close() !!}


                  @else

                      {!! Form::Open(['method'=>'PATCH','action'=>['PostCommentsController@update', $comment->id]]) !!}

                      <input type="hidden" name="is_active" value="1">

                      <div class="form-group">

                          {!! Form::submit('Approve',['class'=>'btn btn-info']) !!}

                      </div>

                      {!! Form::Close() !!}



                  @endif

              </td>


              <td>

                  {!! Form::Open(['method'=>'DELETE','action'=>['PostCommentsController@destroy', $comment->id]]) !!}



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

        <h1 class="text-center">No Comments</h1>

    @endif

@stop