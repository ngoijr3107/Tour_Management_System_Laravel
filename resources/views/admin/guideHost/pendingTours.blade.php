@extends('admin/layout')

@section('container')



    <div class="row">

   

   
        <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                    <h4 class="card-title">Pending Tours</h4>
                    <p class="card-description">


                    </p>
                    <div class="table-responsive">
                        <table class="table table-striped">
                        <thead>
                            <tr>
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

                            <th>
                                Tour Status
                            </th>
                          
                            </tr>
                        </thead>
                        <tbody>

                            @foreach($pendingTours as $pendingTour)

                                <tr>

                                <td>

                                    {{ $pendingTour->from_date }}

                                </td>

                                <td>

                                    {{ $pendingTour->to_date }}

                                </td>

                                <td>

                                    {{ $pendingTour->place->name }}

                                </td>
                                <td>

                                    <a class="btn btn-rounded btn-success" href="{{ url('pendingTour/details/'. $pendingTour->id) }}">Details</a>

                                </td>
                              
                                <td>

                                    <a class="btn btn-rounded btn-primary" href="{{ url('pendingTour/send/completed-request'. $pendingTour->id) }}">Send Complete Request</a>


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