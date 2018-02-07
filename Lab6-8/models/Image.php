<?php

namespace PTS\Models;

class Image extends Model
{
    use Prototype\Model;

    public const MAX_LENGTH = 250;
    public const CORRECT = 'correct';
    public const INCORRECT = 'incorrect';

    protected $table = 'images';

    protected $primary_key = 'i_id';

    protected $hasDefault = ['a_correct'];
}
