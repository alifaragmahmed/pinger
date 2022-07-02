<div style="width: 200px">

    @if (Auth::user()->_can('edit branch'))
        <i class="fa fa-edit w3-text-orange w3-button"
            onclick="edit('{{ url('/dashboard/branch/edit') . '/' . $branch->id }}')"></i>
    @endif

    <i class="fa fa-desktop w3-text-green w3-button"
        onclick="edit('{{ url('/dashboard/branch/show') . '/' . $branch->id }}')"></i>

    <i class="fa fa-bars w3-button w3-text-indigo" onclick="$('#actionModal{{ $branch->id }}').modal('show')"></i>

    @if (Auth::user()->_can('remove branch'))
        <i class="fa fa-trash w3-text-red w3-button"
            onclick="remove('', '{{ url('/dashboard/branch/remove/') . '/' . $branch->id }}')"></i>
    @endif

</div>


<!-- add modal -->
<div class="modal fade" role="dialog" id="actionModal{{ $branch->id }}"
    style="width: 100%!important;height: 100%!important">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <center class="modal-title w3-xlarge">{{ __('ping or tracert') }}</center>
            </div>
            <div class="modal-body">
                <div class="w3-block row">
                    <div class="col-sm-4">
                        <div class="row">

                            @if ($branch->wan_ip)
                                <div class="col-sm-12" style="padding: 5px;">
                                    <a onclick="excuteShell('ping', '{{ $branch->wan_ip }}', 'shellRes{{ $branch->id }}', this)" class="btn btn-block btn-social btn-  btn-default">
                                        <i class="fa fa-bullhorn"></i> {{ __('Ping Wan') }} {{ $branch->wan_ip }}
                                    </a>
                                </div>
                            @endif
                            @if ($branch->lan_ip)
                                <div class="col-sm-12" style="padding: 5px;">
                                    <a onclick="excuteShell('ping', '{{ $branch->lan_ip }}', 'shellRes{{ $branch->id }}', this)" class="btn btn-block btn-social btn-  btn-default">
                                        <i class="fa fa-bullhorn"></i> {{ __('Ping Lan') }} {{ $branch->lan_ip }}
                                    </a>
                                </div>
                            @endif
                            @if ($branch->tunnel_ip)
                                <div class="col-sm-12" style="padding: 5px;">
                                    <a onclick="excuteShell('ping', '{{ $branch->tunnel_ip }}', 'shellRes{{ $branch->id }}', this)" class="btn btn-block btn-social btn-  btn-default">
                                        <i class="fa fa-bullhorn"></i> {{ __('Ping Tunnel') }}
                                        {{ $branch->tunnel_ip }}
                                    </a>
                                </div>
                            @endif

                            @if ($branch->wan_ip)
                                <div class="col-sm-12" style="padding: 5px;">
                                    <a onclick="excuteShell('tracert', '{{ $branch->wan_ip }}', 'shellRes{{ $branch->id }}', this)" class="btn btn-block btn-social btn-  btn-default">
                                        <i class="fa fa-bullseye"></i> {{ __('Tracert Wan') }} {{ $branch->wan_ip }}
                                    </a>
                                </div>
                            @endif
                            @if ($branch->lan_ip)
                                <div class="col-sm-12" style="padding: 5px;">
                                    <a onclick="excuteShell('tracert', '{{ $branch->lan_ip }}', 'shellRes{{ $branch->id }}', this)" class="btn btn-block btn-social btn-  btn-default">
                                        <i class="fa fa-bullseye"></i> {{ __('Tracert Lan') }} {{ $branch->lan_ip }}
                                    </a>
                                </div>
                            @endif
                            @if ($branch->tunnel_ip)
                                <div class="col-sm-12" style="padding: 5px;">
                                    <a onclick="excuteShell('tracert', '{{ $branch->tunnel_ip }}', 'shellRes{{ $branch->id }}', this)" class="btn btn-block btn-social btn-  btn-default">
                                        <i class="fa fa-bullseye"></i> {{ __('Tracert Tunnel') }}
                                        {{ $branch->tunnel_ip }}
                                    </a>
                                </div>
                            @endif
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="w3-round w3-light-gray w3-padding" id="shellRes{{ $branch->id }}" style="height: 300px;font-family: consolas;overflow: auto;text-align: left!important;direction: ltr!important;" >

                        </div>
                    </div>



                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
