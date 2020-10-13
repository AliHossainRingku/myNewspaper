<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>CCN | Channel Chittagong News</title>
		<link rel="stylesheet" href="{{ asset('public/frontEnd/css/bootstrap.min.css') }}">
		<link rel="stylesheet" href="{{ asset('public/frontEnd/css/style.css') }}">
		<script type="text/javascript" src="{{ asset('public/frontEnd/js/script.js') }}"></script>
		<script type="text/javascript" src="{{ asset('public/frontEnd/js/jquery.js') }}"></script>
		<link rel="shortcut icon" type="image/x-icon" href="{{asset('public/icon.png')}}" />
		
		<!--script async custom-element="amp-ad" src="https://cdn.ampproject.org/v0/amp-ad-0.1.js"></script-->
		
	</head>
	<body>
			
			
			
			<div class="header">
				<div class="containers">
					<a href="{{url('/')}}"><div class="header-logo">
						<li>C</li>
						<li>C</li>
						<li>N</li>
					</div></a>
					<div class="header-nav">
						<ul>
							<li><a href="{{url('/')}}">মূল পাতা</a></li>
							<li><a href="{{url('Category/Bangladesh')}}">বাংলাদেশ</a></li>
							<li><a href="{{url('Category/International')}}">আন্তর্জাতিক</a></li>
							<li><a href="{{url('Category/Entertainment')}}">বিনোদন</a></li>
							<li><a href="{{url('Category/Sports')}}">খেলাধুলা</a></li>
							<li><a href="{{url('Category/Others')}}">অন্যান্য</a></li>
							<li><input type="text" name="search" class="header-search-box" placeholder="Search"></li>
						</ul>
						
					</div>

					<div class="toggleButton" onclick="toggleSidebar()">
						<span></span>
						<span></span>
						<span></span>
					</div>
				</div>
			</div>
			<div class="navs">
				<div class="containers">
					<div class="navs-logo">
						<p class="">Sarcastic Parody</p>
						<li>NEWS</li>
						<h6>Portal</h6>

					</div>
					<div class="navs-nav">
						<ul>
							<li><a href="{{url('/')}}">Home</a></li>
							@foreach($all_categories as $category)
								 <li><a href="{{url('Category/'.$category->category_name)}}">{{$category->category_name}}</a></li>

							@endforeach
							
						</ul>
					</div>
				</div>
			</div>
			
				<section>
					<!--This content is used for dynamic contents of products for homepage-->
					@yield('content')
				</section>
			
			
			<div class="footer0">
				<div class="containers">
					<img src="{{ asset('public/frontEnd/images/logo-ccnn.png')}} ">
					<p>Download App</p>
				</div>
				
			</div>
			
			<div class="footer">
				
					<div class="footer-items">
						<div class="footer-links">
							<ul>
								<li><a href="#">প্রচ্ছদ</a></li>
								<li><a href="#">মতামত</a></li>
								<li><a href="#">পাঁচমিশালি</a></li>
								<li><a href="#">সেরা</a></li>
							</ul>
						</div>
						<div class="footer-links">
							<ul>
								<li><a href="#">বাংলাদেশ</a></li>
								<li><a href="#">বিনোদন</a></li>
								<li><a href="#">আমরা</a></li>
								<li><a href="#">সেরা</a></li>
							</ul>
						</div>
						<div class="footer-links">
							<ul>
								<li><a href="#">ফেইসবুক</a></li>
								<li><a href="#">টুইটার</a></li>
								<li><a href="#">লিংকডইন</a></li>
								<li><a href="#">ইউটিউব</a></li>
							</ul>
						</div>
						<div class="footer-links">
							<ul>
								<li><a href="#">খেলা</a></li>
								<li><a href="#">বিজ্ঞান</a></li>
								<li><a href="#">প্রযুক্তি</a></li>
								<li><a href="#">কম্পিউটার</a></li>
							</ul>
						</div>
						<div class="footer-links">
							<ul>
								<li><a href="#">ছবি</a></li>
								<li><a href="#">অডিও</a></li>
								<li><a href="#">ভিডিও</a></li>
								<li><a href="#">আর্কাইভ</a></li>
							</ul>
						</div>
						<div class="footer-links">
							<ul>
								<li><a href="#">ঢাকা</a></li>
								<li><a href="#">নিউইয়র্ক</a></li>
								<li><a href="#">লন্ডন</a></li>
								<li><a href="#">রিয়াদ</a></li>
							</ul>
						</div>
					</div>
					<div class="footer-content">
						<p> আমাদের অন্যান্য প্রোডাক্ট</p>
						<p>বাহার গ্রুপ লিমিটেড<p>
						<p>মোহাম্মদী ভবন, ২০-২১ জুবিলি রোড , চট্টগ্রাম ৪১০০</p>
					</div> 
				
			</div>
			
			
			<div class="footer2">
					<div class="footer-content2">
						<p> &copy; চ্যানেল চিটাগং নিউজ  ২০১৯-২০২১</p>
						<p>সম্পাদক ও প্রকাশক: ড. আলবার্ট হার্ট এট্যাক<p>
						<p> মোহাম্মদী ভবন, ২০-২১ জুবিলি রোড , চট্টগ্রাম ৪১০০</p>
						<p>ফোন: ৮১৮০০৭৮-৮১, ফ্যাক্স: ৫৫০১২২০০, ৫৫০১২২১১ ইমেইল: info@channelchittagong.news</p>
					</div> 
				
			</div>		
			
			
	
	</body>
</html>



<script type="text/javascript">
	
	var comment = "This is a comment\nAnother comment\nOne more\nLast";
	comment = comment.replace(/\n/g, "<br />");
	//alert(comment);
	
		function toggleSidebar(ref){
		  document.body.classList.toggle('active');
		}
	
</script>