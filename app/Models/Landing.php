<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Landing extends Model
{
    use HasFactory;
    protected $table = 'landings';
    protected $primaryKey = 'id';
    protected $fillable = ['brand_id', 'category_id', 'url', 'status'];
    protected $casts = [
        'status' => 'boolean',
    ];
}
