<?php

namespace Modules\Admin\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Modules\Admin\Entities\AdminCountry;

class AdminCountryController extends Controller {

    private $title = 'Country';
    private $sort_by = 'title';
    private $sort_order = 'asc';
    private $index_link = 'country.index';
    private $list_page = 'admin::country.list';
    private $create_form = 'admin::country.add';
    private $update_form = 'admin::country.edit';
    private $link = 'country';

    public function index()
    {

        $list = AdminCountry::orderBy($this->sort_by, $this->sort_order)->get();
        $result = array(
            'list'              => $list,
            'page_header'       => $this->title,
            'link'              => $this->link,
        );
        return view($this->list_page, $result);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return redirect(route($this->index_link));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'success_percentage' => 'required',
        ]);
        $crud = new AdminCountry;
        $crud->title = $request->title;
        $crud->success_percentage = $request->success_percentage;
        $crud->status = $request->status;
        $crud->created_by = session('admin')['userid'];
        $crud->save();
        Session::flash('success_message', CREATED);
        return redirect(route($this->index_link));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $record = AdminCountry::findOrFail($id);
        $list = AdminCountry::orderBy($this->sort_by, $this->sort_order)->get();
        $result = array(
            'page_header'       => $this->title,
            'record'            => $record,
            'list'              => $list,
            'link'              => $this->link,
        );
        return view($this->update_form, $result);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title'      => 'required',
            'success_percentage' => 'required',
        ]);
        $crud = AdminCountry::findOrFail($id);
        $crud->title = $request->title;
        $crud->success_percentage = $request->success_percentage;
        $crud->status = $request->status;
        $crud->updated_by = session('admin')['userid'];
        $crud->save();
        Session::flash('success_message', UPDATED);
        return redirect(route($this->index_link));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $crud = AdminCountry::findOrFail($id);
        $crud->delete();
        Session::flash('success_message', DELETED);
        return redirect(route($this->index_link));
    }
}