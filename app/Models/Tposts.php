<?php

namespace App\Models;

use CodeIgniter\Model;

class Tposts extends Model
{
    protected $table            = 'tposts';
    protected $primaryKey       = 'id';
    protected $returnType       = 'object';

    protected $useAutoIncrement = true;
    protected $allowedFields    = ['userid', 'text', 'img', 'vid', 'created_at', 'like'];

    public function getPost()
    {
        return $this->db->table('tposts')
            ->join('users', 'users.id=tposts.userid')
            ->select('tposts.*,users.username')
            ->orderBy('tposts.created_at', 'DESC')
            ->get()->getResultArray();
    }
}
