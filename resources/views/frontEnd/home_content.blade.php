@extends('layout')

@section('content')
			
			<div class="containers">
				<div class="navs-header-date">
						<i class="fa fa-user"></i>  <span></span>Now is:<span style="color: red; font-size: 18px; font-weight: 700 "> <?php date_default_timezone_set("Asia/Dhaka");
						echo date("h:i:sa || d M, yy "); ?></span> <span><i class="fa fa-calender"></i></span>
					</div>
			</div>

			<div class="content4">
				<div class="containers">
					<div class="main-content">
						<div class="main-content-left">
							<div class="main-content-left-feature">
								
								<div class="feature-news">
									@foreach($feature_news as $news)
										<a href="{{url('article/full_news/'.$news->news_id)}}">
											<img src="{{ $news->picture}} " alt=".">
											<p> ‘{{$news->headline}}’ </p>
										</a>
									@endforeach
								</div>
								
							</div>
							
							<div class="main-content-left-feature2">
								
								@foreach($feature_news4 as $news)
								<a href="{{url('article/full_news/'.$news->news_id)}}">
								<div class="feature-news-sub1">
									<img src="{{$news->picture}}">
									<div class="feature-news-sub1-body"> {{$news->headline}}</div>
									<div class="feature-news-sub1-foot"><p> {{$news->location}} </p></div>
								</div>
								</a>

								@endforeach
							</div>
							
						</div>

						<div class="main-content-center">
							<div class="main-content-center-feature"> 
								
								@foreach($latest_news4 as $news)
								<a href="{{url('article/full_news/'.$news->news_id)}}">
								<div class="latest-news">
									<img src="{{$news->picture}}">
									<div class="feature-news-sub-body"> {{$news->headline}} </div>
								</div>
								</a>
								@endforeach
							</div>
							
							<div class="main-content-center-feature2">
								<!--& row news !-->
								@foreach($all_news as $news)
								<a href="{{url('article/full_news/'.$news->news_id)}}">
								<div class="latest-news">
									<img src="{{$news->picture}}">
									<div class="feature-news-sub-body"> {{$news->headline}} </div>
								</div>
								</a>
								@endforeach
							</div>
							
						</div>

						<div class="main-content-right">
							
							<div class="main-content-right-feature">
								<a href="">
								<div class="main-content-right-ad">
									<img src="{{ asset('public/frontEnd/images/sup-ad.jpg') }}">
								</div>
								</a>
							</div>
							
							
							
							<div class="main-content-right-feature2">
								
								@foreach($most_popular_news as $news)
								<a href="{{url('article/full_news/'.$news->news_id)}}">
								<div class="latest-news-vedio-feature">
									<img src="{{ asset($news->picture) }}">
									<div class="feature-news-sub-body"> {{$news->headline}}   </div>
								</div>
								</a>
								@endforeach
								
								@foreach($popular_news3 as $news)
								<a href="{{url('article/full_news/'.$news->news_id)}}">
								<div class="latest-news-vedio">
									<img src="{{ asset($news->picture) }}">
									<div class="feature-news-sub-body"> {{$news->headline}} </div>
								</div>
								</a>
								@endforeach
							</div>

						</div>
					</div>	
				</div><!--END MAINCONTENT-->	
				
			</div>
			
			
			<div class="containers">
				<div class="add2">
                        <!-- Square small add -->
                        <!--ins class="adsbygoogle"
                             style="display:block"
                             data-ad-client="ca-pub-9981040851228943"
                             data-ad-slot="3915645425"
                             data-ad-format="auto"
                             data-full-width-responsive="true"></ins>
                        <script>
                             (adsbygoogle = window.adsbygoogle || []).push({});
                        </script-->
                        <img src="{{asset('public/frontEnd/images/ad10.png') }}">
				</div>
			</div>
			
			<div class="content2">
				<div class="containers">
					<a href="{{url('Category/Bangladesh')}}">
					<div class="add2">
						<p> বাংলাদেশ </p>
					</div>
					</a>
				</div>
				
				<div class="containers">
					<div class="main-content4">
						@foreach($bd_categorized_feature4 as $news)
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

					<center><a href="{{url('Category/Bangladesh')}}">See more</a></center>
				</div>
				
			</div>
			
			<div class="content2">
				<div class="containers">
					<a href="{{url('Category/International')}}">
					<div class="add2">
						<p> আন্তর্জাতিক </p>
					</div>
					</a>
				</div>
				
				<div class="containers">
					<div class="main-content4">
						@foreach($int_categorized_feature4 as $news)
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

					<center><a href="{{url('Category/International')}}">See more</a></center>
				</div>

			</div>	
			
			
		<div class="content2">
			<div class="containers">
				<a href="{{url('Category/Others')}}">
				<div class="add2">
					<p> অন্যান্য </p>
				</div>
				</a>
			</div>
			<div class="containers">
					<div class="main-content4">
						@foreach($o_categorized_feature4 as $news)
						<div class="main-content-4-1">
							
							<div class="feature-news-cover">
								<a href="{{url('/full_news/'.$news->news_id)}}">
								<img src="{{ asset($news->picture) }}">
								<div class="feature-news-cover-body1"> {{$news->headline}}  </div>
								<div class="feature-news-cover-body2"> {{$news->subheadline}}</div>
								<div class="feature-news-cover-foot"><p> {{$news->location}} </p></div>
								</a>
							</div>

						</div>
						@endforeach
					</div><!--END MAINCONTENT-->
					
					<center><a href="{{url('Category/Others')}}">See more</a></center>

					<div class="containers">
        				<div class="add3">
                                <img src="{{asset('public/frontEnd/images/ad10.png') }}">
        				</div>
        			</div>

				</div>

		</div>
		
@endsection

<!--script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script-->