<?php

namespace PTS\Models;

class Model implements \ArrayAccess
{

    protected const PRIMARY_KEY_NOT_SET = 'Primary key for model [{class}] not set';
    protected const PRIMARY_KEY_NOT_UNQ = 'Primary key [{key}] for table [{table}] is not unique';

    protected $table;

    protected $primary_key;

    protected $attributes = [];

    protected $hasDefault = [];

    public function offsetExists($offset)
    {
        if (isset($this->attributes[$offset])) return true;
        else return false;
    }


    public function offsetGet($offset)
    {
        return $this->attributes[$offset];
    }


    public function offsetSet($offset, $value)
    {
        $this->attributes[$offset] = $value;
    }


    public function offsetUnset($offset)
    {
        unset($this->attributes[$offset]);
    }
}
