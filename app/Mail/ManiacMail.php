<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use PhpParser\Node\Expr\FuncCall;

class ManiacMail extends Mailable
{
    use Queueable, SerializesModels;
    public $team;
    public $nama;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($team,$nama)
    {
        $this->team = $team;
        $this->nama = $nama;
    }

    function get_team(){
        return $this->team;
    }

    function get_nama(){
        return $this->nama;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
       return $this->from('admin@maniacubaya.com')
                   ->view('mail')
                   ->with(
                    [
                        'team' => $this->team,
                        'nama' => $this->nama
                    ]);
    }
}
