@extends('admin/layout')

@section('container')



    <div class="row">

   

   
        <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                    <h4 class="card-title">Booking List</h4>
                    <p class="card-description">


                    </p>
                    <div class="table-responsive">
                        <table class="table table-striped">
                        <thead>
                            <tr>
                            <th>
                                Transaction No
                            </th>
                            <th>
                                From
                            </th>
                            <th>
                                To
                            </th>
                          
                            <th>
                                Place
                            </th>
                                                  
                            <th>
                                Action
                            </th>
                            
                            </tr>
                        </thead>
                        <tbody>

                            @foreach($bookingLists as $bookingList)

                                <tr>

                                <td>

                                    {{ $bookingList->transaction_id }}

                                </td>

                                <td>

                                    {{ $bookingList->from_date }}

                                </td>

                                <td>

                                    {{ $bookingList->to_date }}

                                </td>

                                <td>

                                    {{ $bookingList->place->name }}

                                </td>
                                <td>

                                    <a class="btn btn-rounded btn-success" href="{{ url('bookingList/details/'. $bookingList->id) }}">Details</a>

                                </td>
                              
                             

                                </tr>
                            
                             
                            @endforeach
                        </tbody>
                        </table>
                    </div>
                    </div>
                </div>
                </div>
        
    

     
    </div>

@endsection()