<?php

namespace App\Models;

use CodeIgniter\Model;

class KomentarModel extends Model
{
    protected $table            = 'komentar';
    protected $primaryKey       = 'id';
    protected $returnType       = 'object';

    protected $useAutoIncrement = true;
    protected $allowedFields    = ['userid', 'postid', 'komentar', 'created_at'];

    // public function getPost()
    // {
    //     return $this->db->table('tposts')
    //         ->join('users', 'users.id=tposts.userid')
    //         ->select('tposts.*,users.username')
    //         ->orderBy('tposts.created_at', 'DESC')
    //         ->get()->getResultArray();
    // }
}
