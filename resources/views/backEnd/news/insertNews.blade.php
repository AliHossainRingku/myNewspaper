@extends('admin_layout')

@section('admin_content')

    <h1>Add News</h1>

    <hr>
        {{ Session::get('msg') }}

    <hr>

    <form class="form-horizontal" action="{{URL::to('/admin/save-news')}}" method="post" enctype="multipart/form-data">
        {{csrf_field()}}
    
    <div class="form-group">
        <label class="control-label col-sm-2" for="headline">News Headline:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="headline" name="headline" placeholder="Enter News Headline" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="subheadline">Sub-headline:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="subheadline" name="subheadline" placeholder="Enter Sub-headline">
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-2" for="newsbody">News Body:</label>
        <div class="col-sm-10">
            <textarea type="text" class="form-control" id="news_body" name="news_body" placeholder="Enter News in Detail" required></textarea>
        </div>
    </div>

     <div class="form-group">
        
        <label class="control-label col-sm-2" for="editor">Editor:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="editor" name="editor" placeholder="Enter Editor Name" required>
        </div>
    </div>

    <!--div class="form-group">
        <label class="control-label col-sm-2" for="source_name"> Source Name:</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="source_name" name="source_name" placeholder="Enter Paper Name" required>
        </div>
        <label class="control-label col-sm-2" for="source_link">	Source Link:</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="source_link" name="source_link" placeholder="Enter Source URL Link" required>
        </div>
    </div -->

    <div class="form-group">
    	<label class="control-label col-sm-2" for="location">Location:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="location" name="location" placeholder="Location" required>
        </div>
        <!--label class="control-label col-sm-2" for="first_published_date"> Published Date:</label>
        <div class="col-sm-4">
            <input type="date" class="form-control" id="first_published_date" name="first_published_date" placeholder="First Published Date" required>
        </div-->
    </div>

    <div class="form-group">
    	<label class="control-label col-sm-2" for="picture">Picture:</label>
        <div class="col-sm-10">
            <input data-preview="#preview" type="file" class="form-control" id="picture" name="picture" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category"> Category:</label>
        <div class="col-sm-10">
            <?php $all_categories = DB::table('categories')
                                ->where('publication_status',1)
                                ->get();
                        ?>
            <select type="text" class="form-control" id="category_id" name="category_id">
                <option>Select Category</option>
            @foreach($all_categories as $category)
                <h6>{{$category->category_id}}</h6>

                <option style="color: red" value="{{ $category->category_id }}">{{ $category->category_name }}</option>
            @endforeach
            </select>
        </div>
    </div>

                


    <div class="form-group">
        <label class="control-label col-sm-2" for="publication_status">Publication Status:</label>
        <div class="col-sm-10">
             <input type="radio" id="publication_status" name="publication_status" value="1"> Published  
             <input type="radio"  id="publication_status2" name="publication_status" value="0" style="margin-left: 20px "> Unpublished
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-success btn-block">Submit</button>
        </div>
    </div>
    </form>

    <!--- Include of Form validation code from Admin Error.blade.php-->

@endsection