<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Laravel\Socialite\Facades\Socialite;
use App\Models\User;
use Auth;        
use Exeption;

class FacebookController extends Controller
{
    public function facebookpage()
    {
        return Socialite::driver('facebook')->redirect();
    }
    public function facebookredirect()
    {
        try {
    
            $user = Socialite::driver('facebook')->user();
            $isUser = User::where('facebook_id', $user->id)->first();
     
            if($isUser){
                Auth::login($isUser);
                return redirect('user/dashboard');
            }else{
                $createUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'facebook_id' => $user->id,
                    'password' => encrypt('4444'),
                ]);
    
                Auth::login($createUser);
                return redirect('user/dashboard');
            }
    
        } catch (Exception $exception) {
            dd($exception->getMessage());
        }
    }
}
