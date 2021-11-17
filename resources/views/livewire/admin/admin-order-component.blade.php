

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
            <h1>All Orders</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
            <!--    <li class="breadcrumb-item"><a href="{{route('admin.addcoupon')}}">Add New</a></li> -->
            </ol>
          </div>
        </div>
      </div>
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Orders List</h3>
                @if(Session::has('order_message'))
                <div class="alert alert-success" role="alert">
                  {{Session::get('order_message')}}
                </div>
                @endif
              </div>
              
              <div class="card-body">
                
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>OrderId</th>
                    <th>SubTotal</th>
                    <th>Discount</th>
                    <th>Tax</th>
                    <th>Total</th>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>Mobile</th>
                    <th>Email</th>
                    <th>ZipCode</th>
                    <th>Status</th>
                    <th>OrderDate</th>
                    <th colspan="2" class="text-center">Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach($orders as $key => $order)
                  <tr>
                    <!-- <td>{{++$key}}</td> -->
                    <td>{{$order->id}}</td>
                    <td>&#8377;{{$order->subtotal}}</td>
                    <td>&#8377;{{$order->discount}}</td>
                    <td>&#8377;{{$order->tax}}</td>
                    <td>&#8377;{{$order->total}}</td>
                    <td>{{$order->firstName}}</td>
                    <td>{{$order->lastname}}</td>
                    <td>{{$order->mobile}}</td>
                    <td>{{$order->email}}</td>
                    <td>{{$order->zipcode}}</td>
                    <td>{{$order->status}}</td>
                    <td>{{$order->created_at}}</td>
                    <td><a href="{{route('admin.orderdetails',['order_id'=>$order->id])}}" class="btn btn-info btn-sm">Details</td>
                      <td>
                        <div class="dropdown">

       <button class="btn btn-success btn-sm dropdown-toggle" type="button" data-toggle="dropdown">Status<span class="caret"></span></button>

                <ul class="dropdown-menu">
                  <li><a href="#" wire:click.prevent="updateOrderStatus({{$order->id}},'delivered')">Delivered</a></li>
                  <li><a href="#" wire:click.prevent="updateOrderStatus({{$order->id}},'cancelled')">Cancelled</a></li>
                </ul>
                        </div>
                      </td>
                    
                  </tr>
                 

                  </tbody>
                  @endforeach
                </table>
                <br>
                {{$orders->links()}}
                <br>
              </div>
              
            </div>
          </div>
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
     
    </section>
    <!-- /.content -->
   <!--  <style type="text/css">
      .w-5 {
        display: none;
      }
    </style> -->
  </div>
 