<?php

namespace App;

use DB;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use \Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

use App\helper\ViewBuilder;

class User  extends Authenticatable
{
    use SoftDeletes;
    use Notifiable;

    /**
     * table name of user model
     *
     * @var type
     */
    protected $table = "users";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'username',
        'password',
        'birthdate',
        'national_id',
        'address',
        'email',
        'tel1',
        'tel2',
        'user_id',
        'role_id',
        'project_id',
        'loan_balance'
    ];


    public function role() {
        return $this->belongsTo("App\Role");
    }

    public function project() {
        return $this->belongsTo("App\Project");
    }

    public function _can($permissionName) {
        $permission = Permission::where("name", $permissionName)->first();

        if (!$permission) {
            $permission = Permission::create([
                "name" => $permissionName
            ]);
        }

        try {
            $role = RoleHasPermission::where("role_id", $this->role_id)->where("permission_id", $permission->id)->first();

            if ($role)
                return true;
        } catch (\Exception $exc) { }
        return false;
    }


    /**
     * build view object this will make view html
     *
     * @return ViewBuilder
     */
    public function getViewBuilder() {
        $builder = new ViewBuilder($this, "rtl");


        $roles = [
            ['', __("dont't has role")]
        ];
        foreach(Role::all() as $item)
            $roles[] = [$item->id, $item->name];

        $builder->setAddRoute(url('/dashboard/user/store'))
                ->setEditRoute(url('/dashboard/user/update') . "/" . $this->id)
                ->setCol(["name" => "id", "label" => __('id'), "editable" => false ])
                ->setCol(["name" => "name", "label" => __('name')])
                ->setCol(["name" => "username", "label" => __('username')])
                ->setCol(["name" => "password", "label" => __('password'), "type", "password"])
                ->setCol(["name" => "birthdate", "label" => __('birthdate'), "type" => "date"])
                ->setCol(["name" => "national_id", "label" => __('national id')])
                ->setCol(["name" => "address", "label" => __('address')])
                ->setCol(["name" => "role_id", "label" => __('role'), "type" => "select", "data" => $roles, "required" => false])
                ->setCol(["name" => "email", "label" => __('email'), "type" => "email", "required" => false])
                ->setCol(["name" => "tel1", "label" => __('tel 1'), "required" => false, "type", "phone"])
                ->setCol(["name" => "tel2", "label" => __('tel 2'), "required" => false, "type", "phone"])

                ->setUrl(url('/image/users'))
                ->build();

        return $builder;
    }
}
