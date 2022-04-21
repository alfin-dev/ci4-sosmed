<?php

namespace App\Controllers;

use App\Models\KomentarModel;
use App\Models\TlikeModel;
use CodeIgniter\I18n\Time;
use App\Models\Tposts;

class Home extends BaseController
{
    function __construct()
    {
        $this->tposts = new Tposts();
        $this->komentar = new KomentarModel();
        $this->tlike = new TlikeModel();
    }

    public function index()
    {
        return redirect('login');
    }

    public function dashboard()
    {
        $data['post'] = $this->tposts->getPost();
        // dd($data);
        return view('dashboard', $data);
    }

    public function create()
    {
        $foto = $dataBerkas = $this->request->getFile('foto');
        $video = $dataBerkas = $this->request->getFile('video');

        if ($foto->getName() != null && $video->getName() != null) {
            $dataBerkasfoto = $this->request->getFile('foto');
            $dataBerkasvid = $this->request->getFile('video');
            $fileNamefoto = $dataBerkasfoto->getRandomName();
            $fileNamevid = $dataBerkasvid->getRandomName();
            $id = user()->getIduser();
            $this->tposts->insert([
                'userid'        => $id,
                'text'          => $this->request->getPost('post'),
                'created_at'    => Time::now('Asia/Jakarta', 'en_US'),
                'img'           => $fileNamefoto,
                'vid'           => $fileNamevid,
            ]);
            $dataBerkasfoto->move('uploads/berkas/', $fileNamefoto);
            $dataBerkasvid->move('uploads/berkas/', $fileNamevid);
        }
        //foto only
        elseif ($foto->getname() != null) {
            $dataBerkas = $this->request->getFile('foto');
            $fileName = $dataBerkas->getRandomName();
            $id = user()->getIduser();
            $this->tposts->insert([
                'userid'        => $id,
                'text'          => $this->request->getPost('post'),
                'created_at'    => Time::now('Asia/Jakarta', 'en_US'),
                'img'        => $fileName,
            ]);
            $dataBerkas->move('uploads/berkas/', $fileName);
        }

        //video only
        elseif ($video->getName() != null) {
            $dataBerkas = $this->request->getFile('video');
            $fileName = $dataBerkas->getRandomName();
            $id = user()->getIduser();
            $this->tposts->insert([
                'userid'        => $id,
                'text'          => $this->request->getPost('post'),
                'created_at'    => Time::now('Asia/Jakarta', 'en_US'),
                'vid'        => $fileName,
            ]);
            $dataBerkas->move('uploads/berkas/', $fileName);
        } else {
            $id = user()->getIduser();
            $this->tposts->insert([
                'userid'        => $id,
                'text'          => $this->request->getPost('post'),
                'created_at'    => Time::now('Asia/Jakarta', 'en_US'),
            ]);
        }
        return redirect('dashboard');
    }

    public function createcomment()
    {
        $komentar = $this->request->getPost('komentar');
        $id = $this->request->getPost('id');
        if ($komentar != null) {
            $iduser = $this->request->getPost('iduser');
            $this->komentar->insert([
                'userid' => $iduser,
                'postid' => $id,
                'komentar' => $komentar,
                'created_at'    => Time::now('Asia/Jakarta', 'en_US'),
            ]);
        }
        return redirect('dashboard');
    }

    public function createlike()
    {
        $idpost = $this->request->getPost('id');
        $iduser = $this->request->getPost('iduser');
        $jml = $this->request->getPost('like');
        // dd($iduser);
        $getlike = $this->tlike->getLike($iduser, $idpost);

        // dd($idlike);

        if ($getlike == null) {
            $this->tlike->insert([
                'postid' => $idpost,
                'userid' => $iduser,
                'like' => 1,
            ]);
        } else {
            foreach ($getlike as $k) {
                $idlike = $k['id'];
            }
            $this->tlike->delete($idlike);
        }
        // $newdata = [
        //     'postid' => $idpost,
        //     'userid' => $iduser,
        //     'like' => $jml,
        // ];
        // elseif($getlike['userid'] == $iduser && $getlike['postid'] == $idpost){
        //     $this->tlike->save()
        // }
        return redirect('dashboard');
    }
}
