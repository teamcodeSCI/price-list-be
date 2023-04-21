<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Price extends Model
{
    use HasFactory;
    protected $table = 'prices';
    protected $primaryKey = 'id';
    protected $fillable = ['landing_id', 'service', 'price', 'discount', 'promotion', 'note'];
}
