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
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    @foreach($histories as $history)
        <tr>
            
            <td scope="row" data-label="Period">{{ $history->from_date }} - {{ $history->to_date }}</td>
            <td data-label="Place">{{ $history->place->name }}</td>
            <td data-label="Transaction No">{{ $history->transaction_id }}</td>
            <td data-label="Action"><a href="" class="btn btn-success">Download</a></td>
            
        </tr>
    @endforeach
 
  </tbody>
</table>
@endsection()

