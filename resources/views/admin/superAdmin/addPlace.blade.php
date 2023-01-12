@extends('admin/layout')

@section('container')

    <div class="row"> 

        <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                    <h4 class="card-title">Place</h4>
                    <p class="card-description">
                        Add Place
                    </p>
                    <form class="forms-sample" method="post" action="{{ url('add/place/process') }}">

                        @csrf

                        <div class="form-group">
                        <label for="exampleInputName1">Place Name</label>
                        <input type="text" class="form-control" id="exampleInputName1" name="placeName" placeholder="Place name">
                        </div>

                        <div class="form-group">
                        <label for="exampleInputName1">Address</label>
                        <input type="text" class="form-control" id="exampleInputName1" name="address" placeholder="Address">
                        </div>
                                           
                        <div class="form-group">
                        <label>Place Image</label>
                        <input type="file" class="file-upload-default" name="placeImage">
                        <div class="input-group col-xs-12">
                            <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                            <span class="input-group-append">
                            <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                            </span>
                        </div>
                        </div>
                
                        <button type="submit" class="btn btn-primary mr-2">Submit</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </form>
                    </div>
                </div>
                </div>
              

    </div>
    

@endsection()