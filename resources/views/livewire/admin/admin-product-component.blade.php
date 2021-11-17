


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
            <h1>All Products</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
            <!--    <li class="breadcrumb-item"><a href="/admin/category/add">Add New</a></li> -->
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
                <h3 class="card-title">Products List</h3>
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
                    <th>Product Image</th>
                    <th>Product Name</th>
                    <th>Stock</th>
                    <th>Price</th>
                    <th>Sale Price</th>
                    <th>Category</th>
                    <th>Date</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach($products as $key => $value)
                  <tr>
                    <!-- <td>{{++$key}}</td> -->
                    <td>{{$value->id}}</td>

                    <td><img src="{{asset('assets/images/products')}}/{{$value->image}}" width="80" /></td>

                    <td>{{$value->name}}</td>

                    <td>{{$value->stock_status}}</td>

                    <td>{{$value->regular_price}}</td>

                    <td>{{$value->sale_price}}</td>

                    <td>{{$value->category->name}}</td>

                    <td>{{$value->created_at}}</td>

                    <td><i class="fas fa-edit" style="color:blue">&nbsp;<a href="{{route('admin.editproduct',['product_slug'=>$value->slug])}}">Edit</a></td>

                    <td><i class="fas fa-trash-alt" style="color: red"></i>&nbsp;<a href="#" onclick="confirm('Are you sure,You want to delete this Product?') || event.stopImmediatePropagation()" wire:click.prevent="deleteProduct({{$value->id}})">Delete</a></td>
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
      {{$products->links()}}
    </section>
    <!-- /.content -->
   <!--  <style type="text/css">
      .w-5 {
        display: none;
      }
    </style> -->
  </div>
  <!-- /.content-wrapper -->