<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\HomeSlider;
use Livewire\WithFileUploads;
use Carbon\Carbon;
class AdminEditHomeSliderComponent extends Component
{

    use WithFileUploads;   
    public $title; 
    public $subtitle;
    public $image;
    public $link;
    public $price;
    public $status;
    public $newimage;
    public $slider_id;

    public function mount($slide_id)
    {

       $slider = HomeSlider::find($slide_id);
       $this->title = $slider->title;
       $this->subtitle = $slider->subtitle;
       $this->image = $slider->image;
       $this->link = $slider->link;
       $this->price = $slider->price;
       $this->status = $slider->status;
       $this->slider_id = $slider->id;
    }

    public function updateslider()
    {
        $slider = HomeSlider::find($this->slider_id);
        $slider->title = $this->title;
        $slider->subtitle = $this->subtitle;
        $slider->price = $this->price;
        $slider->link = $this->link;

        if($this->newimage)
        {
           $imagename = Carbon::now()->timestamp. '.' . $this->newimage->extension();

           $this->newimage->storeAs('sliders',$imagename);

           $slider->image = $imagename;

        }

        $slider->status = $this->status;
        $slider->save();
        session()->flash('message','slider has been update successfully!');
        return redirect('/admin/slider');

    }

    public function render()
    {
        return view('livewire.admin.admin-edit-home-slider-component')->layout('layouts.master');
    }
}
