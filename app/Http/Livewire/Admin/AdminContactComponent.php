<?php

namespace App\Http\Livewire\Admin;

use App\Models\Contact;
use Livewire\Component;

class AdminContactComponent extends Component
{
    public function render()
    {
        $contact = Contact::paginate(12);
        return view('livewire.admin.admin-contact-component',['contact'=>$contact])->layout('layouts.master');
    }
}
