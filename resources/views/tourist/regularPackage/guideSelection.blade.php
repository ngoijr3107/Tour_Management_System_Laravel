@extends('tourist/layout')

@section('container')



    <!-- Packages Start -->
    <div class="container-fluid py-5">
        <div class="container pt-5 pb-3">
            <div class="text-center mb-3 pb-3">
                <h6 class="text-primary text-uppercase" style="letter-spacing: 5px;">Local Guides</h6>
                <h1>Select Local Guide</h1>
            </div>
            <div class="row">
                @foreach($localGuides as $guide)

                    @foreach($guide->local_guide_services as $service)

                        @if($service->place_id==$placeId)

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="package-item bg-white mb-2">
                                <img class="img-fluid" src="{{ asset('assets/lgHotelRoomImage/'.$service->room_picture) }}" style="height:200px;width:400px;" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>{{ $place->name }}</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>Per days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>Per Person</small>
                                    </div>

                                    <br>


                                    <a class="h5 text-decoration-none"  href="">{{  $service->service_name }}</a>
                                    <p style="margin-top:0.5px;"></p>
                                  
                                    <i>offered by</i>
                                    <p style="margin-top:0.1px;"></p>
                                    <img width="40px;" style="border-radius:50%;" src="{{ $guide->profile_photo_url }}">  {{ $guide->name }}
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>{{ $service->rating }} <small>(250)</small></h6>
                                            <h5 class="m-0">৳{{ $service->total_price }}</h5>
                                        </div>
                                    </div>
                                    <br>

                                    <div class="">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><small>

                                            

                                            <div class="rate">

                                                <input type="radio" onclick="handlerClick()" id="star5" name="rate" value="5" />
                                                <label for="star5" title="text">5 stars</label>
                                                <input type="radio" id="star4" name="rate" value="4" />
                                                <label for="star4" title="text">4 stars</label>
                                                <input type="radio" id="star3" name="rate" value="3" />
                                                <label for="star3" title="text">3 stars</label>
                                                <input type="radio" id="star2" name="rate" value="2" />
                                                <label for="star2" title="text">2 stars</label>
                                                <input type="radio" id="star1" name="rate" value="1" />
                                                <label for="star1" title="text">1 star</label>

                                            </div>



                                            </small></h6>
                                            <h5  class="m-0">

                                                @if($service->available=="Yes")

                                                    <a href="{{ url('/place/'.$placeId.'/regular-package/'.$packageId.'/guide-service/'.$service->id) }}" class="btn btn-success ">Details</a>
                                                
                                                
                                                @else

                                                    <button class="btn btn-danger ">Not Available</button>



                                                @endif




                                            </h5>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endif

                    @endforeach

                @endforeach
              
            </div>
        </div>
    </div>
    <!-- Packages End -->

@endsection()


<style>

    *{
        margin: 0;
        padding: 0;
    }
    .rate {
        float: left;
        height: 46px;
        padding: 0 10px;
    }
    .rate:not(:checked) > input {
        position:absolute;
        top:-9999px;
    }
    .rate:not(:checked) > label {
        float:right;
        width:1em;
        overflow:hidden;
        white-space:nowrap;
        cursor:pointer;
        font-size:30px;
        color:#ccc;
    }
    .rate:not(:checked) > label:before {
        content: '★ ';
    }
    .rate > input:checked ~ label {
        color: #ffc700;    
    }
    .rate:not(:checked) > label:hover,
    .rate:not(:checked) > label:hover ~ label {
        color: #deb217;  
    }
    .rate > input:checked + label:hover,
    .rate > input:checked + label:hover ~ label,
    .rate > input:checked ~ label:hover,
    .rate > input:checked ~ label:hover ~ label,
    .rate > label:hover ~ input:checked ~ label {
        color: #c59b08;
    }

/* Modified from: https://github.com/mukulkant/Star-rating-using-pure-css */


</style>