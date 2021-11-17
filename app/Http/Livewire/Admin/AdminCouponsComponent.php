<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Coupon;


class AdminCouponsComponent extends Component
{

    public function deleteCoupon($coupon_id)
    {
        $coupon = Coupon::find($coupon_id);
        $coupon->delete();
        session()->flash('message','coupons has been deleted Successfully');
        return redirect('/admin/coupons');
    }


    public function render()
    {
        $coupons = Coupon::all();
        return view('livewire.admin.admin-coupons-component',['coupons'=>$coupons])->layout('layouts.master');
    }
}
