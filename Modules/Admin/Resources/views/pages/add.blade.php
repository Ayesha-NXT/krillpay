@extends('admin::master')
@section('title', $page_header)
@section('content-header', $page_header)
@section('content')
<div class="card">
    <div class="card-header">{{ $page_header }}
        <div class="card-header-actions">
            <a class="card-header-action btn btn-warning" href="{{ route($link.'.index') }}">{!! VIEWLIST_ICON !!}</a>
        </div>
    </div>
    <div class="card-body">
        <form class="" method="POST" action="{{ route($link.'.store') }}">
            {{ csrf_field() }}
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label class="control-label" for="title">Title (English)</label>
                        <input type="text" class="form-control" id="title" name="title" value="{{ old('title') }}" >
                        @if ($errors->has('title'))
                        <span class="help-block">
                            <strong>{{ $errors->first('title') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="title">Sub Title</label>
                        <input type="text" class="form-control" id="title" name="sub_title" value="{{ old('sub_title') }}" >
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="description">Description : </label>
                        <br>
                        <textarea id="my-editor" class="tinymce" name="description" placeholder="Place some text here" >{{ old('description') }}</textarea>
                        @if ($errors->has('description'))
                        <span class="help-block">
                            <strong>{{ $errors->first('description') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="meta_title">SEO Title </label>
                        <input type="text" class="form-control" id="meta_title" name="meta_title" value="{{ old('meta_title') }}" >
                        @if ($errors->has('meta_title'))
                        <span class="help-block">
                            <strong>{{ $errors->first('meta_title') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="meta_keywords">SEO Keywords </label>
                        <input type="text" class="form-control" id="meta_keywords" name="meta_keywords" value="{{ old('meta_keywords') }}" >
                        @if ($errors->has('meta_keywords'))
                        <span class="help-block">
                            <strong>{{ $errors->first('meta_keywords') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="meta_description">SEO Description </label>
                        <input type="text" class="form-control" id="meta_description" name="meta_description" value="{{ old('meta_description') }}" >
                        @if ($errors->has('meta_description'))
                        <span class="help-block">
                            <strong>{{ $errors->first('meta_description') }}</strong>
                        </span>
                        @endif
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label class="control-label">Banner Image</label>
                        @if (!empty($record->image))
                        <img src="{{ $record->image }}" class="fancybox" alt="" title="" id="prev_img" />
                        @else
                        <img src="{{ asset('admin/images/no-image.png', $secure = null) }}" class="fancybox" alt="" title="" id="prev_img" />
                        @endif
                        <div class="clearfix"></div>
                        <a href="{{ url('/uploads/filemanager/dialog.php?type=1&field_id=image') }}" data-fancybox-type="iframe" class="btn btn-info fancy">Insert</a>
                        <button class="btn btn-danger remove_box_image" type="button">Remove</button>
                        <button class="btn btn-warning prev_box_image" type="button" style="display: none;">Previous Image</button>
                        <input type="hidden" value="{{ isset($record->image)?$record->image:'' }}"  name="image" class="form-control" id="image">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="show_on_homepage">Show on Homepage</label>
                        <br>
                        <div class="form-check form-check-inline mr-4">
                            <input class="form-check-input" type="radio" value="1" name="show_on_homepage" @if(old('show_on_homepage') == 1) {{ 'checked' }} @endif>
                            <label class="form-check-label" for="inline-radio1">Yes</label>
                        </div>
                        <div class="form-check form-check-inline mr-1">
                            <input class="form-check-input" type="radio" value="0" name="show_on_homepage" @if(old('show_on_homepage') == 0) {{ 'checked' }} @endif>
                            <label class="form-check-label" for="inline-radio2">No</label>
                        </div>
                        @if ($errors->has('show_on_homepage'))
                        <span class="help-block">
                            <strong>{{ $errors->first('show_on_homepage') }}</strong>
                        </span>
                        @endif
                    </div>
                    <hr>
                    <div class="form-group">
                        <label for="status">Published Date</label>
                        <input type="text" name="published_date" class="form-control datepicker" value="{{ date('Y-m-d') }}">
                    </div>
                    <div class="form-group">
                        <label for="status">Status</label>
                        <select name="status" id="statusid" class="form-control">
                            <option value="1">{!! PUBLISH !!}</option>
                            <option value="0">{!! UNPUBLISH !!}</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-success">Submit</button>
                        <button type="reset" class="btn btn-danger resetbtn">Clear</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection