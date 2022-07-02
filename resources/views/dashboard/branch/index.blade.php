@extends("dashboard.layout.app")

@section("title")
{{ __('branches') }}
@endsection
@php
    $builder = (new App\Branch)->getViewBuilder();
@endphp

@section("content")
@if (Auth::user()->role_id == 1)
<div class="filters w3-row" id="filter"   >


</div>
@endif
<table class="table table-bordered" id="table" >
    <thead>
        <tr>
            @foreach($builder->cols as $col)
            <th>{{ $col['label'] }}</th>
            @endforeach
            <th></th>
        </tr>
    </thead>
    <tbody>

    </tbody>
</table>

@endsection

@section("additional")
<!-- add modal -->
<div class="modal fade"  role="dialog" id="addModal" style="width: 100%!important;height: 100%!important" >
    <div class="modal-dialog modal-" role="document" >
    <div class="modal-content">
      <div class="modal-header bg-primary">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <center class="modal-title w3-xlarge">{{ __('add branch') }}</center>
      </div>
      <div class="modal-body">
        {!! $builder->loadAddView() !!}
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!-- edit modal -->
<div class="modal fade"  role="dialog" id="editModal" style="width: 100%!important;height: 100%!important" >
    <div class="modal-dialog modal-" role="document" >
    <div class="modal-content">
      <div class="modal-header bg-primary">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <center class="modal-title w3-xlarge">{{ __('edit branch') }}</center>
      </div>
      <div class="modal-body editModalPlace">

      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
@endsection

@section("js")

@if (!Auth::user()->_can('add branch'))
<script>
    $('.floatbtn-place').remove();
</script>
@endif
@include('dashboard.layout.filter', ['filter_url' => url('/dashboard/branch/data'), "page_url" => 'dashboard/branch'])

<script>
    var table = null;
$(document).ready(function() {
     table = $('#table').DataTable({
        "processing": true,
        "serverSide": true,
        "pageLength": 5,
        "ajax": "{{ url('/dashboard/branch/data') }}",
        "columns":[
            @foreach($builder->cols as $col)
            { "data": "{{ $col['name'] }}" },
            @endforeach
            { "data": "action" }
        ]
     });

     formAjax();

});
</script>
@endsection
