<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta property="og:title" content="MANIAC XI">
    <meta property="og:description" content="MANIAC (Multimedia and Interactive Art Competition) merupakan lomba berbasis multimedia untuk siswa SMA/K sederjat yang mencakup rally, dan design games assets. MANIAC diselenggarakan oleh Program Studi Informatika program Multimedia Universitas Surabaya.">
    <meta property="og:url" content="https://maniac.ifubaya.id">
    <meta property="og:image" content="https://maniac.ifubaya.id/mainweb/img/logo/square-logo.png">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

    {{-- Font Awesome --}}
    <script src="https://kit.fontawesome.com/9be5ea7e91.js" crossorigin="anonymous"></script>

    {{-- Fonts --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('../mainweb/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('../mainweb/css/navbar.css') }}">

    <link href="{{ asset('../mainweb/img/logo/logo.ico') }}" rel="shorcut icon">
    @yield('style')

    <title>
        MANIAC XI - @yield('title')
    </title>
</head>
<body>
    
    @include('layouts.navbar')

    @yield('content')

    {{-- Footer --}}
    <section id="footer">
        <div class="container">
            <div class="row text-center">
                <div class="col-12 d-flex align-items-center justify-content-center">
                    <div class="row">
                        <div class="col-12 mt-3 fs-3">Social Media</div>
                        <div class="col-12">
                            <div class="row mt-3">
                                <div class="col-3 d-flex align-items-center justify-content-center">
                                    <a href="https://www.instagram.com/maniac_ubaya/" target="_blank" class="socialmedia-wrapper d-flex align-items-center justify-content-center">
                                        <img src="{{ asset('../mainweb/img/icon/instagram.png') }}" alt="" srcset="" class="footer-icon">
                                    </a>
                                </div>
                                <div class="col-3 d-flex align-items-center justify-content-center">
                                    <a href="https://www.instagram.com/maniac_ubaya/" target="_blank" class="socialmedia-wrapper d-flex align-items-center justify-content-center">
                                        <img src="{{ asset('../mainweb/img/icon/youtube.png') }}" alt="" srcset="" class="footer-icon">
                                    </a>
                                </div>
                                <div class="col-3 d-flex align-items-center justify-content-center">
                                    <a href="https://liff.line.me/1645278921-kWRPP32q/?accountId=994nxsfr" target="_blank" class="socialmedia-wrapper d-flex align-items-center justify-content-center">
                                        <img src="{{ asset('../mainweb/img/icon/line.png') }}" alt="" srcset="" class="footer-icon">
                                    </a>
                                </div>
                                <div class="col-3 d-flex align-items-center justify-content-center">
                                    <a href="mailto:maniac.ubayaa@gmail.com" class="socialmedia-wrapper d-flex align-items-center justify-content-center" title="maniac.ubayaa@gmail.com">
                                        <img src="{{ asset('../mainweb/img/icon/email.png') }}" alt="" srcset="" class="footer-icon">
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>

                    
                </div>
                <div class="col-12 d-flex align-items-center justify-content-center">
                    <div class="row">
                        <div class="col-12 fs-3" style="margin-top: 2rem">Contact Person</div>
                        <div class="col-12 ">
                            <div class="row mt-2 d-flex align-items-center">
                                <div class="col-12 d-flex align-items-center justify-content-center contact-person-wrapper">
                                    <a href="https://wa.me/+6285730781045" target="_blank" class="socialmedia-wrapper d-flex align-items-center justify-content-center">
                                        <img src="{{ asset('../mainweb/img/icon/whatsapp.png') }}" alt="" srcset="" class="footer-icon"> 
                                    </a>
                                    Richard : &nbsp;<a href="https://wa.me/+6285730781045" target="_blank"> 081260644333</a>
                                    
                                </div>
                                <div class="col-12 d-flex align-items-center justify-content-center contact-person-wrapper mt-2">
                                    <a href="https://wa.me/+6285730781045" target="_blank" class="socialmedia-wrapper d-flex align-items-center justify-content-center">
                                        <img src="{{ asset('../mainweb/img/icon/whatsapp.png') }}" alt="" srcset="" class="footer-icon"> 
                                    </a>
                                    Paulina : &nbsp;<a href="https://wa.me/+6285730781045" target="_blank"> 085730781045</a>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {{-- <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="row">
                        <div class="col-12 mt-3 fs-3">Our Location</div>
                        <div class="col-12 mt-2">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7689.26769629826!2d112.76750596476232!3d-7.3212739372670725!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7311b083dc2502a7!2sUBAYA%20(%20UNIVERSITAS%20SURABAYA%20)!5e0!3m2!1sen!2sid!4v1652534141596!5m2!1sen!2sid" width="80%" height="250"allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div> --}}
                <div class="col-12 mt-5 fs-6">Developed by MANIAC XII Comitee</div>
                <div class="col-12 fs-6">Lapor bug & kendala web hubungi <a href="mailto:si.maniac10@gmail.com" style="color: #fff">si.maniac10@gmail.com</a></div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    @yield('script')
</body>
</html>