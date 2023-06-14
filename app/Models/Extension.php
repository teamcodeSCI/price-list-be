<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Extension extends Model
{
    use HasFactory;
    protected $table = 'extensions';
    protected $primaryKey = 'id';
    protected $fillable = ['landing_id', 'start_date', 'end_date'];
}
