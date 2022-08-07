<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


use App\helper\ViewBuilder;
use Illuminate\Database\Eloquent\SoftDeletes;

class Branch extends Model
{

    //use SoftDeletes;

    /**
     * table name of model
     *
     * @var type
     */
    protected $table = "branches";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'main_order_id',
        'backup_order_id',
        'isp',
        'name',
        'region',
        'finance_code',
        'lan_ip',
        'wan_ip',
        'tunnel_ip',
        'ips',
        'solution_info',
        'speed',
        'notes',
        'last_update',
        'custom_field1',
        'custom_field2',
        'custom_field3',
        'custom_field4',
        'custom_field5',
        'user_id',

        'sector',	'zip_code',	'support_suppervisor',	'phone',	'branch_manager',
        'manager_phone',	'branch_degree',	'work_days',	'work_hours',
        'branch_attitude',	'ups_attitude',	'address',	'telephone',
        'connectivity_type',	'added_ip_notes',	'project_name',
        'connectivity_capacity',	'operation_attitude',	'router_type',
        'postal_user_id',	'counter_user_id',
        'voip_no',	'ent_serial',	'ent_model',	'ent_device_type',	'ent_system_name',	'ent_ip'
    ];


    /**
     * build view object this will make view html
     *
     * @return ViewBuilder
     */
    public function getViewBuilder() {
        $builder = new ViewBuilder($this);
/*

        'sector',	'zip_code',	'support_suppervisor',	'phone',	'branch_manager',
        'manager_phone',	'branch_degree',	'work_days',	'work_hours',

        'branch_attitude',	'ups_attitude',	'address',	'telephone',
        'connectivity_type',	'added_ip_notes',	'project_name',

        'connectivity_capacity',	'operation_attitude',	'router_type',
        'postal_user_id',	'counter_user_id',
        'voip_no',	'ent_serial',	'ent_model',	'ent_device_type',	'ent_system_name',	'ent_ip'
*/

        $builder->setPageTitle("branches")
                ->setAddRoute(url('/dashboard/branch/store'))
                ->setEditRoute(url('/dashboard/branch/update') . "/" . $this->id)



                ->setCol(["name" => "id", "label" => __('code'), "editable" => false ])
                ->setCol(["name" => "name", "label" => __('branch_name') ])
                ->setCol(["name" => "main_order_id", "label" => __('main_order_id'), "required" => false ])
                ->setCol(["name" => "backup_order_id", "label" => __('backup_order_id'), "required" => false])
                ->setCol(["name" => "isp", "label" => __('isp') ])
                ->setCol(["name" => "region", "label" => __('region') ])
                ->setCol(["name" => "finance_code", "label" => __('finance_code'), "required" => false])
                ->setCol(["name" => "lan_ip", "label" => __('lan_ip') ])
                ->setCol(["name" => "wan_ip", "label" => __('wan_ip') ])
                ->setCol(["name" => "tunnel_ip", "label" => __('tunnel_ip')])
                ->setCol(["name" => "ips", "label" => __('ips'), "placeholder" => "000.000.000.000,000.000.000.000", "required" => false])
                ->setCol(["name" => "solution_info", "label" => __('solution_info'), "required" => false])
                ->setCol(["name" => "speed", "label" => __('speed'), "required" => false])
                ->setCol(["name" => "last_update", "label" => __('last_update'), "required" => false])
                ->setCol(["name" => "notes", "label" => __('notes'), "type" => "textarea", "required" => false])

                ->setCol(["name" => "sector", "label" => __('sector'), "required" => false])
                ->setCol(["name" => "zip_code", "label" => __('zip_code'), "required" => false])
                ->setCol(["name" => "support_suppervisor", "label" => __('support_suppervisor'), "required" => false])
                ->setCol(["name" => "phone", "label" => __('phone'), "required" => false])
                ->setCol(["name" => "branch_manager", "label" => __('branch_manager'), "required" => false])
                ->setCol(["name" => "manager_phone", "label" => __('manager_phone'), "required" => false])
                ->setCol(["name" => "branch_degree", "label" => __('branch_degree'), "required" => false])
                ->setCol(["name" => "work_days", "label" => __('work_days'), "required" => false])
                ->setCol(["name" => "work_hours", "label" => __('work_hours'), "required" => false])
                ->setCol(["name" => "branch_attitude", "label" => __('branch_attitude'), "required" => false])
                ->setCol(["name" => "ups_attitude", "label" => __('ups_attitude'), "required" => false])
                ->setCol(["name" => "address", "label" => __('address'), "required" => false])
                ->setCol(["name" => "telephone", "label" => __('telephone'), "required" => false])
                ->setCol(["name" => "connectivity_type", "label" => __('connectivity_type'), "required" => false])
                ->setCol(["name" => "added_ip_notes", "label" => __('added_ip_notes'), "required" => false])
                ->setCol(["name" => "project_name", "label" => __('project_name'), "required" => false])
                ->setCol(["name" => "connectivity_capacity", "label" => __('connectivity_capacity'), "required" => false])
                ->setCol(["name" => "operation_attitude", "label" => __('operation_attitude'), "required" => false])
                ->setCol(["name" => "router_type", "label" => __('router_type'), "required" => false])
                ->setCol(["name" => "postal_user_id", "label" => __('postal_user_id'), "required" => false])
                ->setCol(["name" => "counter_user_id", "label" => __('counter_user_id'), "required" => false])
                ->setCol(["name" => "voip_no", "label" => __('voip_no'), "required" => false])
                ->setCol(["name" => "ent_serial", "label" => __('ent_serial'), "required" => false])
                ->setCol(["name" => "ent_model", "label" => __('ent_model'), "required" => false])
                ->setCol(["name" => "ent_device_type", "label" => __('ent_device_type'), "required" => false])
                ->setCol(["name" => "ent_system_name", "label" => __('ent_system_name'), "required" => false])
                ->setCol(["name" => "ent_ip", "label" => __('ent_ip'), "required" => false])
                //->setCol(["name" => "salary", "label" => __('salary'), "type" => "number"])
                //->setCol(["name" => "days", "label" => __('days'), "type" => "number"])
                //->setCol(["name" => "hours", "label" => __('hours'), "type" => "number"])
                //->setCol(["name" => "basic_hour_rate", "label" => __('basic_hour_rate'), "type" => "number"])
                //->setCol(["name" => "additional_hour_rate", "label" => __('additional_hour_rate'), "type" => "number"])
                //->setUrl(url('/image/employee'))
                ->build();

        return $builder;
    }
}
