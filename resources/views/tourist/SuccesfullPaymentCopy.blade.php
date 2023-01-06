<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />

		<title>Payment Copy</title>

		<!-- Favicon -->
		<link rel="icon" href="./images/favicon.png" type="image/x-icon" />

		<!-- Invoice styling -->
		<style>
			body {
				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
				text-align: center;
				color: #777;
			}

			body h1 {
				font-weight: 300;
				margin-bottom: 0px;
				padding-bottom: 0px;
				color: #000;
			}

			body h3 {
				font-weight: 300;
				margin-top: 10px;
				margin-bottom: 20px;
				font-style: italic;
				color: #555;
			}

			body a {
				color: #06f;
			}

			.invoice-box {
				max-width: 800px;
				margin: auto;
				padding: 30px;
				border: 1px solid #eee;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
				font-size: 16px;
				line-height: 24px;
				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
				color: #555;
			}

			.invoice-box table {
				width: 100%;
				line-height: inherit;
				text-align: left;
				border-collapse: collapse;
			}

			.invoice-box table td {
				padding: 5px;
				vertical-align: top;
			}

			.invoice-box table tr td:nth-child(2) {
				text-align: right;
			}

			.invoice-box table tr.top table td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.top table td.title {
				font-size: 45px;
				line-height: 45px;
				color: #333;
			}

			.invoice-box table tr.information table td {
				padding-bottom: 40px;
			}

			.invoice-box table tr.heading td {
				background: #eee;
				border-bottom: 1px solid #ddd;
				font-weight: bold;
			}

			.invoice-box table tr.details td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.item td {
				border-bottom: 1px solid #eee;
			}

			.invoice-box table tr.item.last td {
				border-bottom: none;
			}

			.invoice-box table tr.total td:nth-child(2) {
				border-top: 2px solid #eee;
				font-weight: bold;
			}

			@media only screen and (max-width: 600px) {
				.invoice-box table tr.top table td {
					width: 100%;
					display: block;
					text-align: center;
				}

				.invoice-box table tr.information table td {
					width: 100%;
					display: block;
					text-align: center;
				}
			}
		</style>
	</head>

	<body>


		<div class="invoice-box" style="margin-top:-70px;">
			<table>
				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td class="title">

									<img src="{{ public_path('assets/img/logo.png')}}" alt="Company logo" style="margin-top:-90x !important;margin-left:-40px;width: 100%; max-width: 200px" />
								</td>

								<td>
           

              @php
                  $generatorPNG = new Picqer\Barcode\BarcodeGeneratorPNG();
              @endphp
  
              <img style="margin-top:30px;" src="data:image/png;base64,{{ base64_encode($generatorPNG->getBarcode($tran_id, $generatorPNG::TYPE_CODE_128)) }}">
								
              <br>
              <p style="margin-top:5px;"> Tranx No #: {{ $tran_id }}
                  <br />
									Date: {{ $today }}<br />

                  </p>

								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="information" >
					<td colspan="2">
						<table  style="margin-top:-46px;">
							<tr>
								<td>
									<b>Service Provider Profile</b><br />
									{{ $serviceHolderProfile->name }}<br />
								  {{ $serviceHolderProfile->email }} <br>
                  Phone: {{ $serviceHolderProfile->phone }}
								</td>

								<td>
                  <b>Tourist Profile</b><br />
									{{ Auth::user()->name }}<br />
									{{ Auth::user()->email  }} <br>
                  Phone: {{ Auth::user()->phone  }}
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="heading">
					<td>Payment Details</td>

					<td>Details</td>
				</tr>

				<tr class="item">
					<td>Payment Method</td>

					<td>Online</td>
				</tr>

        <tr class="item">
					<td>Status</td>

					<td>Paid</td>
				</tr>

        <tr class="heading">
					<td>Service Information</td>

					<td>Details</td>
				</tr>

				<tr class="item">
					<td>Package Name</td>

					<td>{{ $packageName }}</td>
				</tr>

        <tr class="item">
					<td>Service Name</td>

					<td>{{ $serviceDetails->service_name }}</td>
				</tr>
  
				<tr class="heading">
					<td>Service Details</td>

					<td>Price</td>
				</tr>

        @if($packageId==1)

          <tr class="item">
            <td>Hotel Service</td>

            <td>Tk {{ $serviceDetails->hotel_price }}</td>
          </tr>
          <tr class="item">
            <td>Food Service</td>

            <td>Tk {{ $serviceDetails->food_price }}</td>
          </tr>
          <tr class="item">
            <td>Local Guide</td>

            <td>Tk {{ $serviceDetails->service_charge }}</td>
          </tr>
          

        @elseif($packageId==2)

          <tr class="item">
            <td>Room Service</td>

            <td>Tk {{ $serviceDetails->room_price }}</td>
          </tr>
          <tr class="item">
            <td>Food Service</td>

            <td>Tk {{ $serviceDetails->food_price }}</td>
          </tr>
          


        @elseif($packageId==3)

          <tr class="item">
            <td>Room Service</td>

            <td>Tk {{ $serviceDetails->room_price }}</td>
          </tr>
          <tr class="item">
            <td>Food Service</td>

            <td>Tk {{ $serviceDetails->food_price }}</td>
          </tr>
          <tr class="item">
            <td>Virtual Assistant</td>

            <td>Tk {{ $virtualAssistantPrice }}</td>
          </tr>



        @elseif($packageId==4)

        <tr class="item">
            <td>Hotel Service</td>

            <td>Tk {{ $serviceDetails->hotel_price }}</td>
          </tr>
          <tr class="item">
            <td>Food Service</td>

            <td>Tk {{ $serviceDetails->food_price }}</td>
          </tr>
          <tr class="item">
            <td>Local Guide</td>

            <td>Tk {{ $serviceDetails->service_charge }}</td>
          </tr>
          <tr class="item">
            <td>Virtual Assistant</td>

            <td>Tk {{ $virtualAssistantPrice }}</td>
          </tr>


        

        @endif

		



				<tr class="total">
					<td></td>

					<td>Total: Tk {{ $totalBill }}</td>
       
				</tr>

        <tr class="total">
					<td></td>

          <td>(For {{ $amountOfPerson }} person, {{ $amountOfDay }} day)</td>
       
				</tr>


      
			</table>

      <br>

   
   
		</div>
    <img src="{{ public_path('assets/img/signature.png')}}" alt="Signature" style="margin-top:-10x !important;margin-left:-550px;width: 100%; max-width: 200px" />
    
    <div >
    <h3  style="margin-left:-550px;">Founder</h3>
    <h3 style="margin-top:-50x !important;margin-left:-550px;">Gurta Jabo</h3>

    </div>
	</body>
</html>