
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
            <h1>All Categories</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
               <li class="breadcrumb-item"><a href="/admin/category/add">Add New</a></li>
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
                    <th>Category Name</th>
                    <th>Category Slug</th>
                    <th>SubCategory</th>
                    <th>Action</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach($categories as $category)
                  <tr>
                
                    <td>{{$category->id}}</td>
                    <td>{{$category->name}}</td>
                    <td>{{$category->slug}}</td>
                    <td>
                      <ul class="sclist">
                        @foreach ($category->subCategories as $scategory)
                        <li><i class="fas fa-caret-right"></i>{{$scategory->name}}
        <a href="{{route('admin.editcategory',['category_slug'=>$category->slug,'scategory_slug'=>$scategory->slug])}}">
        <i class="fas fa-edit" style="color:blue"></i>
        </a>
        <a href="#" onclick="confirm('Are you sure,You want to delete this Subcategory?') || event.stopImmediatePropagation()" wire:click.prevent="deleteSubcategory({{$scategory->id}})"><i class="fas fa-trash-alt" style="color: red;"></i></a>

                        </li>
                        @endforeach
                      </ul>
                    </td>
       <td><i class="fas fa-edit" style="color:blue"></i>&nbsp;<a href="{{route('admin.editcategory',['category_slug'=>$category->slug])}}">Edit</a></td>

    <td><i class="fas fa-trash-alt" style="color: red"></i>&nbsp;<a href="#" onclick="confirm('Are you sure,You want to delete this category?') || event.stopImmediatePropagation()" wire:click.prevent="deleteCategory({{$category->id}})">Delete</a></td>
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
      {{$categories->links()}}
    </section>
    <!-- /.content -->
   <!--  <style type="text/css">
      .w-5 {
        display: none;
      }
    </style> -->
  </div>
  <!-- /.content-wrapper -->