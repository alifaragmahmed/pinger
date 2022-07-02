<div style="width: 200px" >

    @if (Auth::user()->_can('edit branch'))
    <i class="fa fa-edit w3-text-orange w3-button" onclick="edit('{{ url('/dashboard/branch/edit') . '/' . $branch->id }}')" ></i>
    @endif

    <i class="fa fa-desktop w3-text-green w3-button" onclick="edit('{{ url('/dashboard/branch/show') . '/' . $branch->id }}')" ></i>

    @if (Auth::user()->_can('remove branch'))
    <i class="fa fa-trash w3-text-red w3-button" onclick="remove('', '{{ url('/dashboard/branch/remove/') .'/' . $branch->id }}')" ></i>
    @endif
</div>
