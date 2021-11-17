

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
            <h1>All Contact Info</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
              <!--  <li class="breadcrumb-item"><a href="/admin/category/add">Add New</a></li> -->
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
                <h3 class="card-title">Contact List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>Customer Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Message</th>
                    <th>Created_At</th>
                  </tr>
                  </thead>
                  <tbody>

                    @php
                    $i=1;
                    @endphp

                    @foreach($contact as $key => $value)
                  <tr>
                    <!-- <td>{{++$key}}</td> -->
                    <td>{{$i++}}</td>
                    <td>{{$value->name}}</td>
                    <td>{{$value->email}}</td>
                    <td>{{$value->phone}}</td>
                    <td>{{$value->comment}}</td>
                    <td>{{$value->created_at}}</td>
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
      {{$contact->links()}}
    </section>
    <!-- /.content -->
   <!--  <style type="text/css">
      .w-5 {
        display: none;
      }
    </style> -->
  </div>
  <!-- /.content-wrapper -->