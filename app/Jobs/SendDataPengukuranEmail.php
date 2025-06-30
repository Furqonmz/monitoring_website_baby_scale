<?php
namespace App\Jobs;

use App\Mail\DataPengukuranMail;
use Illuminate\Bus\Queueable;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Mail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Twilio\Rest\Client;

class SendDataPengukuranEmail implements ShouldQueue
{
   use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $data;
    protected $email;

    /**
     * Create a new job instance.
     */
    public function __construct($data, $email)
    {
        $this->data = $data;
        $this->email = $email;
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
         Mail::to($this->email)->send(new DataPengukuranMail($this->data));

        //  $this->kirimWhatsApp($this->data['nomor_wa'], $this->data['pesan_wa']);
    }

    // protected function kirimWhatsApp($tujuan, $pesan)
    // {
    //     $sid = env('TWILIO_SID');
    //     $token = env('TWILIO_AUTH_TOKEN');
    //     $from = env('TWILIO_WHATSAPP_FROM');

    //     $client = new Client($sid, $token);

    //     $client->messages->create("whatsapp:$tujuan", [
    //         'from' => $from,
    //         'body' => $pesan
    //     ]);
    // }

    // protected function formatPesanWa($data)
    // {
    //     return "Halo {$data['nama_orangtua']}, berikut data pengukuran anak Anda:\n"
    //         . "Nama: {$data['nama']}\n"
    //         . "Berat: {$data['berat']} kg\n"
    //         . "Tinggi: {$data['tinggi']} cm\n"
    //         . "Status Gizi: {$data['status_gizi']}";
    // }

}
