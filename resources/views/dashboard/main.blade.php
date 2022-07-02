
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
        <div class="col-md-3 col-sm-6 col-xs-12">
            <a class="info-box" href="#"  onclick="showPage('dashboard/branch')" >
                <span class="info-box-icon bg-teal"><i class="fa fa-bank"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">{{ __('branches') }}</span>
                    <span class="info-box-number">{{ App\Branch::count() }}<small></small></span>
                </div>
                <!-- /.info-box-content -->
            </a>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
            <a class="info-box"  href="#"    onclick="showPage('dashboard/user')"  >
                <span class="info-box-icon bg-orange"><i class="fa fa-users"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">{{ __('users') }}</span>
                    <span class="info-box-number">{{ App\User::count() }}</span>
                </div>
                <!-- /.info-box-content -->
            </a>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
            <a class="info-box"  href="#"    onclick="showPage('dashboard/role')"  >
                <span class="info-box-icon w3-teal"><i class="fa fa-list"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">{{ __('roles') }}</span>
                    <span class="info-box-number">{{ App\Role::count() }}</span>
                </div>
                <!-- /.info-box-content -->
            </a>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

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
