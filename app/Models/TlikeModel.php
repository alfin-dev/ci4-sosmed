<?php

namespace App\Models;

use CodeIgniter\Model;

class TlikeModel extends Model
{
    protected $table            = 'tlike';
    protected $primaryKey       = 'id';
    protected $returnType       = 'object';

    protected $useAutoIncrement = true;
    protected $allowedFields    = ['postid', 'userid', 'like'];

    public function getLike($iduser, $tpost)
    {
        return $this->db->table('tlike')
            ->join('users', 'users.id=tlike.userid')
            ->join('tposts', 'tlike.postid=tposts.id')
            ->where('tlike.userid', $iduser)
            ->where('tlike.postid', $tpost)
            ->select('tlike.id,users.username')
            ->get()->getResultArray();
    }
}
