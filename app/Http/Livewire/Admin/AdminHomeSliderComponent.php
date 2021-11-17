<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Illuminate\Support\Paginator;
use App\Models\HomeSlider;

class AdminHomeSliderComponent extends Component
{



    public function deleteSlide($slide_id)
    {
       $slider = HomeSlider::find($slide_id);
       $slider->delete();
       session()->flash('message','slider has been deleted Successfully');
       return redirect('/admin/slider');
    }
    public function render()
    {
        $sliders = HomeSlider::paginate(5);
        return view('livewire.admin.admin-home-slider-component',['sliders'=>$sliders])->layout('layouts.master');
    }
}
