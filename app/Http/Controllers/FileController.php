<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Files;
use App\Products;
class FileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $files = Files::all();
        //$files->load($this->relationships);
        return response()->json(['data' => $files]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    public function upload(Request $request)
    {
        //

        $files = $request->file('files');

        foreach ($files as $file) {
            $filename   = $file->getClientOriginalName();
            $filename   = date('Ymd H:i') . '-' . $filename;
            $content    = file_get_contents($file->getRealPath());

            $newfile = new Files;
            $newfile->name = $filename;
            $newfile->content = $content;
            $newfile->save();

            $file->storeAs('/uploads', $filename);
        }

        return response()->json(['message' => 'The file is uploaded'], 201);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
    }

    public function executeCommands(Request $request){
       
        $id = $request->id;
        $file = Files::find($id);

        $commands = [
            'agregar',
            'restar',
            'desactivar' => 1,
            'activar'=> 2,
        ];

        $data = str_getcsv($file->content, "\n");
        
        foreach($data as $key => $row) {
            $row = str_getcsv($row, ",");

            $product = null;
            $product = Products::findOrFail($row[0]);

            if ($product != null){
                if ($row[1] == 'agregar'){
                    $product->units = $product->units + (int)$row[2];                  
                }
                elseif ($row[1] == 'restar'){
                    
                    $units = (int)$row[2];
                    $product->units = (($product->units - $units) >= 0 ? ($product->units - $units) : 0);
                }
                elseif ($row[1] == 'activar'){
                    $product->status_id = $commands[$row[1]];
                }
                elseif ($row[1] == 'desactivar'){
                    $product->status_id = $commands[$row[1]];    
                }

                $product->save();
                $product = null;  
            }
        };

        return response()->json(['message' => 'Commands is already executed'], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $file = Files::find($id);
        $file->delete();

        return response()->json(['data' => $id,'message' => 'File is Deleted'], 201);
    }
}
