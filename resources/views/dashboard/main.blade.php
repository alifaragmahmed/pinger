
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1 class="font w3-xxlarge text-right" >
        {{ __('dashboard') }} 
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li class="active">{{ __('dashboard') }}</li>
    </ol>
</section>

<!-- Main content -->
<section class="content" style="overflow: auto!important" >
    <!-- Info boxes --> 
    <!-- /.row -->

    <div class="row">
        @if (Auth::user()->role_id == 1)
        <div class="col-md-3 col-sm-6 col-xs-12">
            <a class="info-box" href="#"  >
                <span class="info-box-icon bg-teal"><i class="fa fa-cubes"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">{{ __('item') }}</span>
                    <span class="info-box-number">{{ App\Item::count() }}<small></small></span>
                </div>
                <!-- /.info-box-content -->
            </a>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
            <a class="info-box"  href="#"     >
                <span class="info-box-icon bg-orange"><i class="fa fa-cube"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">{{ __('category') }}</span>
                    <span class="info-box-number">{{ App\Category::count() }}</span>
                </div>
                <!-- /.info-box-content -->
            </a>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
            <a class="info-box"  href="#"     >
                <span class="info-box-icon w3-teal"><i class="fa fa-male"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">{{ __('suppliers') }}</span>
                    <span class="info-box-number">{{ App\Supplier::count() }}</span>
                </div>
                <!-- /.info-box-content -->
            </a>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
            <a class="info-box"  href="#"     >
                <span class="info-box-icon bg-purple"><i class="fa fa-users"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">{{ __('customer') }}</span>
                    <span class="info-box-number">{{ App\Customer::count() }}</span>
                </div>
                <!-- /.info-box-content -->
            </a>
            <!-- /.info-box -->
        </div>
        @endif
        <!-- /.col -->
        
        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>
  
        <!-- /.col -->
    </div>
    <br>
    <br>
    <br>
    <!-- /.row -->

</section>
<script src="{{ url('/') }}/js/Chart.min.js"></script> 