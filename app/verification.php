<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class verification extends Model
{
	protected $quarded=[];
	protected $fillable=[
		'user_id','token'
	];
	public function user(){
		return $this->belongsTO('App\User','user_id');
	}
    
}
