

 
  <div class="content-wrapper">
    
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h1><center><u>Admin Setting Form</u></center></h1>
          </div>
          <div class="col-sm-12">
            <ol class="breadcrumb float-sm-right">
             <!--  <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li> -->
              <!-- <li class="breadcrumb-item"><a href="#">Lists</li> --> 
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Setting Form</h3>
                @if(Session::has('success_message'))
              <div class="alert alert-success" role="alert">
                {{Session::get('success_message')}}
              </div>
              @endif
              
              </div>
              <!-- /.card-header -->
              
              <!-- form start -->
              <form wire:submit.prevent="saveSetting">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputProduct">Email</label>
                <input type="email" class="form-control" id="email" name="Email" placeholder="Enter Email" autocomplete="off" wire:model="email"/>
                @error('email') <p class="text-danger">{{$message}}</p>@enderror
                  </div>

                   <div class="form-group">
                    <label for="exampleInputCategory">Phone</label>
                 <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter Phone" wire:model="phone"/>
                 @error('phone') <p class="text-danger">{{$message}}</p>@enderror
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCategory">Phone 2</label>
                   <input type="text" class="form-control" placeholder="Enter Phone 2" wire:model="phone2"/>
                   @error('phone2') <p class="text-danger">{{$message}}</p>@enderror
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCategory">Address</label>
                   <textarea class="form-control" placeholder="Address" wire:model="address"></textarea>
                   @error('address') <p class="text-danger">{{$message}}</p>@enderror
                  </div>
                    
                    <div class="form-group">
                    <label for="exampleInputCategory">Maps</label>
                    <input type="text" class="form-control" placeholder="Enter Maps" autocomplete="off" wire:model="map"/>
                    @error('map') <p class="text-danger">{{$message}}</p>@enderror
                  </div>

                  
                  <div class="form-group">
                    <label for="exampleInputCategory">Twitter</label>
                    <input type="text" class="form-control" placeholder="Enter Twitter" autocomplete="off" wire:model="twitter"/>
                    @error('twitter') <p class="text-danger">{{$message}}</p>@enderror
                  </div>

                    <div class="form-group">
                    <label for="exampleInputCategory">FaceBook</label>
                    <input type="text" class="form-control" placeholder="Enter FaceBook" autocomplete="off" wire:model="facebook"/>
                    @error('facebook') <p class="text-danger">{{$message}}</p>@enderror
                      </div>

                    <div class="form-group">
                    <label for="exampleInputCategory">Pinterest</label>
             <input type="text" class="form-control" placeholder="Enter Pinterest" autocomplete="off" wire:model="pinterest"/>
             @error('pinterest') <p class="text-danger">{{$message}}</p>@enderror
                      </div>

                    <div class="form-group">
                    <label for="exampleInputCategory">Instagram</label>
                    <input type="text" class="form-control" placeholder="Enter Instagram" autocomplete="off" wire:model="instagram"/>
                    @error('instagram') <p class="text-danger">{{$message}}</p>@enderror
                      </div>

                    <div class="form-group">
                    <label for="exampleInputCategory">Youtube</label>
                    <input type="text" class="form-control" placeholder="Enter Youtube" autocomplete="off" wire:model="youtube"/>
                    @error('youtube') <p class="text-danger">{{$message}}</p>@enderror
                      </div>
                  </div>

                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Save</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
         
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  