@extends('layouts.admin')




@section('content')

<div class="row">
    <h1>Create Post</h1>



       {!! Form::Open(['method'=>'Post','action'=>'AdminPostsController@store','files'=>true]) !!}


            <div class="form group">
              {!! Form::label('title','Title') !!}

               {!! Form::text('title',null,['class'=>'form-control']) !!}

            </div>

            <div class="form group">
                {!! Form::label('category_id','Category: ') !!}

               {!! Form::select('category_id',array(''=>'Choose Categories')+$categories ,null,['class'=>'form-control']) !!}

                 </div>

    <div class="form group">
        {!! Form::label('file','Upload Photo') !!}

        {!! Form::file('file',null,['class'=>'form-control']) !!}

    </div>

         <div class="form group">
             {!! Form::label('body','Decription') !!}

            {!! Form::textarea('body',null,['class'=>'form-control' ]) !!}

              </div>


            <div class="form-group">

                {!! Form::submit('Create Post',['class'=>'btn btn-primary']) !!}

              </div>

           {!! Form::Close() !!}
    </div>

<div class="row">
    @include('includes.form_error')
</div>
@stop