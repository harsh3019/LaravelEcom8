<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Support\Paginator;
//use Livewire\WithPagination;

class AdminCategoryComponent extends Component
{

 // use WithPagination;


  public function deleteCategory($id)
  {
         
        $category = Category::find($id);

        $category->delete();

        session()->flash('message','Category has been  deleted Successfully!');

        return redirect('admin/categories');
  }

    public function deleteSubcategory($id)
    {
        $scategory = Subcategory::find($id);
        $scategory->delete();
        session()->flash('message','SubCategory has been  deleted Successfully!');
        return redirect('admin/categories');

    }
    public function render()
    {
        $categories = Category::paginate(7);
        return view('livewire.admin.admin-category-component',['categories'=>$categories])->layout('layouts.master');
    }
}
