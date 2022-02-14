<?php

namespace Modules\Post\Entities;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Modules\Category\Entities\Category;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'category_id',
        'title', 
        'description',
        'image'
    ];
    protected $hidden = [
        'id',
        'category_id',
        'created_at',
        'updated_at'
    ];

    protected static function newFactory()
    {
        return \Modules\Post\Database\factories\PostFactory::new();
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }
    
    public function user(){
        return $this->belongsTo(User::class);
    }
}
