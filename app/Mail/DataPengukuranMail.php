<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class DataPengukuranMail extends Mailable
{
    use Queueable, SerializesModels;

    public $data;

    public function __construct($data)
    {
        $this->data = $data; // kirim data ke view
    }

    public function build()
    {
        return $this->subject('Data Pengukuran Anak')->view('emails.pengukuran'); // resources/views/emails/pengukuran.blade.php
    }
}
