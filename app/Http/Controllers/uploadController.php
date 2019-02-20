<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class uploadController extends Controller
{
    public function index(){
    	return view('upload');
    }

    public function upload(Request $req ){
    	// echo "upload will work here";

    	
    }
}
