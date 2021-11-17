
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
          .sclist
          {
            list-style: none;
          }
        </style>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <div class="container-fluid">
            <div class="row mb-2">
              <div class="col-sm-6">
                <h1>All Attribute</h1>
              </div>
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
                   <li class="breadcrumb-item"><a href="/admin/attribute/add">Add New</a></li>
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
                    <h3 class="card-title">Categories List</h3>
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
                        <th>Name</th>
                        <th>Created At</th>
                        <th>Action</th>
                      </tr>
                      </thead>
                      <tbody>
                        @foreach($pattributes as $pattribute)
                      <tr>
                    
                        <td>{{$pattribute->id}}</td>
                        <td>{{$pattribute->name}}</td>
                        <td>{{$pattribute->created_at}}</td>
                   <td><i class="fas fa-edit" style="color:blue"></i>&nbsp;
                   <a href="{{route('admin.edit_attribute',['attribute_id'=>$pattribute->id])}}">Edit
                   </a></td>
    
              <td><i class="fas fa-trash-alt" style="color: red"></i>&nbsp;
               <a href="#" onclick="confirm('Are you sure,You want to delete this category?') || event.stopImmediatePropagation()" wire:click.prevent="deleteAttribute({{$pattribute->id}})">
                Delete</a></td>
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
          {{$pattributes->links()}}
        </section>
        <!-- /.content -->
       <!--  <style type="text/css">
          .w-5 {
            display: none;
          }
        </style> -->
      </div>
      <!-- /.content-wrapper -->