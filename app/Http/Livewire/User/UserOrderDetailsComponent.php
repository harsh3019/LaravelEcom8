<?php

namespace App\Http\Livewire\User;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use App\Models\Order;
use App\Models\OrderItem;
//use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class UserOrderDetailsComponent extends Component
{

    public $order_id;

    public function mount($order_id)
    {
        $this->order_id = $order_id;
    }


    public function cancelOrder()
    {
        $order = Order::find($this->order_id);
        $order->status = "cancelled";
        $order->cancelled_date = Carbon::today();
        $order->save();
        session()->flash('order_message','order has been cancelled');
    }

    public function render()
    {
        $order = Order::where('user_id',Auth::user()->id)->where('id',$this->order_id)->first();
        return view('livewire.user.user-order-details-component',['order'=>$order])->layout('layouts.base');
    }
}
