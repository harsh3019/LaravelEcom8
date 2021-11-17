<div>
    <main id="main" class="main-site left-sidebar">

        <div class="container">

            <div class="wrap-breadcrumb">
                <ul>
                    <li class="item-link"><a href="/" class="link">home</a></li>
                    <li class="item-link"><span>Contact us</span></li>
                </ul>
            </div>
            <div class="row">
                <div class=" main-content-area">
                    <div class="wrap-contacts ">
                        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                            <div class="contact-box contact-form">
                                <h2 class="box-title">Leave a Message</h2>
                                @if(Session::has('message'))
                                <div class="alert-success"role="alert">
                                    {{Session::get('message')}}
                                </div>
                                @endif
                                <form  name="frm-contact" wire:submit.prevent="sendMessage">

                                    <label for="name">Name<span>*</span></label>
                                    <input type="text" value="" id="name" name="name" wire:model="name">
                                    @error('name')<p class="text-danger">{{$message}}</p>@enderror

                                    <label for="email">Email<span>*</span></label>
                                    <input type="text" value="" id="email" name="email" wire:model="email">
                                    @error('email')<p class="text-danger">{{$message}}</p>@enderror

                                    <label for="phone">Number Phone</label>
                                    <input type="text" value="" id="phone" name="phone" wire:model="phone">
                                    @error('phone')<p class="text-danger">{{$message}}</p>@enderror

                                    <label for="comment">Comment</label>
                                    <textarea name="comment" id="comment" wire:model="comment"></textarea>
                                    @error('comment')<p class="text-danger">{{$message}}</p>@enderror

                                    <input type="submit" name="ok" value="Submit" >
                                    
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                            <div class="contact-box contact-info">
                                <div class="wrap-map">
    {{-- <iframe src="{{$setting->map}}" width="100%" height="320" style="border:0;" allowfullscreen="" loading="lazy"></iframe> --}}

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7500.106394433668!2d73.7515391265054!3d19.96426493045202!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb5bec789841%3A0xeafec15754973d71!2sUttam%20Nagar%2C%20Nashik%2C%20Maharashtra%20422010!5e0!3m2!1sen!2sin!4v1635943446727!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                </div>
                                <h2 class="box-title">Contact Detail</h2>
                                <div class="wrap-icon-box">

                                    <div class="icon-box-item">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                        <div class="right-info">
                                            <b>Email</b>
                                            <p>{{$setting->email}}</p>
                                        </div>
                                    </div>

                                    <div class="icon-box-item">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                        <div class="right-info">
                                            <b>Phone</b>
                                            <p>{{$setting->phone}}</p>
                                        </div>
                                    </div>

                                    <div class="icon-box-item">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        <div class="right-info">
                                            <b>Mail Office</b>
                                            <p>{{$setting->address}}</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end main products area-->

            </div><!--end row-->

        </div><!--end container-->

    </main>
</div>
