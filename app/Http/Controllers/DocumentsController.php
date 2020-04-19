<?php

namespace App\Http\Controllers;

use App\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DocumentsController extends Controller
{
    //The list of all documents action
    public function documnetslist()
    {
        $userid=Auth::id();
        $documents=DB::table("documents")
            ->where('user_id', '=', $userid)
            ->orderBy('id', 'desc')
            ->paginate(20);
        $jsdocument=null;
        $myArr = array();
//foreach ($documents as $document)
//{
//    $jsdocument=json_encode($document);
//    array_push($myArr,$jsdocument);
//}
     return view('documents',['documents'=>$documents]);
    }

    //Create new document action
    public function create(Request $request)
    {
        $userid=Auth::id();
        //create a draft document
        DB::table('documents')->insert([
            ['user_id' => $userid,
                'status' => "draft",
                'payload' =>"{}"
            ]
        ]);
          return redirect('documents')->with('alert', 'Successfully created!');
    }
    //Open editting form action
    public function showeditform($id,Request $request)
    {
    $document = DB::table('documents')->find($id);
    if ($document===null)
    {
       header('HTTP/1.1 404 Not Found');
    }
    else {
        if ($document->status == "draft") {
            return view('editform', ['id' => $id, 'document' => $document->payload]);
        } else {
            http_response_code(400);
        //    header("HTTP/1.1 400 Bad request");
        // abort(400,'Bad request');
        }
    }
    }
    // Edit a draft document
    public function editdocument($id,Request $request)
    {
        $edited_doc=$request->get('jsontext');
        $document = Document::find($id);
        $document->payload=$edited_doc;
        $document->save();
         return redirect('documents') ->with('alert', 'Successfully editted!');
    }
    //Publish a draft action
    public function publishdocument($id,Request $request)
    {
        $document = Document::find($id);

        if($document->status=="draft") {
            $document->status="published";
            $document->save();
            return redirect('documents') ->with('alert', 'Successfully published!');
        }
        else
        {
            header("HTTP/1.1 200 OK");
//            abort(200,'The doocument can not be published');
        }
    }
}
