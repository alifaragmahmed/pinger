
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1 class="font w3-xxlarge" >
        {{ __('dashboard') }} 
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li class="active">{{ __('profile') }}</li>
    </ol>
</section>
  

<section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-circle" src="{{ url('/') }}/image/user.png" alt="User profile picture">

              <h3 class="profile-username text-center">{{ Auth::user()->name }}</h3>

              <p class="text-muted text-center">{{ optional(Auth::user()->role)->name }}</p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>{{ __('diaries') }}</b> <a class="pull-right">{{ number_format(Auth::user()->diaries()->count()) }}</a>
                </li> 
                <li class="list-group-item">
                  <b>{{ __('attendance days') }}</b> <a class="pull-right">{{ number_format(optional(Auth::user()->attendances())->count()) }}</a>
                </li>
              </ul>

              <a href="#" class="btn btn-primary btn-block hidden"><b>Follow</b></a>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- About Me Box -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">{{ __('personal info') }}</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <strong><i class="fa fa-book margin-r-5"></i> {{ __('username') }}</strong>

              <p class="text-muted">
                {{ Auth::user()->username }}
              </p>

              <hr>

              <strong><i class="fa fa-map-marker margin-r-5"></i> {{ __('birthdate') }}</strong>

              <p class="text-muted">
                {{ Auth::user()->birthdate }}</p>

              <hr>

              <strong><i class="fa fa-book margin-r-5"></i> {{ __('national_id') }}</strong>

              <p class="text-muted">
                {{ Auth::user()->national_id }}
              </p>

              <hr>

              <strong><i class="fa fa-book margin-r-5"></i> {{ __('address') }}</strong>

              <p class="text-muted">
                {{ Auth::user()->address }}
              </p>

              <hr>

              <strong><i class="fa fa-book margin-r-5"></i> {{ __('email') }}</strong>

              <p class="text-muted">
                {{ Auth::user()->email }}
              </p>

              <hr>
              <strong><i class="fa fa-pencil margin-r-5"></i> {{ __('tels') }}</strong>

              <p>
                @if ( Auth::user()->tel1)
                <span class="label label-danger">{{ Auth::user()->tel1 }}</span>
                @endif
                @if ( Auth::user()->tel2)
                <span class="label label-success">{{ Auth::user()->tel2 }}</span> 
                @endif
              </p>

              <hr> 
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab">{{ __('Activities') }}</a></li>
              <li><a href="#timeline" data-toggle="tab">{{ __('attendance') }}</a></li> 
            </ul>
            <div class="tab-content">
                
              <div class="active tab-pane" id="activity"> 
                   <!-- The timeline -->
                <ul class="timeline timeline-inverse">
                  <!-- timeline time label -->
                  <?php 
                    $currentDate = '';
                  ?>
                  @foreach(Auth::user()->notifications()->orderBy('created_at')->get() as $item)
                  
                  @if (date('Y-m-d', strtotime($item->created_at)) != $currentDate)
                  <li class="time-label">
                        <span class="bg-red">
                          {{ date('Y-m-d', strtotime($item->created_at)) }}
                        </span>
                  </li>
                  @endif
                  <!-- timeline item -->
                  <li>
                    <i class="{{ $item->icon }} {{ App\helper\Helper::randColor() }}"></i>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-clock-o"></i> {{ date('H:i', strtotime($item->created_at)) }}</span>

                      <h3 class="timeline-header"><a href="#">{{ $item->title }}</a></h3>

                      <div class="timeline-body">
                       {{ $item->body }}
                      </div> 
                    </div>
                  </li>
                  
                  
                  <?php 
                    $currentDate = date('Y-m-d', strtotime($item->created_at));
                  ?>  
                  @endforeach
                 
                </ul>
              </div>
              <!-- /.tab-pane -->
              
              
              
              
              
              
              
              
              
              <div class="tab-pane" id="timeline">
                <!-- The timeline --> 
                <table class='table table-bordered default-datatable' >
                    <thead>
                    <tr>
                        <th>{{ __('date') }}</th>
                        <th>{{ __('in_time') }}</th>
                        <th>{{ __('out_time') }}</th>
                        <th>{{ __('work_hours') }}</th>
                    </tr>
                    </thead>
                    <tbody>
                        @if (Auth::user()->attendances())
                        @foreach(Auth::user()->employee->attendances()->orderBy('created_at')->get() as $item)
                        <tr>
                            <td>{{ $item->date }}</td>
                            <td>{{ $item->in_time }}</td>
                            <td>{{ $item->out_time }}</td>
                            <td>{{ $item->getWorkHours() }}</td>
                        </tr>
                        @endforeach
                        @endif
                    </tbody>
                    
                </table> 
              </div>
              <!-- /.tab-pane -->
 
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>


<script>
    $(".default-datatable").DataTable({
                "pageLength": 10, 
             });
</script>