<?php

namespace App\Exports;
use DB;
use App\Tim;
use App\Peserta;
use App\Pelanggaran;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class PelanggaranExport implements FromCollection, WithHeadings
{
    protected $sortby, $tim, $tipe, $pelanggaran, $start, $end;

    function __construct($sortby, $tim, $tipe, $pelanggaran, $start, $end) {
        $this->sortby = $sortby;
        $this->tim = $tim;
        $this->tipe = $tipe;
        $this->pelanggaran = $pelanggaran;
        $this->start = $start;
        $this->end = $end;
    }

    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $where = $this->sortby;

        if ($this->sortby != null) {
            if($this->sortby == "tim")
                $where = "list_pelanggaran.tim_id = '".$this->tim."'";
            elseif($this->sortby == "jenis")
                $where = "pelanggarans.jenis = '".$this->tipe."'";
            elseif($this->sortby == "pelanggaran")
                $where = "list_pelanggaran.pelanggaran_id = '".$this->pelanggaran."'";
            elseif($this->sortby == "waktu" && $this->start != null && $this->end != null)
                $where = "list_pelanggaran.created_at between '".$this->start."' and '".$this->end."'";

            return DB::table('list_pelanggaran')
            ->join('tim', 'list_pelanggaran.tim_id', '=', 'tim.id')
            ->join('peserta', 'list_pelanggaran.anggota_id', '=', 'peserta.id')
            ->join('pelanggarans', 'list_pelanggaran.pelanggaran_id', '=', 'pelanggarans.id')
            ->join('users', 'list_pelanggaran.user_id_inputer', '=', 'users.id')
            ->whereRaw($where)
            ->orderBy('pelanggarans.jenis', 'asc')
            ->orderBy('list_pelanggaran.created_at', 'asc')
            ->select('tim.nama as namatim', 'peserta.nama as namapes', 'pelanggarans.pelanggaran', 'pelanggarans.jenis', 'users.name', 'list_pelanggaran.keterangan', 'list_pelanggaran.created_at')->get();
        }
        else
            return DB::table('list_pelanggaran')
        ->join('tim', 'list_pelanggaran.tim_id', '=', 'tim.id')
        ->join('peserta', 'list_pelanggaran.anggota_id', '=', 'peserta.id')
        ->join('pelanggarans', 'list_pelanggaran.pelanggaran_id', '=', 'pelanggarans.id')
        ->join('users', 'list_pelanggaran.user_id_inputer', '=', 'users.id')
        ->orderBy('pelanggarans.jenis', 'asc')
        ->orderBy('list_pelanggaran.created_at', 'asc')
        ->select('tim.nama as namatim', 'peserta.nama as namapes', 'pelanggarans.pelanggaran', 'pelanggarans.jenis', 'users.name', 'list_pelanggaran.keterangan', 'list_pelanggaran.created_at')->get();
        
    }

    public function headings():array
    {
        $headings = [];
        $addons = [];

        if ($this->sortby != null) {
            if($this->sortby == "tim" && $this->tim != null){
                $tim = Tim::where('id',$this->tim)->first();
                $team = "Tim: ".$tim->nama;
                $addons = [$team];
            }
            elseif($this->sortby == "jenis" && $this->tipe != null){
                $pelanggaran = Pelanggaran::where('jenis',$this->tipe)->first();
                $type = "Tipe: ".$pelanggaran->jenis;
                $addons = [$type];
            }
            elseif($this->sortby == "pelanggaran" && $this->pelanggaran != null){
                $pelanggaran = Pelanggaran::where('id',$this->pelanggaran)->first();
                $violation = "Tim: ".$pelanggaran->pelanggaran;
                $addons = [$violation];
            }
            elseif($this->sortby == "waktu"){
                $time = "Range Waktu: ".$this->start." sampai ".$this->end;
                $addons = [$time];
            }

            array_push($headings, $addons);
        }
        
        $addons = ['Nama Tim', 'Nama Peserta', 'Pelanggaran', 'Jenis', 'Penginput', 'Keterangan', 'Waktu'];
        array_push($headings, $addons);

        return $headings;
    }
}
