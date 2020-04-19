<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Editting</title>
</head>
<body>
<form id="editform"  action="{{Route('EditRoute',$id)}}" method="post" enctype="multipart/form-data">
    {{csrf_field()}}
    {{method_field('PATCH')}}
    <input hidden type="text" id="_method" value="patch">

    <table>
        <tr><td>
                <label for="jsontext"><h3>Edit the document</h3></label>
            </td>
            <td>
                <textarea class="form-control" id="jsontext" name="jsontext" rows="10" cols="100"  style="font-size: 14pt">
                    {{$document ??''}}
                </textarea>
            </td>
            <td>
                <button type="submit" class="signupbtn" style="width: 200px"><h3>Edit</h3></button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
