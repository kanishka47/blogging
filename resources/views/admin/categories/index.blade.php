@extends('layouts.admin')


@section('content')


    <h1>Categories</h1>


      <div class="col-sm-6">

             {!! Form::Open(['method'=>'Post','action'=>'AdminCategoriesController@store']) !!}


                  <div class="form group">
                    {!! Form::label('name','Name') !!}

                     {!! Form::text('name',null,['class'=>'form-control']) !!}

                  </div>

                  <br>
                  <div class="form-group">

                      {!! Form::submit('Create Category',['class'=>'btn btn-primary']) !!}

                    </div>

                 {!! Form::Close() !!}


      </div>



    <div class="col-sm-6">

        <table class="table">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Created_at</th>
            </tr>
            </thead>
            <tbody>

            @if($categories)

                @foreach($categories as $category)

                    <tr>
                        <td>{{$category->id}}</td>
                        <td><a href="{{route('categories.edit',$category->id)}}">{{$category->name}}</a></td>
                        <td>{{$category->created_at ? $category->created_at->diffForHumans():'no photo'}}</td>
                    </tr>

                @endforeach
            @endif
            </tbody>
        </table>




    </div>
@stop