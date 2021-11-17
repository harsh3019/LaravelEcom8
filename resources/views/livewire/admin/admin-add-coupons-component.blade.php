


  <div class="content-wrapper">
  
  
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h1><center><u>Add Coupon Form</u></center></h1>
          </div>
          <div class="col-sm-12">
            <ol class="breadcrumb float-sm-right">
             <!--  <li class="breadcrumb-item"><a href="/admin/dashboard">Home</a></li>
 -->              <!-- <li class="breadcrumb-item"><a href="#">Lists</li> --> 
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Coupon Form</h3>
                @if(Session::has('message'))
              <div class="alert alert-success" role="alert">
                {{Session::get('message')}}
              </div>
              @endif
              
              </div>
              <!-- /.card-header -->
              
              <!-- form start -->
              <form wire:submit.prevent="storeCoupons">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputCategory">Coupon Code</label>
                    <input type="text" class="form-control" placeholder="Enter Coupon Code" autocomplete="off" wire:model="code"  />
                    @error('code') <p class="text-danger">{{$message}}</p> @enderror
                  </div>


                  <div class="form-group">
                    <label for="exampleInputCategory">Coupon Type</label>
                    <select class="form-control" wire:model="type">
                      <option value="">Select Coupon Type</option>
                      <option value="fixed">Fixed</option>
                      <option value="percent">Percent</option>
                    </select>
                   
                  @error('type') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                   <div class="form-group">
                    <label for="exampleInputCategory">Coupon Value</label>
                    <input type="text" class="form-control" placeholder="Enter Coupon Value" autocomplete="off"wire:model="value" />
                    @error('value') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                   <div class="form-group">
                    <label for="exampleInputCategory">Cart Value</label>
                    <input type="text" class="form-control" placeholder="Enter Cart Value" autocomplete="off"wire:model="cart_value" />
                    @error('cart_value') <p class="text-danger">{{$message}}</p> @enderror
                  </div>

                   <div class="form-group" wire:ignore>
                    <label for="exampleInputCategory">Expiry Date</label>
                    <input type="date" class="form-control" placeholder="Enter Expiry Date" id="expiry-date" wire:model="expiry_date" />
                    @error('expiry_date') <p class="text-danger">{{$message}}</p> @enderror
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->

            <!-- general form elements -->
           
           

          </div>
         
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  @push('scripts')
  <script type="text/javascript">
    $(function(){

      $('#expiry-date').datetimepicker({

         format: 'Y-MM-DD'

        })

      .on('dp.change',function(ev){
          var data = $('#expiry-date').val();
          @this.set('expiry_date',data);
      })
    });

// $('#expiry-date').datetimepicker({
//     format:'Y-m-d H:i',
//     onSelectDate:function(current_time, $input){
//         var selectedDate = $input.val();
//         alert(selectedDate);
//     }
// });

  </script>
  @endpush