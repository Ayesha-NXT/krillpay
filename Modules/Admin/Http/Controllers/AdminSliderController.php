<?php

namespace Modules\Admin\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Modules\Admin\Entities\AdminSlider;
use Modules\Admin\Http\Controllers\AdminLoginController;

class AdminSliderController extends Controller {

    private $title = 'Slider';
    private $sort_by = 'sort_order';
    private $sort_order = 'asc';
    private $index_link = 'slider.index';
    private $list_page = 'admin::slider.list';
    private $create_form = 'admin::slider.add';
    private $update_form = 'admin::slider.edit';
    private $link = 'slider';

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list = AdminSlider::orderBy($this->sort_by, $this->sort_order)->paginate(PAGES);
        $result = array(
            'list'              => $list,
            'page_header'       => 'List of '.$this->title,
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
        $result = array(
            'page_header'       => 'Add '.$this->title.' Detail',
            'link'              => $this->link,
        );
        return view($this->create_form, $result);
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
            'title'         => 'required',
            'image'         => 'required',
            // 'description'         => 'required',
        ]);
        $user_id = AdminLoginController::id();
        $crud = new AdminSlider;
        $crud->description = $request->description;
        $crud->title = $request->title;
        $crud->sub_title = $request->sub_title;
        $crud->image = chunkfullurl($request->image);
        $crud->published_date = $request->published_date;
        $crud->btn_text = $request->btn_text;
        $crud->btn_url = $request->btn_url;
        $crud->created_by = $user_id;
        $crud->status = $request->status;
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
        $record = AdminSlider::findOrFail($id);
        $result = array(
            'page_header'       => 'Edit '.$this->title.' Detail',
            'record'            => $record,
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
            'title'     => 'required',
            'image'     => 'required',
            // 'description'     => 'required',
        ]);

        $user_id = AdminLoginController::id();
        $crud = AdminSlider::findOrFail($id);
        $crud->title = $request->title;
        $crud->sub_title = $request->sub_title;
        $crud->description = $request->description;
        $crud->image = chunkfullurl($request->image);
        $crud->published_date = $request->published_date;
        $crud->btn_text = $request->btn_text;
        $crud->btn_url = $request->btn_url;
        $crud->updated_by = $user_id;
        $crud->status = $request->status;
        // pe($crud);
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
        $crud = AdminSlider::findOrFail($id);
        $crud->delete();
        Session::flash('success_message', DELETED);
        return redirect(route($this->index_link));
    }
}