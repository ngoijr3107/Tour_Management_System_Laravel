@extends('tourist/layout')

@section('container')

    <br>

    <div class="container" >
        <div class="card">
            <div class="card-header">

                <strong>Pro Package</strong> 
                <span class="float-right"> <strong>Rating:</strong> <i class="fa fa-star text-primary mr-2"></i>{{ $hostService->rating }}</span>

            </div>
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-sm-6">
                        <h6 class="mb-3">Local Host Profile:</h6>
                    <div>
                    <img width="40px;" style="border-radius:50%;" src="{{ $hostProfile->profile_photo_url }}">
                    <strong style="margin-left:5px;"> {{ $hostProfile->name }}</strong>
                </div>

                <div style="margin-top:10px;">Email: {{ $hostProfile->email }}</div>
                <div>Phone: {{ $hostProfile->phone }}</div>
                <div>Address: {{ $hostProfile->address }}</div>
                <div>Date of Birth: {{ $hostProfile->date_of_birth }}</div>

                <br>

    
                Service Name : <strong>{{ $hostService->service_name }}</strong>

                <br>


                
            </div>

            <div class="col-sm-6">
               
                <br>

            <div>
           
        </div>
        <div class="row">
                <div class="col-lg-6 col-md-6 mb-4">
                    <div class="package-item bg-white mb-2">
                    <img class="img-fluid" src="{{ asset('assets/lhRoomImage/'.$hostService->room_picture) }}" style="height:162px;width:400px;" alt="">
                        <div class="p-4">
                         
                            <a class="h5 text-decoration-none" href="">Hotel Room</a>
                           
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 mb-4">
                    <div class="package-item bg-white mb-2">
                        <img class="img-fluid" src="{{ asset('assets/lhFoodImage/'.$hostService->food_picture) }}" style="height:162px;width:400px;" alt="">

                        <div class="p-4">
                          
                            <a class="h5 text-decoration-none" href="">Food Item</a>
                            
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
            <td class="left strong">Room Service</td>
            <td class="left"></td>

        
            <td class="right">৳{{ $hostService->room_price }}</td>
        </tr>
        <tr>
            <td class="center">2</td>
            <td class="left">Food Service</td>
            <td class="left">Menu : {{ $hostService->food_item }}</td>

          
            <td class="right">৳{{ $hostService->food_price }}</td>
        </tr>
        <tr>
            <td class="center">3</td>
            <td class="left">Virtual Assistant</td>
            <td class="left">{{ $virtualAssistant->feature }}</td>

          
            <td class="right">৳{{ $virtualAssistantPrice }}</td>
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
                        <td class="right">৳{{ $hostService->total_price + $virtualAssistantPrice }}</td>
                    </tr>
                 
                 
                </tbody>
            </table>

        </div>

    </div>

    
    <form method="post" action="{{ url('/pay/now') }}">

        <div class="form-group">
            <label for="exampleInputEmail1">From</label>
            <input type="date" class="form-control" name="from" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">To</label>
            <input type="date" class="form-control" name="to" id="exampleInputPassword1" placeholder="">
        </div>

        <div class="form-group">
            <label for="exampleInputPassword1">Amount of Person</label>
            <input type="number" class="form-control" name="person" id="exampleInputPassword1" placeholder="1">
        </div>

        <button type="submit" class="btn btn-success">Pay Now</button>


    </form>

    </div>
    </div>
    
    </div>

    


@endsection()