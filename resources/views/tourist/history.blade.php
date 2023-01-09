@extends('tourist/layout')

@section('container')

<link href="{{ asset('assets/css/styleHistory.css')}}" rel="stylesheet">

<br>

<center><h3>History</h3></center>

<br>

<table>

  <thead>
    <tr>
      <th scope="col">Period</th>
      <th scope="col">Place</th>
      <th scope="col">Tran No</th>
      <th scope="col">Tour Status</th>
      <th scope="col">Payment Copy</th>
      <th scope="col">Virtual Assistant Service</th>
    </tr>
  </thead>
  <tbody>
    @foreach($histories as $history)
        <tr>

            <td scope="row" data-label="Period">{{ $history->from_date }} - {{ $history->to_date }}</td>
            <td data-label="Place">{{ $history->place->name }}</td>
            <td data-label="Tour Status">{{ $history->transaction_id }}</td>
            <td data-label="Transaction No">{{ $history->tour_status }}</td>
            <td data-label="Payment Copy"><a href="{{ url('/download/payment-copy/'.$history->id) }}" class="btn btn-success">Download</a></td>
            @if($history->package_id=='3' || $history->package_id=='4')
            
              <td data-label="Virtual Assistant Service"><a href="{{ url('http://localhost:3000/?transactionId='.$history->transaction_id) }}"  target="_blank" class="btn btn-danger">Get App</a></td>
            
            @else

              <td data-label="Virtual Assistant Service">Not Available</td>  
            
            @endif
        </tr>
    @endforeach
 
  </tbody>
</table>
@endsection()
