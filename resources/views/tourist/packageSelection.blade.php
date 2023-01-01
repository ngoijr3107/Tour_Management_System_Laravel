@extends('tourist/layout')

@section('container')


     <!-- Package Start -->
     <div class="container-fluid py-5">
        <div class="container pt-5 pb-3">
            <div class="text-center mb-3 pb-3">
                <h6 class="text-primary text-uppercase" style="letter-spacing: 5px;">Best Affordable Package</h6>
                <h1>Select your package</h1>
            </div>
            <div class="row">
                <div class="card" style="width: 17rem;margin-left:10px;margin-top:10px;">
                    <div class="card-header">
                        Regular Package
                    </div>
                    <ul class="list-group list-group-flush">
                        <br>
                        <li class="list-group-item"><i class="fa fa-check text-primary mr-3"></i>Local Guide</li>
                        <li class="list-group-item">&emsp;&emsp;Local Host</li>
                        <li class="list-group-item">&emsp;&emsp;Virtual Assistant</li>
                        <br>
                        <hr>
                        <button type="button" class="btn btn-success">Get Started</button>

                    </ul>

              
                </div>
                <div class="card" style="width: 17rem;margin-left:10px;margin-top:10px;">
                    <div class="card-header">
                        Premium Package
                    </div>
                    <ul class="list-group list-group-flush">
                        <br>
                        <li class="list-group-item"></i>&emsp;&emsp;Local Guide</li>
                        <li class="list-group-item"><i class="fa fa-check text-primary mr-3"></i>Local Host</li>
                        <li class="list-group-item">&emsp;&emsp;Virtual Assistant</li>
                        <br>
                        <hr>
                        <button type="button" class="btn btn-success">Get Started</button>


                    </ul>
                </div>
                <div class="card" style="width: 17rem;margin-left:10px;margin-top:10px;">
                    <div class="card-header">
                        Pro Package
                    </div>
                    <ul class="list-group list-group-flush">
                        <br>
                        <li class="list-group-item">&emsp;&emsp;Local Guide</li>
                        <li class="list-group-item"><i class="fa fa-check text-primary mr-3"></i>Local Host</li>
                        <li class="list-group-item"><i class="fa fa-check text-primary mr-3"></i>Virtual Assistant</li>
                        <br>
                        <hr>
                        <button type="button" class="btn btn-success">Get Started</button>
                    </ul>
                </div>
                <div class="card" style="width: 17rem;margin-left:10px;margin-top:10px;">
                    <div class="card-header">
                        Ultra Pro Package
                    </div>
                    <ul class="list-group list-group-flush">
                        <br>
                        <li class="list-group-item"><i class="fa fa-check text-primary mr-3"></i>Local Guide</li>
                        <li class="list-group-item">&emsp;&emsp;Local Host</li>
                        <li class="list-group-item"><i class="fa fa-check text-primary mr-3"></i>Virtual Assistant</li>
                        <br>
                        <hr>
                        <button type="button" class="btn btn-success">Get Started</button>

                    </ul>
                </div>
             
               
            </div>
        </div>
    </div>
    <!-- Package End -->



@endsection()