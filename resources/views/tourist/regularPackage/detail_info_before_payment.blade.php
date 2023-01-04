@extends('tourist/layout')

@section('container')

    <br>

    <div class="container" >
        <div class="card">
            <div class="card-header">

                <strong>Regular Package</strong> 
                <span class="float-right"> <strong>Rating:</strong> <i class="fa fa-star text-primary mr-2"></i>{{ $guideService->rating }}</span>

            </div>
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-sm-6">
                        <h6 class="mb-3">Local Guide Profile:</h6>
                    <div>
                    <img width="40px;" style="border-radius:50%;" src="{{ $guideProfile->profile_photo_url }}">
                    <strong style="margin-left:5px;"> {{ $guideProfile->name }}</strong>
                </div>

                <div style="margin-top:10px;">Email: {{ $guideProfile->email }}</div>
                <div>Phone: {{ $guideProfile->phone }}</div>
                <div>Address: {{ $guideProfile->address }}</div>
                <div>Date of Birth: {{ $guideProfile->date_of_birth }}</div>

                <br>

    
                Service Name : <strong>{{ $guideService->service_name }}</strong>

                <br>


                
            </div>

            <div class="col-sm-6">
               
                <br>

            <div>
           
        </div>
        <div class="row">
                <div class="col-lg-6 col-md-6 mb-4">
                    <div class="package-item bg-white mb-2">
                        <img class="img-fluid" src="{{ asset('assets/img/package-1.jpg') }}" height="200px" width="600px" alt="">
                        <div class="p-4">
                         
                            <a class="h5 text-decoration-none" href="">Hotel Room</a>
                           
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 mb-4">
                    <div class="package-item bg-white mb-2">
                        <img class="img-fluid" src="{{ asset('assets/img/package-1.jpg') }}" height="200px" width="600px" alt="">
                        <div class="p-4">
                          
                            <a class="h5 text-decoration-none" href="">Food item</a>
                            
                        </div>
                    </div>
                </div>

    </div>


    </div>



    </div>

    


    <div class="table-responsive-sm">
        <table class="table table-striped">
        <thead>
            <tr>
                <th class="center">#</th>
                <th>Service</th>
                <th>Description</th>

           
                <th class="right">Price</th>
            </tr>
        </thead>

        <tbody>
        <tr>
            <td class="center">1</td>
            <td class="left strong">Hotel Price</td>
            <td class="left">{{ $guideService->hotel_name }} ({{ $guideService->room_type }} Room)</td>

        
            <td class="right">৳{{ $guideService->hotel_price }}</td>
        </tr>
        <tr>
            <td class="center">2</td>
            <td class="left">Food Price</td>
            <td class="left">Menu : {{ $guideService->food_item }}</td>

          
            <td class="right">৳{{ $guideService->food_price }}</td>
        </tr>
        <tr>
            <td class="center">3</td>
            <td class="left">Service Charge</td>
            <td class="left">For Local Guide</td>

           
            <td class="right">৳{{ $guideService->service_charge }}</td>
        </tr>
       
        </tbody>
    </table>
    </div>
    <div class="row">
        <div class="col-lg-4 col-sm-5">

        </div>

        <div class="col-lg-4 col-sm-5 ml-auto">
            <table class="table table-clear">
                <tbody>
                    <tr>
                        <td class="left">
                        <strong>Total</strong> 
                        (Per person Per Day)
                        </td>
                        <td class="right">৳{{ $guideService->total_price }}</td>
                    </tr>
                 
                 
                </tbody>
            </table>

        </div>

    </div>

    </div>
    </div>
    
    </div>

    


@endsection()