
<?php $startLoadTime = time(); ?>
<!-- Content Header (Page header) -->

<br>
<br>
<section class="content-header font">
    <h1 class="font text-right" >
        @yield("title")
    </h1>
    <ol class="breadcrumb font">
        <li><a href="{{ url('/') }}/dashboard"><i class="fa fa-dashboard"></i> لوحة التحكم</a></li>
        <li class="active">@yield("title")</li>
    </ol>
</section>

<!-- Add button -->
<div class="w3-display-bottomleft w3-padding floatbtn-place" style="z-index: 9999999999" >
    <button class="btn w3-blue shadow btn-float w3-animate-zoom modal-trigger w3-round"
            data-toggle="modal"
            style="border-radius: 5em!important"
            data-target="#addModal" >
        <i class="fa fa-plus"></i>
    </button>
</div>

<!-- Main content -->
<section class="content" style="direction: rtl">
    <div class="w3-white round shadow w3-animate-opacity w3-padding table-responsive">
        @yield("content")
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->


@yield("additional")


@yield("js")

<script>
    console.log('document loatded in {{ (time() - $startLoadTime) . " S" }}');
    $(document).ready(function () {
        
        $('select').each(function(r){
            
            if ($(this).attr('select2') != 'off')
                $(this).select2();
            
        });
        
        $('.default-datatable').each(function(){
            $(this).DataTable({
                "pageLength": 10, 
             });
        });
        

    });

    // load float button sound
    $(".btn-float").mouseup(function () {
        playSound("click4");
    });
     
</script>
