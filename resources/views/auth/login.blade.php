@extends('layouts.mainweb')

@section('title')
    Login
@endsection

@section('content')

    <section id="login" style="margin: 25px 0">
<!-- asset-star -->
    <div class="position-absolute" style=" top: 150px; left: 200px;">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>  
    <div class="position-absolute" style="right: 15%; top: 250px; z-index: -2;">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>
    <div class="position-absolute" style="right: 25%; top:50%; z-index: -2;">  
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>
    <div class="position-absolute" style="left: 400px; top: 500px;">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>
    <div class="position-absolute" style=" top: 900px;left:750px;"">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>
    <div class="position-absolute" style="left:180px; top: 750px;">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>
    <div class="position-absolute" style="right: 35%; top: 950px; z-index: -2;">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>

    <!-- asset : moon -->
    <div class="position-relative overflow-hiddens">
    <div class="d-flex justify-content-end position-absolute" style="left: 5%; z-index: -2;">
                <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 6.png') }}" alt="" srcset="">
                <div class="d-inline position-absolute" style="transform:scaleX(-1); bottom: 70px; left: 30px;">
                    <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 15.png') }}" width="80%" alt="" srcset="">
                </div> 
            </div>
        </div>

        <div class="container" style="margin-top: 5%; position: relative;">
            <div class="row justify-content-center" ">
                <div class="col-lg-6 col-md-8 col-sm-10 col-xs-11 text-center">
                     @if(session('loginError'))
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                           {{ session('loginError') }}
                        </div>
                     @endif
                     @if(session()->has('registerClosed'))  
                     <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        {{ session()->get('registerClosed') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                     </div>
                     @endif
                     <div class="d-flex">
                        <div>
                        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 1.png') }}" width="100%" alt="Logo MANIAC XII">
                        </div>
                     <div>
                     <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 4.png') }}" width="100%" alt="" srcset="">
                     </div>
                     </div>

                    <form method="POST" action="{{ url('/login') }}" class="mt-5">
                        @csrf
                        <input type="text" name="username" id="txtUsername"
                            class="myTextbox width-90 @error('username') is-invalid @enderror" placeholder="Username">
                        @error('username')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                        <input type="password" name="password" id="txtPassword"
                            class="myTextbox width-90  @error('password') is-invalid @enderror" placeholder="Password">
                        @error('password')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                        <div class="d-flex align-items-center" style="margin-left: 5%; position: relative;">
                            <input type="checkbox" class="myChkbox mx-2" onclick="showPassword()">
                            <span class="checkmark"></span>
                            <span class="chkText"><strong>Show Password</strong></span>
                        </div>
                        <button class="btn myBtn width-90" type="submit">Login</button>
                    </form>
                    <div class="row justify-content-center">
                        <p class="text-center have-account">Don't have an account yet? <a
                                href="{{ url('/register') }}">Register</a></p>
                    </div>
                </div>
            </div>
        </div>   
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 10 fixed.png') }}" style="display: block; margin-left: auto; margin-right:0;" alt="">  
    </section>
    

    @if (session('loginError'))
      <script>toastr.danger("{ !! session('loginError') !! }");</script>        
    @endif
@endsection

@section('script')

    <script>
        function showPassword() {
            let txtPassword = document.getElementById("txtPassword");
            if (txtPassword.type === "password") {
                txtPassword.type = "text";
            } else {
                txtPassword.type = "password";
            }
        }
    </script>
@endsection
3