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

            <footer class="footer-bs mt-3">
                <div class="row w-100 p-5">
                    <div class="col-md-5 footer-brand animated fadeInLeft" style="padding-left: 80px">
                        <h2 style="">Maniac XII</h2>
                        <p>
                            MANIAC (Multimedia and Interactive Art Competition) merupakan lomba berbasis multimedia untuk siswa SMA/K sederjat yang mencakup rally games, game concept design, dan game asset design. MANIAC diselenggarakan oleh Program Studi Teknik Informatika program Multimedia Universitas Surabaya.
                        </p>
                        <div class="brand-text mb-0 d-inline">
                            <img src="" style="height: 60px;">
                        </div>
                        <div class="brand-text mb-0 d-inline">
                            <img src="" style="height: 60px;">
                        </div>
                    </div>
                    <div class="col-md-2 footer-nav animated fadeInUp" style="padding-left: 100px">
                        <h4 style="transform:translateX(-1px)">MENU</h4>
                        {{-- <div class="col-md-6"> --}}
                        <ul class="pages p-0">
                            <li class="li-footer"><a href="{{ url('/') }}">Home</a></li>
                            <li class="li-footer"><a href="{{ url('/about') }}">About Us</a></li>
                            <li class="li-footer"><a href="{{ url('/competition') }}">Competition</a></li>
                            <li class="li-footer"><a  href="{{ url('/faq') }}">FAQ</a></li>
    
                        </ul>
                    </div>
                    <div class="col-md-2 footer-social animated fadeInDown" style="padding-left: 60px">
                        <h4 style="">Follow Us</h4>
                        <ul>
                            <li> <a href="https://www.instagram.com/maniac_ubaya/?hl=en" target="_blank" rel="noopener"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width='16px' height='16px' fill='#fff'><path d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"/></svg>
                                &nbsp; maniac_ubaya</a></li>
                            <li> <a href="https://www.youtube.com/@maniacubaya9585" target="_blank" rel="noopener"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width='16px' height='16px' fill='#fff'><path d="M549.655 124.083c-6.281-23.65-24.787-42.276-48.284-48.597C458.781 64 288 64 288 64S117.22 64 74.629 75.486c-23.497 6.322-42.003 24.947-48.284 48.597-11.412 42.867-11.412 132.305-11.412 132.305s0 89.438 11.412 132.305c6.281 23.65 24.787 41.5 48.284 47.821C117.22 448 288 448 288 448s170.78 0 213.371-11.486c23.497-6.321 42.003-24.171 48.284-47.821 11.412-42.867 11.412-132.305 11.412-132.305s0-89.438-11.412-132.305zm-317.51 213.508V175.185l142.739 81.205-142.739 81.201z"/></svg>
                                &nbsp; Maniac Ubaya</a></li>
        
                        </ul>
                    </div>
                    <div class="col-md-3 footer-social animated fadeInDown" style="padding-left: 60px">
                        <h4 style="">Contact Us</h4>
                        <ul>
                            <li><a href="https://wa.me/+6281260644333" target="_blank" rel="noopener">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width='16px' height='16px' fill='#fff' style="transform: translateX(1px)"><path d="M380.9 97.1C339 55.1 283.2 32 223.9 32c-122.4 0-222 99.6-222 222 0 39.1 10.2 77.3 29.6 111L0 480l117.7-30.9c32.4 17.7 68.9 27 106.1 27h.1c122.3 0 224.1-99.6 224.1-222 0-59.3-25.2-115-67.1-157zm-157 341.6c-33.2 0-65.7-8.9-94-25.7l-6.7-4-69.8 18.3L72 359.2l-4.4-7c-18.5-29.4-28.2-63.3-28.2-98.2 0-101.7 82.8-184.5 184.6-184.5 49.3 0 95.6 19.2 130.4 54.1 34.8 34.9 56.2 81.2 56.1 130.5 0 101.8-84.9 184.6-186.6 184.6zm101.2-138.2c-5.5-2.8-32.8-16.2-37.9-18-5.1-1.9-8.8-2.8-12.5 2.8-3.7 5.6-14.3 18-17.6 21.8-3.2 3.7-6.5 4.2-12 1.4-32.6-16.3-54-29.1-75.5-66-5.7-9.8 5.7-9.1 16.3-30.3 1.8-3.7.9-6.9-.5-9.7-1.4-2.8-12.5-30.1-17.1-41.2-4.5-10.8-9.1-9.3-12.5-9.5-3.2-.2-6.9-.2-10.6-.2-3.7 0-9.7 1.4-14.8 6.9-5.1 5.6-19.4 19-19.4 46.3 0 27.3 19.9 53.7 22.6 57.4 2.8 3.7 39.1 59.7 94.8 83.8 35.2 15.2 49 16.5 66.6 13.9 10.7-1.6 32.8-13.4 37.4-26.4 4.6-13 4.6-24.1 3.2-26.4-1.3-2.5-5-3.9-10.5-6.6z"/></svg>
                                &nbsp;
                                    Richard
                                    (0812-6064-4333)</a></li>
                            <li><a href="https://wa.me/+6285730781045" target="_blank" rel="noopener">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width='16px' height='16px' fill='#fff' style="transform: translateX(1px)"><path d="M380.9 97.1C339 55.1 283.2 32 223.9 32c-122.4 0-222 99.6-222 222 0 39.1 10.2 77.3 29.6 111L0 480l117.7-30.9c32.4 17.7 68.9 27 106.1 27h.1c122.3 0 224.1-99.6 224.1-222 0-59.3-25.2-115-67.1-157zm-157 341.6c-33.2 0-65.7-8.9-94-25.7l-6.7-4-69.8 18.3L72 359.2l-4.4-7c-18.5-29.4-28.2-63.3-28.2-98.2 0-101.7 82.8-184.5 184.6-184.5 49.3 0 95.6 19.2 130.4 54.1 34.8 34.9 56.2 81.2 56.1 130.5 0 101.8-84.9 184.6-186.6 184.6zm101.2-138.2c-5.5-2.8-32.8-16.2-37.9-18-5.1-1.9-8.8-2.8-12.5 2.8-3.7 5.6-14.3 18-17.6 21.8-3.2 3.7-6.5 4.2-12 1.4-32.6-16.3-54-29.1-75.5-66-5.7-9.8 5.7-9.1 16.3-30.3 1.8-3.7.9-6.9-.5-9.7-1.4-2.8-12.5-30.1-17.1-41.2-4.5-10.8-9.1-9.3-12.5-9.5-3.2-.2-6.9-.2-10.6-.2-3.7 0-9.7 1.4-14.8 6.9-5.1 5.6-19.4 19-19.4 46.3 0 27.3 19.9 53.7 22.6 57.4 2.8 3.7 39.1 59.7 94.8 83.8 35.2 15.2 49 16.5 66.6 13.9 10.7-1.6 32.8-13.4 37.4-26.4 4.6-13 4.6-24.1 3.2-26.4-1.3-2.5-5-3.9-10.5-6.6z"/></svg>
                                &nbsp;
                                    Paulina
                                    (0857-3078-1045)</a></li>
                            <li>
                                <a href="https://liff.line.me/1645278921-kWRPP32q/?accountId=994nxsfr5" target="_blank" rel="noopener">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width='16px' height='16px' fill='#fff'><path d="M311 196.8v81.3c0 2.1-1.6 3.7-3.7 3.7h-13c-1.3 0-2.4-.7-3-1.5l-37.3-50.3v48.2c0 2.1-1.6 3.7-3.7 3.7h-13c-2.1 0-3.7-1.6-3.7-3.7V196.9c0-2.1 1.6-3.7 3.7-3.7h12.9c1.1 0 2.4 .6 3 1.6l37.3 50.3V196.9c0-2.1 1.6-3.7 3.7-3.7h13c2.1-.1 3.8 1.6 3.8 3.5zm-93.7-3.7h-13c-2.1 0-3.7 1.6-3.7 3.7v81.3c0 2.1 1.6 3.7 3.7 3.7h13c2.1 0 3.7-1.6 3.7-3.7V196.8c0-1.9-1.6-3.7-3.7-3.7zm-31.4 68.1H150.3V196.8c0-2.1-1.6-3.7-3.7-3.7h-13c-2.1 0-3.7 1.6-3.7 3.7v81.3c0 1 .3 1.8 1 2.5c.7 .6 1.5 1 2.5 1h52.2c2.1 0 3.7-1.6 3.7-3.7v-13c0-1.9-1.6-3.7-3.5-3.7zm193.7-68.1H327.3c-1.9 0-3.7 1.6-3.7 3.7v81.3c0 1.9 1.6 3.7 3.7 3.7h52.2c2.1 0 3.7-1.6 3.7-3.7V265c0-2.1-1.6-3.7-3.7-3.7H344V247.7h35.5c2.1 0 3.7-1.6 3.7-3.7V230.9c0-2.1-1.6-3.7-3.7-3.7H344V213.5h35.5c2.1 0 3.7-1.6 3.7-3.7v-13c-.1-1.9-1.7-3.7-3.7-3.7zM512 93.4V419.4c-.1 51.2-42.1 92.7-93.4 92.6H92.6C41.4 511.9-.1 469.8 0 418.6V92.6C.1 41.4 42.2-.1 93.4 0H419.4c51.2 .1 92.7 42.1 92.6 93.4zM441.6 233.5c0-83.4-83.7-151.3-186.4-151.3s-186.4 67.9-186.4 151.3c0 74.7 66.3 137.4 155.9 149.3c21.8 4.7 19.3 12.7 14.4 42.1c-.8 4.7-3.8 18.4 16.1 10.1s107.3-63.2 146.5-108.2c27-29.7 39.9-59.8 39.9-93.1z"/></svg>
                                &nbsp;@994nxfsr
                                </a>
                            </li>
                            <li><a href="mailto:maniac.ubayaa@gmail.com" target="_blank" rel="noopener">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width='16px' height='16px' fill='#fff'><path d="M48 64C21.5 64 0 85.5 0 112c0 15.1 7.1 29.3 19.2 38.4L236.8 313.6c11.4 8.5 27 8.5 38.4 0L492.8 150.4c12.1-9.1 19.2-23.3 19.2-38.4c0-26.5-21.5-48-48-48H48zM0 176V384c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V176L294.4 339.2c-22.8 17.1-54 17.1-76.8 0L0 176z"/></svg>
                                &nbsp;
                                maniac.ubayaa@gmail.com</a>
                            </li>
                        </ul>
                    </div>
    
                    <p class="mt-2" style="padding-left: 80px">
                        <span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT &copy; MANIAC XII Comitee</span>
                    </p>
                </div>
            </footer>
            {{-- <div class="row text-center">
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
                </div>
            </div> --}}
        
    </section>
 <div class="row">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    @yield('script')
</body>
</html>