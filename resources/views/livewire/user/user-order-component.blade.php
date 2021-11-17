<div>
<style type="text/css">
    nav svg{
        height: 20px;
    }
    nav .hidden
    {
        display: block !important;
    }
</style>

<div class="container" style="padding: 30px 0;">
    <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    All Orders
                </div>
                <div class="panel-body">
                    <table class="table table-bordered table-hover">
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
                        <th>Action</th>
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
                    <td><a href="{{route('user.orderdetails',['order_id'=>$order->id])}}" class="btn btn-info btn-sm">Details</td>
                    
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
    </div>
</div>
