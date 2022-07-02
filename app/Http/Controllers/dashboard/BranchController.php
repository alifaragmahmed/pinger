<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\helper\Message;
use App\Branch;
use DataTables;

class BranchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("dashboard.branch.index");
    }

    /**
     * return json data
     */
    public function getData() {
        $query = Branch::query();


        return DataTables::eloquent($query)
                        ->addColumn('action', function(Branch $branch) {
                            return view("dashboard.branch.action", compact("branch"));
                        })
                        ->rawColumns(['action'])
                        ->toJson();
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function excuteShell(Request $request)
    {
        $command = $request->type == 'tracert'? 'tracert' : 'ping';
        $routes = shell_exec($command . " " . $request->ip);

        return str_replace("\n", "<br>", $routes);
        //print_r($routes);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $data = $request->all();
            $branch = Branch::create($data);

            notify(__('add branch'), __('add branch') . " " . $branch->name, 'fa fa-user');

            return Message::success(Message::$DONE);
        } catch (\Exception $ex) {
            return Message::error(Message::$ERROR);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Branch $branch)
    {
        return view("dashboard.branch.show", compact("branch"));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Branch $branch)
    {
        return $branch->getViewBuilder()->loadEditView();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Branch $branch)
    {
        try {
            $data = $request->all();
            $branch->update($data);

            notify(__('edit branch'), __('edit branch') . " " . $branch->name, "fa fa-user");
            return Message::success(Message::$EDIT);
        } catch (\Exception $ex) {
            return Message::error(Message::$ERROR);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Branch $branch)
    {
        try {
            notify(__('remove branch'), __('remove branch') . " " . $branch->name, "fa fa-user");
            $branch->delete();
            return Message::success(Message::$DONE);
        } catch (\Exception $ex) {
            return Message::error(Message::$ERROR);
        }
    }
}
