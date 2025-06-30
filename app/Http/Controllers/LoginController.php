<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    function tampilRegistrasi(){
        return view('timbangan.register');
    }

    function submitRegistrasi(Request $request){
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();
        //dd($user);
        return redirect()->route('timbangan.login');
    }

    function tampilLogin () {
        return view('timbangan.login');
    }

    function submitLogin (Request $request){
        $data = $request->only(['email', 'password']);

        if (Auth::attempt($data)) {
            $request->session()->regenerate();
            return redirect()->route('timbangan.admin.layout');
        } else {
            return redirect()->back()->with('error','Email atau password anda salah!');
        }
    }

    function logout() {
        Auth::logout();
        return redirect()->route('timbangan.login');
    }
}
