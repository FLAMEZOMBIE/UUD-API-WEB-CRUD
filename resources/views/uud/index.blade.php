@extends('uud.layout')
 
@section('content')
    <div class="row" style="text-align: center">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left" style="margin: 5%">
                <h2>Undang - Undang Dasar Republik Indonesia</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('uud.create') }}" style="margin: 20%"> Add Data</a>
            </div>
        </div>
        <div class="">
            <form action="{{ route('uud.index') }}" method="GET" role="search" style="">

                <div class="input-group" style="width: 100% ">
                    <input type="text" class="form-control mr-2" name="term" placeholder="Search UUD" id="term">
                </div>
            </form>
        </div>
    </div>
   
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
   
    <table class="table table-bordered" style="text-align: center">
        <tr style="text-align: center">
            <th style="text-align: center" width="100px">Bab</th>
            <th style="text-align: center" width="100px">Pasal</th>
            <th style="text-align: center" width="100px">Ayat</th>
            <th style="text-align: center" width="250px">Isi</th>
            <th style="text-align: center" width="300px">Action</th>
        </tr>
        @foreach ($uuds as $uud)
        <tr>
            <td>{{ $uud->bab }}</td>
            <td>{{ $uud->pasal }}</td>
            <td>{{ $uud->ayat }}</td>
            <td>{{ $uud->isi }}</td>
            <td>
                <form action="{{ route('uud.destroy',$uud->id) }}" method="POST">
   
                    <a class="btn btn-info" href="{{ route('uud.show',$uud->id) }}">Show</a>
    
                    <a class="btn btn-primary" href="{{ route('uud.edit',$uud->id) }}">Edit</a>
   
                    @csrf
                    @method('DELETE')
      
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>
  
    {!! $uuds->links() !!}
      
@endsection