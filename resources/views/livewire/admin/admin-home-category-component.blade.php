

 
  <div class="content-wrapper">
    
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h1><center><u>Manage Home Category</u></center></h1>
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
                <h3 class="card-title">Product Form</h3>
                @if(Session::has('message'))
              <div class="alert alert-success" role="alert">
                {{Session::get('message')}}
              </div>
              @endif
              
              </div>
              <!-- /.card-header -->
              
              <!-- form start -->
              <form wire:submit.prevent="updateHomeCategory">
                @csrf
                     <div class="card-body">
        
                      <div class="form-group" wire:ignore>
                      <label for="exampleInputCategory">Choose Categories</label>
                      <select class="sel_categories form-control" name="categories[]" multiple="multiple" wire:model="selected_categories">
                        @foreach($categories as $category)
                        <option value="{{$category->id}}">{{$category->name}}</option>
                        @endforeach
                      </select>
                    </div>

                  

                     <div class="form-group">
                      <label for="exampleInputCategory">No .Of Products</label>
                      <input type="text" class="form-control" placeholder="Enter Product" autocomplete="off" wire:model="numberofproducts" />
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

  @push('scripts')
  <script>
    $(document).ready(function(){
      
      $('.sel_categories').select2();
      $('.sel_categories').on('change',function(e){

        var data = $('.sel_categories').select2("val");
        @this.set('selected_categories',data);
      })

    });
  </script>
  @endpush