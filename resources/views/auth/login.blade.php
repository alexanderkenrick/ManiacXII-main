@extends('layouts.mainweb')

@section('title')
    Login
@endsection

@section('content')

<style>
    .star1{
        top: 15%;
        left: 8%;
        z-index: -2;
    }
    .star2{
        right: 15%; 
        top: 250px; 
        z-index: -2
    }
    .star3{
        right: 25%; 
        top:50%; 
        z-index: -2;
    }
    .star4{
        left: 25%; 
        top: 500px;
        z-index: -2;
    }
    .star5{
        top: 80%; 
        left:50%;
        z-index: -2;
    }
    .star6{
        left:10%; 
        top: 90%;
        z-index: -2;
    }
    .star7{
        right: 35%; 
        top: 120%; 
        z-index: -2;
    }
    /* animation */
    .shine1{
        animation-name: shining;
        animation-duration: 3s;
        animation-timing-function: ease-in-out;
        animation-iteration-count: infinite;
    }
    .shine2{
        animation-name: shining;
        animation-duration: 5s;
        animation-timing-function: ease-in-out;
        animation-iteration-count: infinite;
        animation-direction: reverse;
    }

    @keyframes shining {
    0%,
    100% {
        filter: drop-shadow(0 0 5px #ffd93d);
    }
    50% {
        filter: drop-shadow(0 0 10px #ffd93d);
    }
}
</style>
    <section id="login" style="margin: 25px 0; overflow: hidden;">
<!-- asset-star -->
    <div class="position-absolute star1 shine1">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>  
    <div class="position-absolute star2 shine2">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>
    <div class="position-absolute star3 shine2">  
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>
    <div class="position-absolute star4 shine1">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt=""> 
    </div>
    <div class="position-absolute star5 shine2">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>
    <div class="position-absolute star6 shine1">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>
    <div class="position-absolute star7 shine1 ">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="">
    </div>

    <!-- asset : moon -->
    <div class="position-relative overflow-hiddens">
    <div class="d-flex justify-content-end position-absolute moon-cloud-container">
                <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 6.png') }}" alt="" srcset="">
                    <img class="cloud" src="{{ asset('../mainweb/img/maniacxii-asset/Asset 15.png') }}" alt="" srcset="">
            </div>
        </div>

        <div class="container" style="margin-top: 5%; position: relative; overflow: hidden;">
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
                        <img src="{{ asset('../mainweb/img/logo/logo-header.png') }}" width="100%" alt="Logo MANIAC XII">
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
                                href="{{ url('/register') }}" style="text-decoration: underline">Register</a></p>
                    </div>
                </div>
            </div>
        </div>   
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 10.png') }}" style="display: block; margin-left: auto; margin-right: -200px;" alt="">  
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
