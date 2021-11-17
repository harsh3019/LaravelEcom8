<?php

namespace App\Http\Livewire\Admin;

use App\Models\ProductAttribute;
use Livewire\Component;

class AdminAttributeComponent extends Component
{

    public function deleteAttribute($attribute_id)
    {
        $pattribute = ProductAttribute::find($attribute_id);
        $pattribute->delete();
        session()->flash('message','attribute has been deleted successfully');
        return redirect('/admin/attributes');
    }
    public function render()
    {
        $pattributes = ProductAttribute::paginate(10);
        return view('livewire.admin.admin-attribute-component',['pattributes'=>$pattributes])->layout('layouts.master');
    }
}
