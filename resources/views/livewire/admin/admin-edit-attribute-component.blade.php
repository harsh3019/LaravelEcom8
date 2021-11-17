


  <div class="content-wrapper">
  
  
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h1><center><u>Edit Attribute Form</u></center></h1>
          </div>
          <div class="col-sm-12">
            <ol class="breadcrumb float-sm-right">
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
                <h3 class="card-title">Edit Attribute Form</h3>
                @if(Session::has('message'))
              <div class="alert alert-success" role="alert">
                {{Session::get('message')}}
              </div>
              @endif
              </div>
              <form wire:submit.prevent="updateAttribute">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                 <label for="exampleInputCategory">Attribute Name</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Enter Attribute Name" 
          autocomplete="off" wire:model="name" />
                    @error('name') <p class="text-danger">{{$message}}</p> @enderror
                  </div>
                     </div>
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
                </div>
              </form>
            </div>
          </div>
         
        </div>
     </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  