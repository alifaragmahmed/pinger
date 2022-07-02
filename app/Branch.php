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
    ];


    /**
     * build view object this will make view html
     *
     * @return ViewBuilder
     */
    public function getViewBuilder() {
        $builder = new ViewBuilder($this);


        $builder->setPageTitle("branches")
                ->setAddRoute(url('/dashboard/branches/store'))
                ->setEditRoute(url('/dashboard/branches/update') . "/" . $this->id)
                ->setCol(["name" => "id", "label" => __('code'), "editable" => false ])
                ->setCol(["name" => "name", "label" => __('branch_name'), "required" => true ])
                ->setCol(["name" => "main_order_id", "label" => __('main_order_id') ])
                ->setCol(["name" => "backup_order_id", "label" => __('backup_order_id')])
                ->setCol(["name" => "isp", "label" => __('isp'), "required" => true ])
                ->setCol(["name" => "region", "label" => __('region'), "required" => true ])
                ->setCol(["name" => "finance_code", "label" => __('finance_code')])
                ->setCol(["name" => "lan_ip", "label" => __('lan_ip'), "required" => true ])
                ->setCol(["name" => "wan_ip", "label" => __('wan_ip'), "required" => true ])
                ->setCol(["name" => "tunnel_ip", "label" => __('tunnel_ip')])
                ->setCol(["name" => "ips", "label" => __('ips'), "placeholder" => "000.000.000.000,000.000.000.000"])
                ->setCol(["name" => "solution_info", "label" => __('solution_info')])
                ->setCol(["name" => "speed", "label" => __('speed')])
                ->setCol(["name" => "last_update", "label" => __('last_update')])
                ->setCol(["name" => "notes", "label" => __('notes'), "type" => "textarea"])

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
