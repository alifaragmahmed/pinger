<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\helper\Message;
use DataTables;

class UserController extends Controller {

    /**
     * Display a listing of the resource.
     */
    public function index() {
        return view("dashboard.user.index");
    }

    /**
     * Display a listing of the resource.
     */
    public function profile() {
        return view("dashboard.user.profile");
    }

    /**
     * return json data
     */
    public function getData() {
        return DataTables::eloquent(User::query())
                        ->addColumn('action', function(User $user) {
                            return view("dashboard.user.action", compact("user"));
                        })
                        ->addColumn('city_id', function(User $user) {
                            return optional($user->city)->name;
                        })
                        ->editColumn('role_id', function(User $user) {
                            return optional($user->role)->name;
                        })
                        ->editColumn('active', function(User $user) {
                            $label = $user->active == '1'? 'success' : 'danger';
                            $text = $user->active == '1'? __('on') :  __('off');

                            return "<span class='label label-$label' >$text</span>";
                        })
                        ->editColumn('photo', function(User $user) {
                            return "<img onclick='viewImage(this)' src='" . $user->url . "' height='30px' class='w3-round' >";
                        })
                        ->rawColumns(['action', 'active', 'photo', 'role'])
                        ->toJson();
    }

    public function validateNationalId($nationalId, User $user=null) {
        $errors = [];
        if (!is_numeric($nationalId))
            $errors[] = __('national id must be numbers only');
        if (strlen($nationalId) != 14)
            $errors[] = __('national id must 14 digits');

        $isExists = User::query()
                ->where('national_id', $nationalId)
                ->where(function($q) use ($user){
                    if ($user)
                        $q->where("id", "!=", $user->id);
                })
                ->exists();
        if ($isExists)
            $errors[] = __('national id already exist');

        if (count($errors) > 0)
            return Message::error2(implode("\n", $errors), $errors);

        return Message::success("done");
    }

    public function validatePhone($phone=null) {
        $errors = [];
        if ($phone) {
            if (!is_numeric($phone))
                $errors[] = __('phone must be numbers only');
            if (strlen($phone) != 11)
                $errors[] = __('phone must 11 digits');

            if (count($errors) > 0)
                return Message::error2(implode("\n", $errors), $errors);
        }
        return Message::success("done");
    }
    /**
     * return view of edit modal
     *
     * @param User $user
     * @return type
     */
    public function edit(User $user) {
        return $user->getViewBuilder()->loadEditView();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        try {
            $nationalIdValidate = $this->validateNationalId($request->national_id);

            if ($nationalIdValidate['status'] == 0)
                return $nationalIdValidate;

            $validatePhone1 = $this->validatePhone($request->tel1);
            $validatePhone2 = $this->validatePhone($request->tel2);

            if ($validatePhone1['status'] == 0 || $validatePhone2['status'] == 0)
                return $validatePhone1['status']==0? $validatePhone1 : $validatePhone2;

            if (User::where("username", $request->username)->exists())
                return Message::error2(__('username already exist'));

            $data = $request->all();
            $data['user_id'] = Auth::user()->id;

            $user = User::create($data);


            notify(__('add user'), __('add user') . " " . $user->name, "fa fa-users");
            return Message::success(Message::$DONE);
        } catch (Exception $ex) {
            return Message::error(Message::$ERROR);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user) {
        try {
            $nationalIdValidate = $this->validateNationalId($request->national_id, $user);

            if ($nationalIdValidate['status'] == 0)
                return $nationalIdValidate;

            $validatePhone1 = $this->validatePhone($request->tel1);
            $validatePhone2 = $this->validatePhone($request->tel2);

            if ($validatePhone1['status'] == 0 || $validatePhone2['status'] == 0)
                return $validatePhone1['status']==0? $validatePhone1 : $validatePhone2;

            if (User::where("username", $request->username)->count() > 0 && $user->username != $request->username)
                return Message::error(__('username already exist'));

            $data = $request->all();
            $data['user_id'] = Auth::user()->id;

            $user->update($data);


            notify(__('edit user'), __('edit user') . " " . $user->name, "fa fa-users");
            return Message::success(Message::$EDIT);
        } catch (Exception $ex) {
            return Message::error(Message::$ERROR);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user) {
        try {
            notify(__('remove user'), __('remove user') . " " . $user->name, "fa fa-users");
            $user->delete();
            return Message::success(Message::$REMOVE);
        } catch (\Exception $exc) {
            return Message::error(Message::$ERROR);
        }
    }

}
