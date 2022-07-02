<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller; 
use App\helper\Helper;
use App\helper\Message;
use App\EmployeeAttandance; 
use App\Project; 
use App\Salary;  
use DB;
use DataTables;

class ReportController extends Controller {

    /**
     * Display a listing of the resource. 
     */
    public function projects(Request $request) { 
        $project = null;
        
        if ($request->project_id)
            $project = Project::find($request->project_id);
        
        return view("dashboard.report.project", compact('project'));
    }

    /**
     * Display a listing of the resource. 
     */
    public function salary(Request $request) { 
        $query = Salary::query();
        
        if ($request->employee_id > 0)
            $query->where('employee_id', $request->employee_id);
         
        if (strlen($request->date_from) > 0 && strlen($request->date_to))
            $query->whereBetween('date', [$request->date_from, $request->date_to]);
        
        
        $salaries = $query->get();
        $employees = $query->select("employee_id")->distinct('employee_id')->count();
        return view("dashboard.report.salary", compact('salaries', 'employees'));
    }

    /**
     * Display a listing of the resource. 
     */
    public function attandances(Request $request) { 
        $query = EmployeeAttandance::query();
        
        if ($request->employee_id > 0)
            $query->where('user_id', $request->user_id);
        
        if ($request->user_id > 0)
            $query->where('user_id', $request->user_id);
        
        if (strlen($request->date_from) > 0 && strlen($request->date_to))
            $query->whereBetween('date', [$request->date_from, $request->date_to]);
        
        
        $attandances = $query->get();
        $employees = $query->select("user_id")->distinct('user_id')->count();
        return view("dashboard.report.attandance", compact('attandances', 'employees'));
    }
 

}
