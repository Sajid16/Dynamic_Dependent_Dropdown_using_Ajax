<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class DynamicDependent extends Controller
{
    public function index()
    {
    	$country_list = DB::table('country_state_list')
    					->groupBy('country')
    					->get();

    	return view('dynamic_dropdown_test',compact('country_list'));
    }

    public function fetch(Request $request)
    {
    	$select = $request->get('select');
    	$value = $request->get('value');
    	$dependent = $request->get('dependent');
    }
}
