@extends('layout')

@section('content')
		<div class="content2">
			<div class="containers">
				<div class="add2">
					@foreach($categorized_news as $news)
					@endforeach
					<p> <?php if($news->category_name){ ?> {{$news->category_name}} <?php } ?></p>
				</div>
			</div>
			<div class="containers">
					<div class="main-content4">
						@foreach($categorized_news as $news)
						<div class="main-content-4-1">
							
							<div class="feature-news-cover">
								<a href="{{url('article/full_news/'.$news->news_id)}}">
								<img src="{{ asset($news->picture) }}">
								<div class="feature-news-cover-body1"> {{$news->headline}} </div>
								<div class="feature-news-cover-body2"> {{$news->subheadline}}</div>
								<div class="feature-news-cover-foot"><p> {{$news->location}} </p></div>
								</a>
							</div>

						</div>
						@endforeach

						
					</div><!--END MAINCONTENT-->

						<div class="pagination">
					        <center>{{ $categorized_news->render() }}  </center>
					    </div>

					    <!--nav aria-label="Page navigation example">
					    	<ul class="pagination">
					    		<li class="page-item">
					    			<a class="page-link" href="#">
					    				<span aria-hidden="true">&laquo;</span>
					    				<span class="sr-only">Previous</span>
					    			</a>
					    		</li>
					    		<li class="page-item"><a class="page-link" href="{{url('Category/International/?page=2')}}">1</a></li>
					    		<li class="page-item"><a class="page-link" href="">2</a></li>
					    		<li class="page-item"><a class="page-link" href="">3</a></li>
					    		<li class="page-item"><a class="page-link" href="">4</a></li>
					    		<li class="page-item">
					    			<a class="page-link" href="#">
					    				<span aria-hidden="true">&raquo;</span>
					    				<span class="sr-only">Next</span>
					    			</a>
					    		</li>
					    	</ul>
					    </nav-->

					<div class="containers">
						<div class="add3">
							<img src="{{asset('public/frontEnd/images/ad10.png') }}">
						</div>
					</div>
				</div>
		
@endsection