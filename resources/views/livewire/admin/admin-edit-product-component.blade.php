

 
  <div class="content-wrapper">
    
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h1><center><u>Update Product Form</u></center></h1>
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
              <form enctype="multipart/form-data" wire:submit.prevent="updateProduct">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputProduct">Product Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Product Name" autocomplete="off"
                    wire:model="name" wire:keyup="generateslug" />
                     @error('name') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                   <div class="form-group">
                    <label for="exampleInputCategory">Product Slug</label>
                    <input type="text" class="form-control" id="slug" name="slug" placeholder="Enter Product Slug" autocomplete="off" wire:model="slug" />
                     @error('slug') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCategory">Short Description</label>
                   <textarea class="form-control" placeholder="Short Description" wire:model="short_description"></textarea>
                    @error('short_description') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCategory">Description</label>
                   <textarea class="form-control" placeholder="Description" wire:model="description"></textarea>
                    @error('description') <p class="text-danger">{{$message}}</p> @enderror
                  </div>
                    
                    <div class="form-group">
                    <label for="exampleInputCategory">Regular Price</label>
                    <input type="text" class="form-control" placeholder="Enter Regular Price" autocomplete="off" wire:model="regular_price" />
                     @error('regular_price') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                  
                  <div class="form-group">
                    <label for="exampleInputCategory">Sale Price</label>
                    <input type="text" class="form-control" placeholder="Enter Sale Price" autocomplete="off" wire:model="sale_price"/>
                     @error('sale_price') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                    <div class="form-group">
                    <label for="exampleInputCategory">SKU</label>
                    <input type="text" class="form-control" placeholder="Enter SKU" autocomplete="off" wire:model="SKU"/>
                     @error('SKU') <p class="text-danger">{{$message}}</p> @enderror
                  </div>


                    <div class="form-group">
                    <label for="exampleInputCategory">Stock</label>
                    <select class="form-control" wire:model="stock_status">
                      <option value="instock">InStock</option>  
                      <option value="outofstock">Out of Stock</option>
                    </select>
                     @error('stock_status') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCategory">Feature</label>
                    <select class="form-control" wire:model="featured">
                      <option value="0">No</option>  
                      <option value="1">Yes</option>
                    </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputCategory">Quantity</label>
                    <input type="text" class="form-control" placeholder="Enter Quantity" autocomplete="off" wire:model="quantity"/>
                     @error('quantity') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                   <div class="form-group">
                    <label for="exampleInputCategory">Product Image</label>
                    <input type="file" class="form-control input-file"  name="image"  wire:model="newimage"/>
                   @if($newimage)
                    <img src="{{$newimage->temporaryUrl()}}" width="120" />
                     
                    @else

                    <img src="{{asset('assets/images/products')}}/{{$image}}" width="120" />


                    @endif
                     @error('newimage') <p class="text-danger">{{$message}}</p> @enderror
                  </div>
                  
                  <div class="form-group">
                    <label for="exampleInputCategory">Product Gallery</label>
                    <input type="file" class="form-control input-file"  name="image"  wire:model="newimages" multiple/>
                   @if($newimages)
                   @foreach($newimages as $newimage)
                   @if($newimage)
                   <img src="{{$newimage->temporaryUrl()}}" width="120" />
                    @endif
                    @endforeach
                    @else
                    @foreach($images as $image)
                    @if($image)
                    <img src="{{asset('assets/images/products')}}/{{$image}}" width="120" />
                    @endif
                    @endforeach
                    @endif
                  </div>


                   <div class="form-group">
                    <label for="exampleInputCategory">Category</label>
                    <select class="form-control" wire:model="category_id" wire:change="changeSubcategory"> 
                      <option value="">--Select Category--</option>  
                      @foreach($categories as $category)
                      <option value="{{$category->id}}">{{$category->name}}</option>
                      @endforeach
                    </select>
                     @error('category_id') <p class="text-danger">{{$message}}</p> @enderror
                  </div>


                  <div class="form-group">
                    <label for="exampleInputCategory">Sub Category</label>
                    <select class="form-control" wire:model="scategory_id" >
                      <option value="0">--Select Category--</option>  
                      @foreach($scategories as $scategory)
                      <option value="{{$scategory->id}}">{{$scategory->name}}</option>
                      @endforeach
                    </select>
                     @error('scategory_id') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                  <div class="form-group">
                    <label for="Attributes">Product Attributes</label>
                <div class="input-group mb-3">
                 <select class="form-control" wire:model="attr">
                  <option value="0">--Select Attributes--</option>
                      @foreach($pattributes as $pattribute)
                      <option value="{{$pattribute->id}}">{{$pattribute->name}}</option>
                      @endforeach
                 </select>
                    <button type="button" class="btn btn-danger" wire:click.prevent="add">Add</button>
                </div>
                  </div>
                  @foreach ($inputs as $key => $value)
                  <div class="form-group">
                    <label>{{$pattributes->where('id',$attribute_arr[$key])->first()->name}}</label>
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="{{$pattributes->where('id',$attribute_arr[$key])->first()->name}}"
                    wire:model="attribute_values.{{$value}}" />
                    <div class="input-group-prepend">
                      <button type="button" class="btn btn-danger" wire:click.prevent="remove({{$key}})">Remove</button>
                    </div>
                  </div>
                  </div>
                  @endforeach



                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
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
  