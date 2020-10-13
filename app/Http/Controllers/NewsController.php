<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use FontLib\EOT\File;
use PDF;

class NewsController extends Controller
{
    public function index(){
    	return "hello"; //view('news');
    }


    public function insertNews(){
        $all_categories = DB::table('categories')
            ->select('categories.*')
            ->where('categories.publication_status',1)
            ->limit(12)
            ->get();
    	return view('backEnd.news.insertNews',['all_categories'=>$all_categories]);
    }

    public function saveNews(Request $request){
    	//dd($request->all());

    	$news = array();
    	$news['headline'] = $request->headline;
    	$news['subheadline'] = $request->subheadline;
    	$news['editor'] = $request->editor;
    	$news['news_body'] = $request->news_body;
        $news['category_id'] = $request->category_id;
    	//$news['source_name'] = $request->source_name;
    	//$news['source_link'] = $request->source_link;
    	$news['location'] = $request->location;
    	$news['editor'] = $request->editor;
    	$news['publication_status'] = $request->publication_status;

    	if($request->publisher){
    		$news['publisher'] = $request->publisher;
    	}else{
    		$news['publisher'] = "Self Correspondant";
    	}

    	//print_r($news) ;
        $news_id = \DB::table('newspost')->select('news_id')->get();
        $count = $news_id->count();
        $max = $news_id->max('news_id')+1;

        //DB::table('newspost')->insert($news);

        //$image = $request->picture;
       
        //print_r($news) ;

        //$request->picture;

        if ($request->hasFile('picture')) {
            
            $image = $request->file('picture');
            $name = $max.'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('uploaded_images');
            $image->move($destinationPath, $name);
            //$this->save();

            $totalPathName = 'public/uploaded_images/'.$name;
            //print_r($totalPathName) ;
            $news['picture'] = $totalPathName;
            $success = DB::table('newspost')->insert($news);
            return redirect()->back()->with('msg','News saved in with image database successfully!'); 
        }

    	$success = DB::table('newspost')->insert($news);
    	return redirect()->back()->with('msg','News saved in without image database successfully!'); 
    
    }

    public function manageNews(Request $request){
    	$news = DB::table('newspost')
            ->select('newspost.*')
            ->orderByDesc('newspost.news_id')
            ->paginate(10);
        return view('backEnd.news.manageNews',['news'=>$news]);
    }

    public function editNews($id){

        $edit_news = DB::table('newspost')
            ->select('newspost.*')
            ->where('newspost.news_id','=',$id)
            ->get();

        return view('backEnd.news.editNews',['edit_news'=>$edit_news]);
    }

    public function updateNews(Request $request){
        //dd($request->all());

        $news_id = $request->news_id;

        $news = array();
        $news['headline'] = $request->headline;
        $news['subheadline'] = $request->subheadline;
        $news['editor'] = $request->editor;
        $news['news_body'] = $request->news_body;
        $news['source_name'] = $request->source_name;
        $news['source_link'] = $request->source_link;
        $news['location'] = $request->location;
        $news['editor'] = $request->editor;
        $news['category_id'] = $request->category_id;
        $news['publication_status'] = $request->publication_status;

        DB::table('newspost')
                ->where('news_id',$news_id)
                ->update($news);

        return redirect('/admin/manage-news')->with('msg','News updated successfully!');
    }

    public function publishNews($news_id){
        DB::table('newspost')->where('news_id',$news_id)->update(['publication_status'=>1]);
        return redirect()->back()->with('msg','News activated successfully!');
    }

    public function unpublishNews($news_id){
        DB::table('newspost')->where('news_id',$news_id)->update(['publication_status'=>0]);

         return redirect()->back()->with('msg','News deactivated successfully!');
    }

    public function deleteNews($news_id){

        /* $data = DB::table('tbl_product')
                        ->select('product_picture')
                        ->where('product_id',$product_id)
                        ->first(); */
        //unlink($data->product_picture);

        DB::table('newspost')->where('news_id',$news_id)->delete();

        return redirect()->back()->with('msg','News deleted successfully!');
    }



    


}
