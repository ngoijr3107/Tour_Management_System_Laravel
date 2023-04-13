<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Library\SslCommerz\SslCommerzNotification;

//Model added
use App\Models\Local_guide_service;
use App\Models\Local_host_service;
use App\Models\Virtual_assistant;
use App\Models\Place;
use App\Models\User;

use Mail;

use Auth;
use Session;
use PDF;
use Redirect;

class SslCommerzPaymentController extends Controller
{

    public function exampleEasyCheckout()
    {
        return view('exampleEasycheckout');
    }

    public function exampleHostedCheckout()
    {
        return view('exampleHosted');
    }

    public function index(Request $request)
    {
        # Here you have to receive all the order data to initate the payment.
        # Let's say, your oder transaction informations are saving in a table called "orders"
        # In "orders" table, order unique identity is "transaction_id". "status" field contain status of the transaction, "amount" is the order amount to be paid and "currency" is for storing Site Currency which will be checked with paid currency.

        $post_data = array();
        $post_data['total_amount'] = '10'; # You cant not pay less than 10
        $post_data['currency'] = "BDT";
        $post_data['tran_id'] = uniqid(); // tran_id must be unique

        # CUSTOMER INFORMATION
        $post_data['cus_name'] = Auth::user()->name;
        $post_data['cus_email'] = Auth::user()->email;
        $post_data['cus_add1'] = 'Customer Address';
        $post_data['cus_add2'] = "";
        $post_data['cus_city'] = "";
        $post_data['cus_state'] = "";
        $post_data['cus_postcode'] = "";
        $post_data['cus_country'] = "Bangladesh";
        $post_data['cus_phone'] = '8801XXXXXXXXX';
        $post_data['cus_fax'] = "";

        # SHIPMENT INFORMATION
        $post_data['ship_name'] = "Store Test";
        $post_data['ship_add1'] = "Dhaka";
        $post_data['ship_add2'] = "Dhaka";
        $post_data['ship_city'] = "Dhaka";
        $post_data['ship_state'] = "Dhaka";
        $post_data['ship_postcode'] = "1000";
        $post_data['ship_phone'] = "";
        $post_data['ship_country'] = "Bangladesh";

        $post_data['shipping_method'] = "NO";
        $post_data['product_name'] = "Computer";
        $post_data['product_category'] = "Goods";
        $post_data['product_profile'] = "physical-goods";

        # OPTIONAL PARAMETERS
        $post_data['value_a'] = "ref001";
        $post_data['value_b'] = "ref002";
        $post_data['value_c'] = "ref003";
        $post_data['value_d'] = "ref004";

        #Before  going to initiate the payment order status need to insert or update as Pending.
        $update_product = DB::table('orders')
            ->where('transaction_id', $post_data['tran_id'])
            ->updateOrInsert([
                'name' => $post_data['cus_name'],
                'email' => $post_data['cus_email'],
                'phone' => $post_data['cus_phone'],
                'amount' => $post_data['total_amount'],
                'status' => 'Pending',
                'address' => $post_data['cus_add1'],
                'transaction_id' => $post_data['tran_id'],
                'currency' => $post_data['currency']
            ]);

        $sslc = new SslCommerzNotification();
        # initiate(Transaction Data , false: Redirect to SSLCOMMERZ gateway/ true: Show all the Payement gateway here )
        $payment_options = $sslc->makePayment($post_data, 'hosted');

        if (!is_array($payment_options)) {
            print_r($payment_options);
            $payment_options = array();
        }

    }

    public function payViaAjax(Request $request)
    {

        # Here you have to receive all the order data to initate the payment.
        # Lets your oder trnsaction informations are saving in a table called "orders"
        # In orders table order uniq identity is "transaction_id","status" field contain status of the transaction, "amount" is the order amount to be paid and "currency" is for storing Site Currency which will be checked with paid currency.

        //Get session for inserting data in database
        $totalBill=Session::get('totalBill');
        $from=Session::get('from');
        $to=Session::get('to');
        $amountOfDay=Session::get('amountOfDay');
        $amountOfPerson=Session::get('amountOfPerson');
        $placeId=Session::get('placeId');
        $packageId=Session::get('packageId');
        $lgServiceId=Session::get('lgServiceId');
        $lhServiceId=Session::get('lhServiceId');

        $today=date('F d, Y');

        Session::put('paymentDate',$today);
 
        $post_data = array();
        $post_data['total_amount'] = $totalBill; # You cant not pay less than 10
        $post_data['currency'] = "BDT";
        $post_data['tran_id'] = uniqid(); // tran_id must be unique

        # CUSTOMER INFORMATION
        $post_data['cus_name'] = Auth::user()->name;
        $post_data['cus_email'] = Auth::user()->email;
        $post_data['cus_add1'] = "";
        $post_data['cus_add2'] = "";
        $post_data['cus_city'] = "";
        $post_data['cus_state'] = "";
        $post_data['cus_postcode'] = "";
        $post_data['cus_country'] = "Bangladesh";
        $post_data['cus_phone'] = "cus";
        $post_data['cus_fax'] = "";

        # SHIPMENT INFORMATION
        $post_data['ship_name'] = "Store Test";
        $post_data['ship_add1'] = "Dhaka";
        $post_data['ship_add2'] = "Dhaka";
        $post_data['ship_city'] = "Dhaka";
        $post_data['ship_state'] = "Dhaka";
        $post_data['ship_postcode'] = "1000";
        $post_data['ship_phone'] = "";
        $post_data['ship_country'] = "Bangladesh";

        $post_data['shipping_method'] = "NO";
        $post_data['product_name'] = "Computer";
        $post_data['product_category'] = "Goods";
        $post_data['product_profile'] = "physical-goods";

        # OPTIONAL PARAMETERS
        $post_data['value_a'] = "ref001";
        $post_data['value_b'] = "ref002";
        $post_data['value_c'] = "ref003";
        $post_data['value_d'] = "ref004";


        #Before  going to initiate the payment order status need to update as Pending.
        $update_product = DB::table('orders')
            ->where('transaction_id', $post_data['tran_id'])
            ->updateOrInsert([
                'user_id'=> Auth::user()->id,
                'from_date'=>$from,
                'to_date'=>$to,
                'amount_of_day'=>$amountOfDay,
                'amount_of_person'=>$amountOfPerson,
                'place_id'=>$placeId,
                'package_id'=>$packageId,
                'lg_service_id'=>$lgServiceId,
                'lh_service_id'=>$lhServiceId,
                'name' => $post_data['cus_name'],
                'email' => $post_data['cus_email'],
                'phone' => $post_data['cus_phone'],
                'amount' => $post_data['total_amount'],
                'status' => 'Pending',
                'address' => $post_data['cus_add1'],
                'transaction_id' => $post_data['tran_id'],
                'currency' => $post_data['currency'],
                'payment_date' => $today,
                'tour_status'=> 'Pending',

            ]);

        $sslc = new SslCommerzNotification();
        # initiate(Transaction Data , false: Redirect to SSLCOMMERZ gateway/ true: Show all the Payement gateway here )
        $payment_options = $sslc->makePayment($post_data, 'checkout', 'json');

        if (!is_array($payment_options)) {
            print_r($payment_options);
            $payment_options = array();
        }

    }

    public function success(Request $request)
    {
        echo "Transaction is Successful";

        $tran_id = $request->input('tran_id');
        $amount = $request->input('amount');
        $currency = $request->input('currency');

        $sslc = new SslCommerzNotification();

        #Check order status in order tabel against the transaction id or order id.
        $order_detials = DB::table('orders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'status', 'currency', 'amount')->first();

        if ($order_detials->status == 'Pending') {
            $validation = $sslc->orderValidate($tran_id, $amount, $currency, $request->all());

            if ($validation == TRUE) {
                /*
                That means IPN did not work or IPN URL was not set in your merchant panel. Here you need to update order status
                in order table as Processing or Complete.
                Here you can also sent sms or email for successfull transaction to customer
                */
                $update_product = DB::table('orders')
                    ->where('transaction_id', $tran_id)
                    ->update(['status' => 'Success']);

                
                //Get session for view in pdf
                $totalBill=Session::get('totalBill');
                $from=Session::get('from');
                $to=Session::get('to');
                $amountOfDay=Session::get('amountOfDay');
                $amountOfPerson=Session::get('amountOfPerson');
                $packageId=Session::get('packageId');
                $lgServiceId=Session::get('lgServiceId');
                $lhServiceId=Session::get('lhServiceId');
                $paymentDate=Session::get('paymentDate');

                //handle session out
                if($packageId==null)
                {

                    return redirect::to('/');

                }
         
                //local guide
                if($lgServiceId !=null)
                {

                    $serviceDetails=Local_guide_service::where('id',$lgServiceId)->first();
    
                    $placeDetails=Place::where('id',$serviceDetails->place_id)->first();

                    $serviceHolderProfile=User::where('id',$serviceDetails->user_id)->first();


                }
                //local host
                else if($lhServiceId !=null)
                {

                    $serviceDetails=Local_host_service::where('id',$lhServiceId)->first();
                
                    $placeDetails=Place::where('id',$serviceDetails->place_id)->first();

                    $serviceHolderProfile=User::where('id',$serviceDetails->user_id)->first();


                }

                if($packageId==1)
                {

                    $packageName="Regular Package";

                }
                else if($packageId==2)
                {

                    
                    $packageName="Premium Package";


                }
                else if($packageId==3)
                {

                    
                    $packageName="Pro Package";


                }
                else if($packageId==4)
                {

                    
                    $packageName="Ultrapro Package";


                }

                $virtualAssistantPrice=Virtual_assistant::sum('price');         
                
                //semd mail to tourist
                $details = [

                    'title' => 'Payment Confirmation Email',
                    'body' => 'Your payment (Tran No - '.$tran_id.') suceessfully done.We will contact with you as soon as possible.',
                    'packageId'=> $packageId,
                    'transactionId'=>$tran_id
                ];
            
                \Mail::to(Auth::user()->email)->send(new \App\Mail\PaymentConfirmationMail($details));

                //semd mail to local guide or local host
                $details = [

                    'title' => 'Service Notification Email',
                    'body' => Auth::user()->name.' hire you with '.$amountOfPerson.' person from - '.$from.' to '.$to.' date for your service name - '.$serviceDetails->service_name
    
                ];

                $today=$paymentDate;
                
                \Mail::to($serviceHolderProfile->email)->send(new \App\Mail\ServiceNotificationMail($details));
      
                $pdf = PDF::loadView('tourist.SuccesfullPaymentCopy', compact('virtualAssistantPrice','packageId','packageName','today', 'tran_id','from','to','amountOfDay','amountOfPerson','serviceHolderProfile','serviceDetails','placeDetails','totalBill'));
                
                return $pdf->stream('Payment Copy.pdf',array("Attachment" => false));

                exit();


                //echo "<br >Transaction is successfully Completed";
            } else {
                /*
                That means IPN did not work or IPN URL was not set in your merchant panel and Transation validation failed.
                Here you need to update order status as Failed in order table.
                */
                $update_product = DB::table('orders')
                    ->where('transaction_id', $tran_id)
                    ->update(['status' => 'Failed']);
                echo "validation Fail";
            }
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Success' || $order_detials->status == 'Complete') {
            /*
             That means through IPN Order status already updated. Now you can just show the customer that transaction is completed. No need to udate database.
             */

            //Get session for view in pdf
            $totalBill=Session::get('totalBill');
            $from=Session::get('from');
            $to=Session::get('to');
            $amountOfDay=Session::get('amountOfDay');
            $amountOfPerson=Session::get('amountOfPerson');
            $packageId=Session::get('packageId');
            $lgServiceId=Session::get('lgServiceId');
            $lhServiceId=Session::get('lhServiceId');
            $paymentDate=Session::get('paymentDate');

            //handle session out
            if($packageId==null)
            {

                return redirect::to('/');

            }
       
             //local guide
             if($lgServiceId !=null)
             {

                $serviceDetails=Local_guide_service::where('id',$lgServiceId)->first();
 
                $placeDetails=Place::where('id',$serviceDetails->place_id)->first();

                $serviceHolderProfile=User::where('id',$serviceDetails->user_id)->first();


             }
             //local host
             else if($lhServiceId !=null)
             {

                $serviceDetails=Local_host_service::where('id',$lhServiceId)->first();
            
                $placeDetails=Place::where('id',$serviceDetails->place_id)->first();

                $serviceHolderProfile=User::where('id',$serviceDetails->user_id)->first();


             }

             if($packageId==1)
             {

                $packageName="Regular Package";

             }
             else if($packageId==2)
             {

                
                $packageName="Premium Package";


             }
             else if($packageId==3)
             {

                
                $packageName="Pro Package";


             }
             else if($packageId==4)
             {

                
                $packageName="Ultrapro Package";


             }

            $virtualAssistantPrice=Virtual_assistant::sum('price');

            $today=$paymentDate;

            $pdf = PDF::loadView('tourist.SuccesfullPaymentCopy', compact('virtualAssistantPrice','packageId','packageName','today', 'tran_id','from','to','amountOfDay','amountOfPerson','serviceHolderProfile','serviceDetails','placeDetails','totalBill'));

            return $pdf->stream('Payment Copy.pdf',array("Attachment" => false));
            
            // return view('tourist.paymentCopy');

            exit();
            

        } else {
            #That means something wrong happened. You can redirect customer to your product page.
            echo "Invalid Transaction";
        }


    }

    public function fail(Request $request)
    {
        $tran_id = $request->input('tran_id');

        $order_detials = DB::table('orders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'status', 'currency', 'amount')->first();

        if ($order_detials->status == 'Pending') {
            $update_product = DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->update(['status' => 'Failed']);
            echo "Transaction is Falied";
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            echo "Transaction is already Successful";
        } else {
            echo "Transaction is Invalid";
        }

    }

    public function cancel(Request $request)
    {
        $tran_id = $request->input('tran_id');

        $order_detials = DB::table('orders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'status', 'currency', 'amount')->first();

        if ($order_detials->status == 'Pending') {
            $update_product = DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->update(['status' => 'Canceled']);
            echo "Transaction is Cancel";
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            echo "Transaction is already Successful";
        } else {
            echo "Transaction is Invalid";
        }


    }

    public function ipn(Request $request)
    {
        #Received all the payement information from the gateway
        if ($request->input('tran_id')) #Check transation id is posted or not.
        {

            $tran_id = $request->input('tran_id');

            #Check order status in order tabel against the transaction id or order id.
            $order_details = DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->select('transaction_id', 'status', 'currency', 'amount')->first();

            if ($order_details->status == 'Pending') {
                $sslc = new SslCommerzNotification();
                $validation = $sslc->orderValidate($tran_id, $order_details->amount, $order_details->currency, $request->all());
                if ($validation == TRUE) {
                    /*
                    That means IPN worked. Here you need to update order status
                    in order table as Processing or Complete.
                    Here you can also sent sms or email for successful transaction to customer
                    */
                    $update_product = DB::table('orders')
                        ->where('transaction_id', $tran_id)
                        ->update(['status' => 'Processing']);

                    echo "Transaction is successfully Completed";
                } else {
                    /*
                    That means IPN worked, but Transation validation failed.
                    Here you need to update order status as Failed in order table.
                    */
                    $update_product = DB::table('orders')
                        ->where('transaction_id', $tran_id)
                        ->update(['status' => 'Failed']);

                    echo "validation Fail";
                }

            } else if ($order_details->status == 'Processing' || $order_details->status == 'Complete') {

                #That means Order status already updated. No need to udate database.  
                
                echo "Transaction is already successfully Completed";
            } else {
                #That means something wrong happened. You can redirect customer to your product page.

                echo "Invalid Transaction";
            }
        } else {
            echo "Invalid Data";
        }
    }

}
