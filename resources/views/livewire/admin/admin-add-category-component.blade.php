


  <div class="content-wrapper">
  
  
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h1><center><u>Add Category Form</u></center></h1>
          </div>
          <div class="col-sm-12">
            <ol class="breadcrumb float-sm-right">
             <!--  <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
 -->              <!-- <li class="breadcrumb-item"><a href="#">Lists</li> --> 
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
                <h3 class="card-title">Categroy Form</h3>
                @if(Session::has('message'))
              <div class="alert alert-success" role="alert">
                {{Session::get('message')}}
              </div>
              @endif
              
              </div>
              <!-- /.card-header -->
              
              <!-- form start -->
              <form wire:submit.prevent="storeCategory">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputCategory">Category Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Category Name" autocomplete="off" wire:model="name" wire:keyup="generateslug" />
                    @error('name') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                   <div class="form-group">
                    <label for="exampleInputCategory">Category Slug</label>
                    <input type="text" class="form-control" id="slug" name="slug" placeholder="Enter Category Slug" autocomplete="off"wire:model="slug" />
                    @error('slug') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                  <div class="form-group">
                  <label for="exampleSelectCategory">Parent Category</label>
                  <select class="form-control" wire:model="category_id">
                    <option value="">None<option>
                      @foreach ($categories as $category)
                        <option value="{{$category->id}}">{{$category->name}}</option>
                      @endforeach
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
  