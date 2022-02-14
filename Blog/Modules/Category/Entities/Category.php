<?php

namespace Modules\Category\Entities;

use Modules\Post\Entities\Post;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Category extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'name'
    ];
    
    protected $hidden = [
        'created_at',
        'updated_at'
    ];

    protected static function newFactory()
    {
        return \Modules\Category\Database\factories\CategoryFactory::new();
    }

    public function post(){
        return $this->hasMany(Post::class);
    }
}
