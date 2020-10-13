@extends('admin_layout')

@section('admin_content')

    <h1>Edit News</h1>

    <hr>
        {{ Session::get('msg') }}

    <hr>
	@foreach($edit_news as $news)
    <form class="form-horizontal" action="{{URL::to('/admin/update-news')}}" method="post">
        {{csrf_field()}}

        
    <div class="form-group">
        <label class="control-label col-sm-2" for="headline">News Headline:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="headline" name="headline" value="{{$news->headline}}" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="subheadline">Sub-headline:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="subheadline" name="subheadline" value="{{$news->subheadline}}" required>
        </div>
    </div>

    <div class="form-group">
    	
        <label class="control-label col-sm-2" for="editor">Editor:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="editor" name="editor" value="{{$news->editor}}" required>
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-2" for="newsbody">News Body:</label>
        <div class="col-sm-10">
            <textarea type="text" class="form-control" id="news_body" name="news_body" required>{{$news->news_body}}</textarea>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="source_name"> Source Name:</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="source_name" name="source_name" value="{{$news->source_name}}" required>
        </div>
        <label class="control-label col-sm-2" for="source_link">	Source Link:</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="source_link" name="source_link" value="{{$news->source_link}}" required>
        </div>
    </div>

    <div class="form-group">
    	<label class="control-label col-sm-2" for="location">Location:</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="location" name="location" value="{{$news->location}}" required>
        </div>
    </div>

    <div class="form-group">
    	<label class="control-label col-sm-2" for="picture">Picture:</label>
        <div class="col-sm-10">
            <input type="file" class="form-control" id="picture" name="picture" value="{{$news->picture}}" required>
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
            <select type="text" class="form-control" id="publication_status" name="publication_status">
                <option>Select Publication Status</option>
                <option value="1">Published</option>
                <option value="0">Unpublished</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-success btn-block">Submit</button>
        </div>
    </div>
    <input type="hidden" name="news_id" value="{{$news->news_id}}">
    </form>
    @endforeach

    <!--- Include of Form validation code from Admin Error.blade.php-->

@endsection