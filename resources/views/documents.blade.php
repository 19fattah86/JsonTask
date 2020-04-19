<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link type="text/css" href="{{ asset('css/style.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>The documents list</title>
</head>
<body>
<center><div><h1>JSON SYSTEM</h1></div></center>


<script>
    var msg = '{{Session::get('alert')}}';
    var exist = '{{Session::has('alert')}}';
    if(exist){
        alert(msg);
    }
</script>

<form  action="{{Route('Create')}}" method="POST" enctype="multipart/form-data">
    {{csrf_field()}}
    {{method_field('POST')}}
{{--    <input hidden type="text" id="inpid" name="inpid" value="{}">--}}
<div class="alert alert-primary" role="alert" style="text-align: center">
    <label style="font-size: large">Create a new document</label>
    <input type="submit" class="btn btn-secondary" value="Create">
</div>
</form>
<div><h2 style="text-align: center">The list of all documents</h2></div>
<table class="table">
    <tr>
        <th scope="col">No</th>
        <th scope="col">Document</th>
        <th scope="col">Edit</th>
        <th scope="col">Publish</th>
    </tr>
@foreach($documents as $document)
  <tr>
            <td>{{$document->id}}</td>
      <td>  <div class="card">
                    <div class="card-body">
                        {{$document->payload}}
                    </div>
                </div></td>
            <td><form action="{{Route('GetRoute',$document->id)}}" method="get" enctype="multipart/form-data">

                    <input hidden type="text" id="_method" value="get">
                    <input type="submit" class="btn btn-success" value="Edit">
                </form></td>
            <td><form action="{{Route('PublishRoute',$document->id)}}" method="post" enctype="multipart/form-data">
                    {{csrf_field()}}
                    {{method_field('POST')}}
                    <input hidden type="text" id="_method" value="post">
                    <input type="submit" class="btn btn-primary" value="Publish">
                </form></td>
        </tr>

    @endforeach
</table>
{{ $documents->links("pagination::bootstrap-4")}}
</body>
</html>
