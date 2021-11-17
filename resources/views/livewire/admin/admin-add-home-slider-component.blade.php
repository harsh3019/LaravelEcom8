

 
  <div class="content-wrapper">
    
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h1><center><u>Add HomeSlider Form</u></center></h1>
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
                <h3 class="card-title">HomeSlider Form</h3>
                @if(Session::has('message'))
              <div class="alert alert-success" role="alert">
                {{Session::get('message')}}
              </div>
              @endif
              
              </div>
              <!-- /.card-header -->
              
              <!-- form start -->
              <form enctype="multipart/form-data" wire:submit.prevent="addSlide">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputProduct">Title</label>
                    <input type="text" class="form-control"  placeholder="Enter Title" autocomplete="off" wire:model="title" />
                  </div>

                   <div class="form-group">
                    <label for="exampleInputCategory">Sub Title</label>
                    <input type="text" class="form-control"  placeholder="Enter Sub Title" autocomplete="off" wire:model="subtitle" />
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCategory">Price</label>
                    <input type="text" class="form-control"  placeholder="Enter Price" autocomplete="off" wire:model="price" />
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCategory">Link</label>
                   <input type="text" class="form-control"  placeholder="Enter Link" autocomplete="off" wire:model="link" />
                  </div>
                    
                    <div class="form-group">
                    <label for="exampleInputCategory">Image</label>
                    <input type="file" class="form-control input-file" autocomplete="off" wire:model="image" />
                    @if($image)
                    <img src="{{$image->temporaryUrl()}}" width="120px" />
                    @endif
                  </div>

                  
                  <div class="form-group">
                    <label for="exampleInputCategory">Status</label>
                    <select class="form-control" wire:model="status">
                      <option value="0">Inactive</option>
                      <option value="1">Active</option>
                    </select>
                  </div>

                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->

            <!-- general form elements -->
           
           

          </div>
         
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  