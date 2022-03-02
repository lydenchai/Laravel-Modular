<?php

namespace Modules\Permission\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Permission extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'startAt',
        'endAt',
        'type',
        'description'
    ];

    protected $casts = [
        'created_at' => 'date:D, d-m-y'
    ];

    protected $hidden = [
        'updated_at'
    ];

    protected static function newFactory()
    {
        return \Modules\Permission\Database\factories\PermissionFactory::new();
    }
}
