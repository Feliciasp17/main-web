<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendAccountInfoPeserta extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($email, $password, $tim)
    {
		$this->email = $email;
		$this->password = $password;
		$this->tim = $tim;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
		$user_email = $this->email;
		$user_pass = $this->password;
		$nama_tim = $this->tim;
        return $this->subject('Login Credential - Registrasi CEG 2021')->view('mail.accountinfo', compact('user_email', 'user_pass', 'nama_tim')); 
    }
}
