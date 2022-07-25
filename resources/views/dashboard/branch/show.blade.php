<div class="w3-padding" >
    <center>
        <b class="w3-large" >{{ __('branch') }}</b>
    </center>
    <br>
    <br>
    <ul class="w3- " >
        <li>{{ __('main order id') }} : {{ $branch->main_order_id }}</li>
        <li>{{ __('backup order id') }} : {{ $branch->backup_order_id }}</li>
        <li>{{ __('isp') }} : {{ $branch->isp }}</li>
        <li>{{ __('name') }} : {{ $branch->name }}</li>
        <li>{{ __('region') }} : {{ $branch->region }}</li>
        <li>{{ __('finance_code') }} : {{ $branch->finance_code }}</li>
        <li>{{ __('wan_ip') }} : {{ $branch->wan_ip }}</li>
        <li>{{ __('lan_ip') }} : {{ $branch->lan_ip }}</li>
        <li>{{ __('tunnel_ip') }} : {{ $branch->tunnel_ip }}</li>
        <li>{{ __('solution_info') }} : {{ $branch->solution_info }}</li>
        <li>{{ __('speed') }} : {{ $branch->speed }}</li>
        <li>{{ __('notes') }} : {{ $branch->notes }}</li>
        <li>{{ __('last_update') }} : {{ $branch->last_update }}</li>

    </ul>
</div>

<script>
    $('.modal-title').html('{{ __("show branch") }}');
</script>
