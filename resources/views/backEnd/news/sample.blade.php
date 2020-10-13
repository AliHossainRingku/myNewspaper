@extends('admin_layout')

@section('admin_content')
<form class="form-horizontal" action="{{URL::to('/admin/save-sample')}}" method="post" cnctype="multipart/form-data">
        {{csrf_field()}}

	<input type="file" name="image">
	<input type="submit">
</form>
@endsection