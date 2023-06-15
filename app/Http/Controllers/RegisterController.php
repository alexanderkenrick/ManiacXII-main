<?php

namespace App\Http\Controllers;

use App\Account;
use App\Team;
use App\TeamDetail;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Mail\ManiacMail;
use Illuminate\Support\Facades\Mail;

class RegisterController extends Controller
{
   public function store(Request $request)
   {

      date_default_timezone_set("Asia/Jakarta");
      $endDate = "5 August 2023";
      $endDateTimestamp = strtotime($endDate);
      if (time() >= $endDateTimestamp) {
          session()->flash('registerClosed', 'Pendaftaran telah ditutup, sampai jumpa di MANIAC XII');
          return redirect('/login');
      }

      $request->validate([
         'username' => ['required','max:45','unique:accounts'],
         'password' => ['required','min:6','max:45'],
         'team_name' => ['required','max:45e'],
         'school_name' => ['required','max:45'],
         'school_address' => ['required','max:45'],
         'school_number' => ['required','max:45'],
         'name' => ['required','max:45'],
         'phone_number' => ['required','max:45'],
         'image' => ['required','max:1024'],
         'email' => ['required','max:45','email:dns'],
         'name1' => ['required','max:45'],
         'phone_number1' => ['required','max:45'],
         'image1' => ['required','max:1024'],
         'email1' => ['required','max:45','email:dns'],
         'name2' => ['required','max:45'],
         'phone_number2' => ['required','max:45'],
         'email2' => ['required','max:45','email:dns'],
         'image2' => ['required','max:1024']
      ]);

      $dataAccount = new Account();
      $dataAccount->username = $request->get('username');
      $dataAccount->password = Hash::make($request->get('password'));

      $dataAccount->save();
      $newIdAccount = $dataAccount->id;

      $memberArr = array();

      $dataTeam = new Team();

      $dataTeam->account_id = $newIdAccount;
      $dataTeam->team_name = $request->get('team_name');
      $dataTeam->school_name = $request->get('school_name');
      $dataTeam->school_address = $request->get('school_address');
      $dataTeam->school_number = $request->get('school_number');

      $dataTeam->save();
      $newIdTeam = $dataTeam->id;

      $dataMember1 = new TeamDetail();
      $dataMember1->team_id = $newIdTeam;
      $dataMember1->name = $request->get('name');
      $dataMember1->role = "Leader";
      $dataMember1->phone_number = $request->get('phone_number');
      $dataMember1->email = $request->get('email');

      $memberArr[]=array('nama'=> $dataMember1->name,
                        'email'=> $dataMember1->email);

      //Image
      $imgFolder = "files";
      $imgFile = time() . "_" . $request->file('image')->getClientOriginalName();
      $request->file('image')->move($imgFolder, $imgFile);
      $dataMember1->image = $imgFile;

      $dataMember1->save();

      $dataMember2 = new TeamDetail();
      $dataMember2->team_id = $newIdTeam;
      $dataMember2->name = $request->get('name1');
      $dataMember2->role = "Member";
      $dataMember2->phone_number = $request->get('phone_number1');
      $dataMember2->email = $request->get('email1');

      $memberArr[]=array('nama'=> $dataMember2->name,
                        'email'=> $dataMember2->email);

      //Image
      $imgFolder = "files";
      $imgFile = time() . "_" . $request->file('image1')->getClientOriginalName();
      $request->file('image1')->move($imgFolder, $imgFile);
      $dataMember2->image = $imgFile;

      $dataMember2->save();

      $dataMember3 = new TeamDetail();
      $dataMember3->team_id = $newIdTeam;
      $dataMember3->name = $request->get('name2');
      $dataMember3->role = "Member";
      $dataMember3->phone_number = $request->get('phone_number2');
      $dataMember3->email = $request->get('email2');

      $memberArr[]=array('nama'=> $dataMember2->name,
                        'email'=> $dataMember2->email);

      //Image
      $imgFolder = "files";
      $imgFile = time() . "_" . $request->file('image2')->getClientOriginalName();
      $request->file('image2')->move($imgFolder, $imgFile);
      $dataMember3->image = $imgFile;

      $dataMember3->save();

      foreach($memberArr as $data => $val){
         RegisterController::sendEmail($val['email'], $dataTeam->team_name, $val['nama']);
      }
      // RegisterController::sendEmail($emailToSend, $dataTeam->team_name);

      return redirect('/login')->with('success', 'Pendaftaran Tim Anda Berhasil');
   }

   public function sendEmail($emailToSend, $team, $nama){
      Mail::to($emailToSend)->send(new ManiacMail($team,$nama));
   }

}