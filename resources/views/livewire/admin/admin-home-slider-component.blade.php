


     <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <style type="text/css">
      nav svg{
        height: 20px;
      }
      nav .hidden
      {
        display: block !important;
      }
    </style>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Manage Home Slider</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <!-- <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
               <li class="breadcrumb-item"><a href="/admin/slider/add">Add New</a></li> -->
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">HomeSlider List</h3>
              @if(Session::has('message'))
                <div class="alert alert-success" role="alert">
                  {{Session::get('message')}}
                </div>
                @endif
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>Sr No.</th>
                    <th>Image</th>
                    <th>Title</th>
                    <th>SubTitle</th>
                    <th>Price</th>
                    <th>Link</th>
                    <th>Status</th>
                    <th>Date</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                @foreach($sliders as $key => $value) 
                  <tr>
                    <!-- <td>{{++$key}}</td> -->
                   <td>{{$value->id}}</td>
                    <td><img src="{{asset('assets/images/sliders')}}/{{$value->image}}" width="120px"></td>
                    <td>{{$value->title}}</td>
                     <td>{{$value->subtitle}}</td>
                      <td>{{$value->price}}</td>
                        <td>{{$value->link}}</td>
                       <td>{{$value->status == 1 ? 'Active':'Inactive'}}</td>
                       <td>{{$value->created_at}}</td>
                    <td><i class="fas fa-edit" style="color:blue"></i>&nbsp;<a href="{{route('admin.edithomeslider',['slide_id' => $value->id])}}">Edit</a></td>

                   <td><i class="fas fa-trash-alt" style="color: red"></i>&nbsp;<a href="#" wire:click.prevent="deleteSlide({{$value->id}})">Delete</a></td>
                  </tr>
                 

                  </tbody>
               @endforeach 
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
     {{$sliders->links()}}
    </section>
    <!-- /.content -->
   <!--  <style type="text/css">
      .w-5 {
        display: none;
      }
    </style> -->
  </div>
  <!-- /.content-wrapper -->