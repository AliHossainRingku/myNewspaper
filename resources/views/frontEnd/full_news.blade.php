@extends('layout')

@section('content')
			<div class="content4">
				<div class="containers">
						<br><br>
						@foreach($newsById as $news)
							<h3> {{$news->headline}} </h3>
							<h6 style="color: gray">{{$news->editor}}, {{ $news->location }} {{ $news->created_at }} </h6><br>
							<div class="full_news_img"><img src="{{asset($news->picture)}}"/></div><br><br>

							<p> 
								<?php 
									$description=$news->news_body;
									$description = preg_replace("/\r\n|\r|\n/",'<br/>',$description);
									echo $description; 
								?> 
							</p>
							<div class="feature-news-cover-foot"><p> {{$news->location}} </p></div>


						@endforeach


				</div><!--END MAINCONTENT-->	
				
			</div>
			
			

		<div class="content2">
			<div class="containers">
				<div class="add2">
					<p> আরো সংবাদ দেখুন </p>
				</div>
			</div>
			<div class="containers">
					<div class="main-content4">
						@foreach($more_news4 as $news)
						<div class="main-content-4-1">
							
							<div class="feature-news-cover">
								<a href="{{url('article/full_news/'.$news->news_id)}}">
								<img src="{{ asset($news->picture) }}">
								<div class="feature-news-cover-body1"> {{$news->headline}}  </div>
								<div class="feature-news-cover-body2"> {{$news->subheadline}}</div>
								<div class="feature-news-cover-foot"><p> {{$news->location}} </p></div>
								</a>
							</div>

						</div>
						@endforeach
					</div><!--END MAINCONTENT-->

					<div class="containers">
						<div class="add3">
							<img src="{{asset('public/frontEnd/images/ad10.png') }}">
						</div>
					</div>
				</div>
		
@endsection