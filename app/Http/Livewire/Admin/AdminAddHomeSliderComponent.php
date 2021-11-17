<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Carbon\Carbon;
use Livewire\WithFileUploads;
use App\Models\HomeSlider;

class AdminAddHomeSliderComponent extends Component
{
       
    use WithFileUploads;   
    public $title; 
    public $subtitle;
    public $image;
    public $link;
    public $price;
    public $status;

    public function mount()
    {
         $this->status = 0;
    }


   public function addSlide()
   {
    
    $slider = new HomeSlider();

   $slider->title = $this->title; 

   $slider->subtitle = $this->subtitle; 

  $imagename = Carbon::now()->timestamp. '.' . $this->image->extension();

  $this->image->storeAs('sliders',$imagename);

  $slider->image = $imagename;

   $slider->link = $this->link;

  $slider->price = $this->price; 

  $slider->status = $this->status;

  $slider->save();

  session()->flash('message', 'Slide has been created successfully!');
  return redirect('/admin/slider');

   }


    public function render()
    {
        return view('livewire.admin.admin-add-home-slider-component')->layout('layouts.master');
    }
}
