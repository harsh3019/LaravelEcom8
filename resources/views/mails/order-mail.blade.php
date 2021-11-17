<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <title>Order Confirmation</title>
</head>
<body>

<div class="container">
  <h2>Hello</h2>
  <p>{{$order->firstname}} {{$order->lastname}}</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Image</th>
        <th>Name</th>
        <th>Quantity</th>
        <th>Price</th>
      </tr>
    </thead>
    <tbody>
      @foreach($order->orderItems as $item)
      <tr>
        <td><img src="{{asset('assets/images/products')}}/{{$item->product->image}}" width="100px" /></td>
        <td>{{$item->product->name}}</td>
        <td>{{$item->quantity}}</td>
        <td>&#8377;{{$item->price * $item->quantity}}</td>
      </tr>
     @endforeach
     <tr>
      <td>SubTotal : {{$order->subtotal}}</td>
      <td>Tax : {{$order->tax}}</td>
      <td>Shipping: Free Shipping</td>
      <td>Total : &#8377;{{$order->total}}</td>
     </tr>
    </tbody>
  </table>
</div>

</body>
</html>


