<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\Response;
use Illuminate\Auth\Access\HandlesAuthorization;

class PanitiaPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        
    }

    public function mimin(User $user)
    {
        return ($user->role == 'admin'
                ? Response::allow()
                : Response::deny('Anda Tidak Memiliki Akses Untuk Fitur Ini'));
    }

    public function pubreg(User $user)
    {
        return ($user->role == 'pubreg' || $user->role == 'admin'
                ? Response::allow()
                : Response::deny('Anda Tidak Memiliki Akses Untuk Fitur Ini'));
    }

	public function keamanan(User $user)
    {
        return ($user->role == 'keamanan' || $user->role == 'admin'
                ? Response::allow()
                : Response::deny('Anda Tidak Memiliki Akses Untuk Fitur Ini'));
    }

    public function petua(User $user)
    {
        return ($user->role == 'bph' || $user->role == 'admin'
                ? Response::allow()
                : Response::deny('Anda Tidak Memiliki Akses Untuk Fitur Ini'));
    }

    public function panitia(User $user)
    {
        return ($user->role == 'bph' || $user->role == 'admin' || $user->role == 'pubreg' || $user->role == 'keamanan'
                ? Response::allow()
                : Response::deny('Anda Tidak Memiliki Akses Untuk Fitur Ini'));
    }


}
