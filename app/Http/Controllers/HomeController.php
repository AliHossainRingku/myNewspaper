<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class HomeController extends Controller
{
    
    public function index()
    {
        /*RANKED3
        SELECT * FROM `newspost` WHERE `news_id` = (SELECT DISTINCT(news_id)) FROM `newspost` ORDER BY `news_id` LIMIT 5,2)*/

        /* This for layout page category */
        $all_categories = DB::table('categories')
            ->select('categories.*')
            ->where('categories.publication_status',1)
            ->limit(12)
            ->get();
        /* This for largest feature news */
        $feature_news = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->orderByDesc('updated_at')
            ->limit(1)
            ->get();
        
        /* This for  4 small feature news (2nd largest) */
        $feature_news4 = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->orderByDesc('updated_at')
            ->skip(1)
            ->limit(4)
            ->get();
        /* This for only headline 4 */
        $latest_news4 = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->orderByDesc('updated_at')
            ->skip(5)
            ->limit(4)
            ->get();
        /* This for only headline 7 */
        $all_news = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->skip(9)//->take(6)
            ->limit(7)
            ->orderByDesc('updated_at')
            ->get();

        $most_popular_news = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->where('newspost.rating',0)
            ->inRandomOrder()
            ->limit(1)
            ->get();

        $popular_news3 = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->inRandomOrder()
            ->limit(3)
            ->get();

        $bd_categorized_feature4 = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->where('newspost.category_id',1)
            ->orderByDesc('updated_at')
            ->limit(4)
            ->get();
        $int_categorized_feature4 = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->where('newspost.category_id',2)
            ->orderByDesc('updated_at')
            ->limit(4)
            ->get();
        $o_categorized_feature4 = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->where('newspost.category_id',12)
            ->orderByDesc('updated_at')
            ->limit(4)
            ->get();



        return view('frontEnd.home_content',['all_categories'=>$all_categories,'all_news'=>$all_news,'feature_news'=>$feature_news,'feature_news4'=>$feature_news4,'latest_news4'=>$latest_news4,'popular_news3'=>$popular_news3,'most_popular_news'=>$most_popular_news,'bd_categorized_feature4'=>$bd_categorized_feature4,'int_categorized_feature4'=>$int_categorized_feature4,'o_categorized_feature4'=>$o_categorized_feature4]);
        //return view('frontENd.hom e_content');
    }


   
	
	 
        

    public function categorizedNews($category_id)//$category_id)
    {


        $all_categories = DB::table('categories')
            ->select('categories.*')
            ->where('categories.publication_status',1)
            ->limit(12)
            ->get();

        $categoryId = $category_id;
 

        /* $newsById = DB::table('newspost')
        ->join('categories', 'newspost.news_id', '=', 'categories.category_id')
        ->select('newspost.*')
        ->where('categories.category_id',$categoryId)
        ->where('newspost.publication_status',1)
        ->get(); */
         
        $categorized_news = DB::table('newspost')
            ->join('categories', 'newspost.category_id', '=', 'categories.category_id')
            ->select('newspost.*','categories.*' )
            ->where('categories.category_name',$categoryId)
            ->where('newspost.publication_status',1)
            ->paginate(4);


         return view('frontEnd.categorized_news',['all_categories'=>$all_categories, 'categoryId'=>$categoryId,'categorized_news'=>$categorized_news]);
    }

	public function readFullNews($news_id)
    {
        //dd($request->all());
        $all_categories = DB::table('categories')
            ->select('categories.*')
            ->where('categories.publication_status',1)
            ->limit(12)
            ->get();

        $newsById = DB::table('newspost')
        ->select('newspost.*')
        ->where('newspost.publication_status',1)
        ->where('news_id',$news_id)
        ->get();
         
        $more_news4 = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.publication_status',1)
            ->inRandomOrder()
            ->limit(4)
            ->get();


         return view('frontEnd.full_news',['all_categories'=>$all_categories,'newsById'=>$newsById,'more_news4'=>$more_news4]);


         //$newsById = view('frontEnd.full_news')->with('newsById',$newsById);

        //return view('layout')->with('frontEnd.full_news',$newsById);
    }
	
}
