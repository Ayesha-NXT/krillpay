@extends('admin::master')
@section('title', $page_header)
@section('content-header', $page_header)
@section('content')
<div class="card">
    <div class="card-header">{{ $page_header }}
        <div class="card-header-actions">
            <a class="card-header-action btn btn-warning" href="{{ route($link.'.create') }}">{!! ADD_ICON !!}</a>
        </div>
    </div>
    <div class="card-body table-responsive">
        <table class="table table-hover table-sm dataTable compact">
            <thead class="bg-primary">
                <tr>
                    <th>S.No</th>
                    <th>Title</th>
                    <th>Published Date</th>
                    <th>View Count</th>
                    <th class="text-center">Open Link</th>
                    <th class="text-center">Show on Homepage</th>
                    <th class="text-center">Status</th>
                    <th class="text-center">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php $count = 1; // $count = ($list->currentpage()-1)*$list->perpage()+1; ?>
                @if(!empty($list))
                @foreach ($list as $item)
                <tr>
                    <td>{{ $count++ }}</td>
                    <td>{{ Str::limit($item->title, $limit = 60, $end = '...') }}</td>
                    <td>{{ $item->published_date }}</td>
                    <td>{{ number_format($item->viewcount) }}</td>
                    <td class="text-center"><a href="" target="_blank"><i class="fa fa-external-link" aria-hidden="true"></i></a></td>
                    <td class="text-center">{!! getYesNoStatus($item->show_on_homepage) !!}</td>
                    <td class="text-center">{!! getStatus($item->status) !!}</td>
                    <td class="text-center">
                        <a href="{{ route($link.'.edit', $item->id) }}"> {!! EDIT_ICON !!} </a> |
                        <a href="{{ route($link.'.delete', $item->id) }}" class="resetbtn">{!! DELETE_ICON !!} </a>
                    </td>
                </tr>
                @endforeach
                @else
                <tr>
                    <td colspan="5">{!! NO_RECORD !!}</td>
                </tr>
                @endif
            </tbody>
        </table>
    </div>
</div>
@endsection