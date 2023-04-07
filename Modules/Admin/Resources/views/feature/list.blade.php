@extends('admin::master')
@section('title', $page_header)
@section('content-header', $page_header)
@section('content')
<div class="row">
    <div class="col-md-8">
        @include('admin::feature.table')
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">Add {{ $page_header }}</div>
            <div class="card-body">
                <form class="" method="POST" action="{{ route($link.'.store') }}">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="name">Title <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="name" name="title" value="{{ old('title') }}">
                        @if ($errors->has('title'))
                            <span class="help-block">
                                <strong>{{ $errors->first('title') }}</strong>
                            </span>
                        @endif
                    </div>

                    <div class="form-group">
                        <label for="name">Sub title <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="name" name="sub_title" value="{{ old('sub_title') }}">
                        @if ($errors->has('sub_title'))
                            <span class="help-block">
                                <strong>{{ $errors->first('sub_title') }}</strong>
                            </span>
                        @endif
                    </div>
                    
                    <div class="form-group">
                    <label class="control-label" for="description">Description <span class="text-danger">*</span></label>
                    <br>
                    <textarea id="my-editor" class="tinymce" name="description" placeholder="Place some text here" >{{ old('description') }}</textarea>
                    @if ($errors->has('description'))
                    <span class="help-block">
                        <strong>{{ $errors->first('description') }}</strong>
                    </span>
                    @endif
                </div>

                   <!-- <div class="form-group">
                        <label for="description">Description</label>
                        <textarea name="description" class="form-control" id="description" rows="3">{{ old('description') }}</textarea>
                        @if ($errors->has('description'))
                            <span class="help-block">
                                <strong>{{ $errors->first('description') }}</strong>
                            </span>
                        @endif
                    </div>-->
                    <div class="form-group">
                        <label class="control-label">Image</label>
                        @if(!empty($record->image))
                            <img src="{{ asset($record->image) }}" alt="" title="" class='fancybox' id="prev_img" />
                        @elseif(!empty(old('image')))
                            <img src="{{ old('image') }}" alt="" title="" class='fancybox' id="prev_img" />
                        @else
                            <img src="{{ asset('admin/images/no-image.png', $secure = null) }}" alt="" class='fancybox' title="" id="prev_img" />
                        @endif
                        <a href="{{ url('/uploads/filemanager/dialog.php?type=1&field_id=image') }}" data-fancybox-type="iframe" class="btn btn-info fancy">Insert</a>
                        <button class="btn btn-danger remove_box_image" type="button">Remove</button>
                        <button class="btn btn-warning prev_box_image" type="button" style="display: none;">Previous Image</button>
                        <input type="hidden" value="{{ isset($record->image)?asset($record->image):old('image') }}"  name="image" class="form-control" id="image">
                        @if ($errors->has('image'))
                            <span class="help-block">
                                <strong>{{ $errors->first('image') }}</strong>
                            </span>
                        @endif
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
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection