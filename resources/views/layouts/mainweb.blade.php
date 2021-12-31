<!doctype html>

<html lang="en">

  <head>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="">

    <meta name="author" content="">

    <link rel="shortcut icon" href="{{asset("mainweb/images/icon/title_leaf.ico")}}">

    <title>@yield('title')</title>



    <link rel="stylesheet" href="{{asset('mainweb/css/bootstrap.min.css')}}">

    <link rel="stylesheet" href="{{asset('mainweb/css/unicons.css')}}">

    <link rel="stylesheet" href="{{asset('mainweb/css/owl.carousel.min.css')}}">

    <link rel="stylesheet" href="{{asset('mainweb/css/owl.theme.default.min.css')}}">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">



    <!-- MAIN STYLE -->

    <link rel="stylesheet" href="{{asset('mainweb/css/tooplate-style.css')}}">

    <link rel="stylesheet" href="{{asset('mainweb/css/aboutus.css')}}">

    <link rel="stylesheet" href="{{asset('mainweb/css/faq.css')}}">

    <link rel="stylesheet" href="{{asset('mainweb/css/style.css')}}">

    <link rel="stylesheet" href="{{asset('mainweb/css/announcement.css')}}">

    <link rel="stylesheet" href="{{asset('mainweb/css/article.css')}}">

    

    @yield('style')

<!--



Tooplate 2115 Marvel



https://www.tooplate.com/view/2115-marvel



-->

  </head>

  <body>



    <!-- MENU -->

    <nav id="navbar-main" class="navbar navbar-expand-sm navbar-light" style="background-color:#5cc990; border:none">

        <div class="container">

            <div>

                <a href="{{url('/')}}"><img style="max-height: 60px; margin-right:10px" src="{{asset("mainweb/images/logo/ubaya_color.png")}}"></a>

                <a href="{{url('/')}}"><img style="max-height: 80px;" src="{{asset("mainweb/images/logo/ceg_color_white.png")}}"></a>

            </div>



            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"

                aria-label="Toggle navigation">

                <span class="navbar-toggler-icon"></span>

                <span class="navbar-toggler-icon"></span>

                <span class="navbar-toggler-icon"></span>

            </button>

            

            @guest

            <div class="collapse navbar-collapse" id="navbarNav" style="background-color: transparent">

                <ul class="navbar-nav mx-auto">

                    <li class="nav-item">

                        <a href="{{url('/')}}" class="nav-link"><span data-hover="Home">Home</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('aboutus')}}" class="nav-link"><span data-hover="About Us">About Us</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('registration')}}" class="nav-link"><span data-hover="Registration">Registration</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('FAQ')}}" class="nav-link"><span data-hover="FAQ">FAQ</span></a>

                    </li>



                   

                    <li class="nav-item">

                        <a href="{{url('login')}}" class="nav-link"><span data-hover="Login">Login</span></a>

                    </li>

                    
                </ul>



            </div>



            @elseif(Auth::user()->role == 'peserta')

            <div class="collapse navbar-collapse" id="navbarNav" style="background-color: transparent">

                <ul class="navbar-nav mx-auto">

                    <li class="nav-item">

                        <a href="{{url('/')}}" class="nav-link"><span data-hover="Home">Home</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('aboutus')}}" class="nav-link"><span data-hover="About Us">About Us</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('FAQ')}}" class="nav-link"><span data-hover="FAQ">FAQ</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('announcement')}}" class="nav-link"><span data-hover="Pengumuman">Pengumuman</span></a>

                    </li>

                    @if(Auth::user()->tim->status_peserta != 'inactive')
                        <li class="nav-item">
    
                            <a href="{{url('activesession')}}" class="nav-link"><span data-hover="Active Session">Active Session</span></a>
    
                        </li>
                    @endif


                    <li class="nav-item dropdown">

                        <a class="nav-link" onclick="event.preventDefault();  document.getElementById('logout-form').submit();">

                            <span data-hover="Logout">{{ __('Logout') }}</span>

                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">

                            @csrf

                        </form>

                    </li>

                </ul>



            </div>

            @elseif(Auth::user()->role == 'admin')

            <div class="collapse navbar-collapse" id="navbarNav" style="background-color: transparent">

                <ul class="navbar-nav mx-auto">

                    <li class="nav-item">

                        <a href="{{url('/admin/dashboard')}}" class="nav-link"><span data-hover="Dashboard">Dashboard</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('admin/peserta')}}" class="nav-link"><span data-hover="Peserta">Peserta</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('admin/adduser')}}" class="nav-link"><span data-hover="Akses">Akses</span></a>

                    </li>

                   <!-- <li class="nav-item">

                       <a href="{{route('admin.rekapan')}}" class="nav-link"><span data-hover="Rekapan">Rekapan</span></a>

                    </li> -->



                    <!--<li class="nav-item">-->

                    <!--    <a href="{{url('activesession')}}" class="nav-link"><span data-hover="Active Session">Active Session</span></a>-->

                    <!--</li>-->


                    <li class="nav-item dropdown">

                        <a class="nav-link" onclick="event.preventDefault();  document.getElementById('logout-form').submit();">

                            <span data-hover="Logout">{{ __('Logout') }}</span>

                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">

                            @csrf

                        </form>

                    </li>

                </ul>



            </div>

            @elseif(Auth::user()->role == 'pubreg')

            <div class="collapse navbar-collapse" id="navbarNav" style="background-color: transparent">

                <ul class="navbar-nav mx-auto">

                    <li class="nav-item">

                        <a href="{{url('/admin/dashboard')}}" class="nav-link"><span data-hover="Dashboard">Dashboard</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('admin/peserta')}}" class="nav-link"><span data-hover="Data Peserta">Data Peserta</span></a>

                    </li>

                    <li class="nav-item dropdown">

                        <a class="nav-link" onclick="event.preventDefault();  document.getElementById('logout-form').submit();">

                            <span data-hover="Logout">{{ __('Logout') }}</span>

                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">

                            @csrf

                        </form>

                    </li>

                </ul>



            </div>

            @elseif(Auth::user()->role == 'bph')

            <div class="collapse navbar-collapse" id="navbarNav" style="background-color: transparent">

                <ul class="navbar-nav mx-auto">

                    <li class="nav-item">

                        <a href="{{url('/admin/dashboard')}}" class="nav-link"><span data-hover="Dashboard">Dashboard</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('admin/peserta')}}" class="nav-link"><span data-hover="Data Peserta">Data Peserta</span></a>

                    </li>

                    <li class="nav-item dropdown">

                        <a class="nav-link" onclick="event.preventDefault();  document.getElementById('logout-form').submit();">

                            <span data-hover="Logout">{{ __('Logout') }}</span>

                        </a>



                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">

                            @csrf

                        </form>

                    </li>

                </ul>



            </div>

            @elseif(Auth::user()->role == 'keamanan')

            <div class="collapse navbar-collapse" id="navbarNav" style="background-color: transparent">

                <ul class="navbar-nav mx-auto">

                    <li class="nav-item">

                        <a href="{{url('/admin/dashboard')}}" class="nav-link"><span data-hover="Dashboard">Dashboard</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('admin/peserta')}}" class="nav-link"><span data-hover="Data Peserta">Data Peserta</span></a>

                    </li>

                    <li class="nav-item">

                        <a href="{{url('admin/add-pelanggaran')}}" class="nav-link"><span data-hover="Pelanggaran">Pelanggaran</span></a>

                    </li>

                   <li class="nav-item">

                       <a href="{{route('admin.rekapan')}}" class="nav-link"><span data-hover="Rekapan">Rekapan</span></a>

                    </li>

                    <li class="nav-item dropdown">

                        <a class="nav-link" onclick="event.preventDefault();  document.getElementById('logout-form').submit();">

                            <span data-hover="Logout">{{ __('Logout') }}</span>

                        </a>



                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">

                            @csrf

                        </form>

                    </li>

                </ul>



            </div>

            @endguest



            @guest

            @else

            <div>

                @if(Auth::user()->role == 'peserta')

                <a class="nav-link" href="{{url('profile')}}" >

                    <span> {{ Auth::user()->name }} - {{ ucwords(Auth::user()->role) }} </span>  

                </a>

                @else

                <a class="nav-link" href="javascript:void(0)" >

                    <span> {{ Auth::user()->name }} - {{ ucwords(Auth::user()->role) }} </span>  

                </a>

                @endif

            </div>

            @endguest



        </div>
    </nav>

    @yield('content')

    <!-- FOOTER -->

     <footer class="footer py-3" style="margin-top:auto;">

          <div class="container">

               <div class="row">



                    <div class="col-lg-12 col-12">                                

                        <p class="copyright-text text-center">Copyright &copy; 2020 CEG UBAYA 2021 Committee . All rights reserved</p>

                        <p class="copyright-text text-center">Developed by <a rel="nofollow" href="mailto:si.cegubaya@gmail.com" class="copyright">CEG 2021 Information System</a></p>

                    </div>

                    

               </div>

          </div>

     </footer>



    <script src="{{asset('mainweb/js/jquery-3.3.1.min.js')}}"></script>

    <script src="{{asset('mainweb/js/popper.min.js')}}"></script>

    <script src="{{asset('mainweb/js/bootstrap.min.js')}}"></script>

    <script src="{{asset('mainweb/js/Headroom.js')}}"></script>

    <script src="{{asset('mainweb/js/jQuery.headroom.js')}}"></script>

    <script src="{{asset('mainweb/js/owl.carousel.min.js')}}"></script>

    <script src="{{asset('mainweb/js/smoothscroll.js')}}"></script>

    <script src="{{asset('mainweb/js/custom.js')}}"></script>

    <script src="{{asset('mainweb/js/pagination.js')}}"></script>

    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>

    @yield('script')

    @yield('modal')

  </body>

</html>