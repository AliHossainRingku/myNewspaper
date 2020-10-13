@extends('admin_layout')

@section('admin_content')
    <h1>Manage News</h1>

    {{ Session::get('msg') }}

    <hr>
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>SI</th>
            <th>ID</th>
            <th>Headline</th>
            <th>Newspaper</th>
            <th>Editor</th>
            <th>Location</th>
            <th>Created</th>
            <th>Publication Status</th>
            <th>Picture</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php
        $i = 0;
        ?>
        @foreach($news as $new)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $new->news_id}}</td>
                <td>{{ $new->headline }}</td>
                <td>{{ $new->source_name}}</td>
                <td>{{ $new->editor}}</td>
                <td>{{ $new->location}}</td>
                <td>{{ $new->created_at}}</td>
                <td><?php if($new->publication_status == 1){ ?> <a style="color: green">Published</a><?php } else{ ?> <a style="color: darkred">Unpublished</a><?php } ?></td>
                <td><img src="{{ asset($new->picture)}}" style="height: 70px; width: 100px;"></td>
                <td>
                    <?php if($new->publication_status == 1 ){ ?>
                    <a style="color:red" class="glyphicon glyphicon-remove" href="{{ url('admin/unpublish-news/'.$new->news_id) }}"></a> <?php } else{
                        ?>
                    <a style="color:green" class="glyphicon glyphicon-ok" href="{{ url('admin/publish-news/'.$new->news_id) }}"></a><?php }?>

                    |
                    <a href="{{ url('admin/edit-news/'.$new->news_id) }}">Edit</a> |
                    <a href="{{ url('admin/delete-news/'.$new->news_id) }}" onclick="return confirm('Are you sure to delete it?')">Delete</a></td>
            </tr>
        @endforeach
        
        </tbody>
    </table>


    </div>


@endsection
