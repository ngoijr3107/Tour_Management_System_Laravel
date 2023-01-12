@extends('admin/layout')

@section('container')



    <div class="row">

   

   
        <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                    <h4 class="card-title">Pending Guide & Host</h4>
                    <p class="card-description">


                    </p>
                    <div class="table-responsive">
                        <table class="table table-striped">
                        <thead>
                            <tr>
                            <th>
                                User
                            </th>
                            <th>
                                Name
                            </th>
                            <th>
                                Email
                            </th>
                            <th>
                                Phone
                            </th>
                            <th>
                                Address
                            </th>
                        
                            </tr>
                        </thead>
                        <tbody>

                            @foreach($pendingGuideHosts as $pendingGuideHost)

                                <tr>
                                <td class="py-1">
                                    <img src="{{ $pendingGuideHost->profile_photo_url }}" alt="image"/>
                                </td>
                                <td>
                                    {{ $pendingGuideHost->name }}
                                </td>
                                <td>

                                    {{ $pendingGuideHost->email }}

                                </td>
                                <td>
                                    {{ $pendingGuideHost->phone }}
                                </td>
                                <td>
                                    <a class="btn btn-rounded btn-success" href="{{ url('local-pendingGuideHost/list/'. $pendingGuideHost->id) }}">Details</a>
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