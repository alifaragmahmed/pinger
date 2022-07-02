<div class="w3-padding" >
    <center>
        <b class="w3-large" >{{ __('branch') }}</b>
    </center>
    <br>
    <br>
    <ul class="w3- " >
        <li>
            {{ __('name') }} : {{ $branch->name }}
        </li>
        <li>
            {{ __('address') }} : {{ $branch->address }}
        </li>
        <li>
            {{ __('tel1') }} : {{ $branch->tel1 }}
        </li>
        <li>
            {{ __('tel2') }} : {{ $branch->tel2 }}
        </li>

    </ul>
</div>

<script>
    $('.modal-title').html('{{ __("show branch") }}');
</script>
<script>
    $('#table1').DataTable({
        "pageLength": 10,
        dom: 'Bfrtip',
        buttons: [
            'print',
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
        ],
    });
    $('#table2').DataTable({
        "pageLength": 10,
        dom: 'Bfrtip',
        buttons: [
            'print',
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
        ],
    });
</script>
