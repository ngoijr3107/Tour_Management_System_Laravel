<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Auth;

class TourAlert extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'tour:alert';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'After staring tour send alert to tourist and guide,host';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {

        //semd mail to tourist
        $details = [

            'title' => 'Tour Notification',
            'body' => 'Your tour starting',
    
        ];
    
        \Mail::to('sajeebchakraborty.cse2000@gmail.com')->send(new \App\Mail\ContactConfirmationMail($details));

        \Log::info("Send Alert successfully!");
    }
}
