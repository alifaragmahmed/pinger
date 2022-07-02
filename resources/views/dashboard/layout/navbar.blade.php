
<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar shadow"  >
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar  ">
        <!-- Sidebar user panel -->
        <div class="user-panel" style="background: url({{ url('/image/user-info.jpg') }});background-size: cover;bakcground-repeat: no-repeat!important;height: 150px;padding-top: 50px;" >
            <div class="pull-left image">
                @if (Auth::user()->photo)
                <img src="{{ url('/') }}/image/users/{{ Auth::user()->photo }}" class="img-circle" alt="User Image">
                @else
                <img src="{{ url('/') }}/image/user.png" class="img-circle" alt="User Image">
                @endif
            </div>
            <div class="pull-left info w3-padding">
                <a href="#"  onclick="showPage('dashboard/profile')" class="w3-text-white w3-large"  ><b>{{ Auth::user()->name }}</b></a>
            </div>
        </div>

        <ul class="sidebar-menu font" data-widget="tree">
            <li class="header text-uppercase">{{ __('main navigation') }}</li>

            <li class="treeview font w3-text-pink" onclick="showPage('dashboard/main')" >
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>{{ __('dashboard') }}</span>
                </a>
            </li>

            @if (Auth::user()->_can('branch'))
            <li class="treeview font w3-text-red" onclick="showPage('dashboard/branch')" >
                <a href="#">
                    <i class="fa fa-bank"></i> <span>{{ __('branches') }}</span>
                </a>
            </li>
            @endif




            @if (Auth::user()->_can('user') ||
            Auth::user()->_can('role') ||
            Auth::user()->_can('notification')
            )
            <li class="treeview font w3-text-brown" >
                <a href="#">
                    <i class="fa fa-users"></i> <span>{{ __('users&roles') }}</span>
                    <span class="pull-right-container" style="left: 0px!important" >
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    @if (Auth::user()->_can('user'))
                    <li onclick="showPage('dashboard/user')" >
                        <a href="#">
                            <i class="fa fa-users"></i> <span>{{ __('users') }}</span>
                        </a>
                    </li>
                    @endif

                    @if (Auth::user()->_can('role'))
                    <li   onclick="showPage('dashboard/role')" >
                        <a href="#">
                            <i class="fa fa-ticket"></i> <span>{{ __('roles') }}</span>
                        </a>
                    </li>
                    @endif

                    @if (Auth::user()->_can('notification'))
                    <li  onclick="showPage('dashboard/notification')" >
                        <a href="#">
                            <i class="fa fa-bell"></i> <span>{{ __('notifications') }}</span>
                        </a>
                    </li>
                    @endif

                </ul>
            </li>
            @endif





            @if (Auth::user()->_can('setting'))
            <li class="header text-uppercase">{{ __('settings') }}</li>

            <li class="treeview font w3-text-gray" onclick="showPage('dashboard/option')" >
                <a href="#">
                    <i class="fa fa-cogs"></i> <span>{{ __('settings') }}</span>
                </a>
            </li>
            @endif

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
