
  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h1><center>Order Details</center></h1>
          </div>
          <div class="col-sm-2">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
             <li class="breadcrumb-item"><a href="{{route('admin.orders')}}">All Orders</a></li> 
            </ol>
          </div>
        </div>
      </div>
    </section>
<hr>
 <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Orders Details</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                 <table id="example2" class="table table-bordered table-hover">
                 <tr>
                    <th>Order Id</th>
                    <td>{{$order->id}}</td>
                    <th>Order Date</th>
                    <td>{{$order->created_at}}</td>
                    <th>Status</th>
                    <td>{{$order->status}}</td>
                    @if($order->status == 'delivered')
                    <th>Delivered Date</th>
                    <td>{{$order->delivered_date}}</td>
                    @elseif($order->status == 'cancelled')
                    <th>Cancelled Date</th>
                    <td>{{$order->cancelled_date}}</td>
                    @endif
                 </tr>
                
                </table>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                Footer
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Order Items</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
               <h3 class="box-title">Products Name</h3>
               <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>Product Image</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>SubTotal</th>
                  </tr>
                  </thead>
                  <tbody>
                   @foreach($order->orderItems as $items)
                  <tr>
                      <td><img src="{{asset('assets/images/products')}}/{{$items->product->image}}" alt="{{$items->product->name}}" width="80" /></td>
                    
                     <td><a class="link-to-product" href="{{route('product.details',['slug'=>$items->product->slug])}}">{{$items->product->name}}</a></td>
                     
                     <td>
                     @if ($items->options)
                     <div class="product-name">
                       @foreach (unserialize($items->options) as $key => $value)
                         <p><b>{{$key}}:{{$value}}</b></p>
                       @endforeach
                     </div>  
                     @endif
                     </td>
                     <td>&#8377;{{$items->price}}</td>
                     <td>{{$items->quantity}}</td>
                     <td>&#8377;{{$items->price * $items->quantity}}</td>
                  </tr>
                  </tbody>
                @endforeach
                </table>
              </div>
              <!-- /.card-body -->
             <div class="card-footer">
            <h5>Order Summary</h5>
             <p><span class="title">Subtotal:</span><span class="float-right"><b>&#8377;{{$order->subtotal}}</b></span></p>
             <hr>
             <p><span class="title">Tax:</span><span class="float-right"><b>&#8377;{{$order->tax}}</b></span></p>
             <hr>
             <p><span class="title">Shippings:</span><span class="float-right"><b>Free Shipping</b></span></p>
             <hr>
             <p><span class="title">Total:</span><span class="float-right"><b>&#8377;{{$order->total}}</b></span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Bilings Details</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                 <table id="example2" class="table table-bordered table-hover">
                 <tr>
                    <th>First Name</th>
                    <td>{{$order->firstName}}</td>
                    <th>Last Name</th>
                    <td>{{$order->lastname}}</td>
                 </tr>
                 <tr>
                    <th>Phone</th>
                    <td>{{$order->mobile}}</td>
                    <th>Email</th>
                    <td>{{$order->email}}</td>
                 </tr>

                 <tr>
                    <th>Line1</th>
                    <td>{{$order->line1}}</td>
                    <th>Line 2</th>
                    <td>{{$order->line2}}</td>
                 </tr>

                 <tr>
                    <th>City</th>
                    <td>{{$order->city}}</td>
                    <th>Province</th>
                    <td>{{$order->province}}</td>
                 </tr>

                   <tr>
                    <th>Country</th>
                    <td>{{$order->country}}</td>
                    <th>ZipCode</th>
                    <td>{{$order->zipcode}}</td>
                 </tr>
                </table>
              </div>
              <!-- /.card-body -->
             <!--  <div class="card-footer">
                Footer
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="content">
      <div class="container-fluid">
        @if($order->is_shipping_different)
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Shipping Details</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
                 <tr>
                    <th>First Name</th>
                    <td>{{$order->shipping->firstName}}</td>
                    <th>Last Name</th>
                    <td>{{$order->shipping->lastname}}</td>
                 </tr>
                 <tr>
                    <th>Phone</th>
                    <td>{{$order->shipping->mobile}}</td>
                    <th>Email</th>
                    <td>{{$order->shipping->email}}</td>
                 </tr>

                 <tr>
                    <th>Line1</th>
                    <td>{{$order->shipping->line1}}</td>
                    <th>Line 2</th>
                    <td>{{$order->shipping->line2}}</td>
                 </tr>

                 <tr>
                    <th>City</th>
                    <td>{{$order->shipping->city}}</td>
                    <th>Province</th>
                    <td>{{$order->shipping->province}}</td>
                 </tr>

                   <tr>
                    <th>Country</th>
                    <td>{{$order->shipping->country}}</td>
                    <th>ZipCode</th>
                    <td>{{$order->shipping->zipcode}}</td>
                 </tr>
                </table>
              </div>
              <!-- /.card-body -->
              <!-- <div class="card-footer">
                Footer
              </div> -->
            </div>
          </div>
        </div>
        @endif
      </div>
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Transaction Details</h3>
                    <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                 <table id="example2" class="table table-bordered table-hover">
                 <tr>
                    <th>Transaction Mode</th>
                    <td>{{$order->transaction->mode}}</td>
                 </tr>
                 <tr>
                    <th>Status</th>
                    <td>{{$order->transaction->status}}</td>
                 </tr>
                 <tr>
                    <th>Transaction Date</th>
                    <td>{{$order->transaction->created_at}}</td>
                 </tr>
                </table>
              </div>
              <!-- /.card-body -->
              <!-- <div class="card-footer">
                Footer
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
 
