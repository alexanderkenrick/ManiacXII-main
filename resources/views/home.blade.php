@extends('layouts.mainweb')

@section('title')
    Home
@endsection

@section('style')
    <link rel="stylesheet" href="{{ asset('/mainweb/css/home.css') }}">
    <link rel="stylesheet" href="{{ asset('/mainweb/css/timeline.css') }}">
@endsection

@section('content')
<div class="wrapper" style="background: url('{{ asset('mainweb/img/background/bg_home.png') }}') top center / cover no-repeat;padding-top: 70px;z-index:1;">
    <section id="header" style=" ">
        <div class="container">
            <div class="row justify-content-center">
                <div class="about-text">
                    <div class="col-lg-10 mx-auto" id="header-text "style="text-align: center;">
                        <img src="{{ asset('../mainweb/img/logo/logo-header.png') }}" alt="" width="80%" class="logo-header">
                    </div>
                </div>
                <div class="row justify-content-center mt-5">
                    <div class="d-flex justify-content-center mt-4 hadiah text-center">WIN UP TO <br>IDR 100+ MILLION </div>
                    
                    @php
                        date_default_timezone_set("Asia/Jakarta");
                        $endDate = "5 August 2023";
                        $endDateTimestamp = strtotime($endDate);  
                    @endphp
                    @if (time() < $endDateTimestamp)
                        @if (!auth()->check())
                        <a href="{{ url('/register') }}" class="btn custom-btn custom-btn-bg mt-3">REGISTER NOW</a> 
                        @endif
                    @endif
                </div>
            </div>
        </div>
    </section>
    
    
    <section id="poster" class="mt-5 pt-5">
        <div class="container d-flex justify-content-center">
            <div class="cloud-container2">
                <img src="{{ asset('mainweb/img/ornament/awan2.png') }}" alt="" srcset="">
            </div>
            
            <div class="row justify-content-center w-100">
                <div class="col-xl-7 col-lg-9 col-md-9" style="position: relative">
                    <a href="{{ asset('mainweb/img/poster/poster.png') }}" target="blank" style=""><img src="{{ asset('mainweb/img/poster/poster-scroll.png') }}" alt="Scroll" width="100%; height:100%; object-fit: contain;z-index:2"></a>
                </div>
            </div>
            <div class="cloud-container">
                <img src="{{ asset('mainweb/img/ornament/awan1.png') }}" alt="" srcset="">
            </div>
        </div>
    </section>
    
    <section class="resume pt-5 d-lg-flex justify-content-center align-items-center" id="resume">
        <div class="container container-timeline">
            <h2 class="d-flex justify-content-center my-5 fs-1 mb-4 myTitle">TIMELINE</h2>
            <div class="row timeline-big justify-content-center mb-5">
                <div class="col-xl-10 col-lg-12">
                    <img src="{{ asset('mainweb/img/poster/Timeline.png') }}" alt="Timeline" width="100%">
                </div>
            </div>
            <div class="row row-content timeline-small mb-5">
                <div class="col-lg-12 col-md-12 col-sm-12 d-flex justify-content-center">
                    <div class="row">
                        <div class="timeline col-lg-12 col-md-12 col-sm-12">
                            <div class="timeline-wrapper">
                                <div class="timeline-yr">
                                    <span></span>
                                </div>
                                <div style="display: flex; flex-direction:column;">
                                    <div class="timeline-info">                         
                                        <small>7 Agustus 2023</small>
                                        <h4><span>Workshop</span></h4>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-wrapper">
                                <div class="timeline-yr">
                                    <span></span>
                                </div>
                                <div style="display: flex; flex-direction:column;">
                                    <div class="timeline-info">
                                        <small>9 Agustus 2023</small>
                                        <h4><span>Penyisihan</span></h4>
                                    </div>                  
                                </div>
                            </div>
                            <div class="timeline-wrapper">
                                <div class="timeline-yr">
                                    <span></span>
                                </div>
                                <div style="display: flex; flex-direction:column;">
                                    <div class="timeline-info">
                                        <small>12 September 2023</small>
                                        <h4><span>Final</span></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {{-- <div class="col-lg-6 col-md-6 col-sm-12 d-flex mt-3">
                           
                            <a href="{{ asset('mainweb/img/poster/poster.png') }}" target="blank"><img style="width:100%; height:100%; object-fit: contain;" src="{{asset('../mainweb/img/poster/poster.png')}}" alt="poster"></a>
                        </div> --}}
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- end timeline -->
    
    <div class="container mt-4 px-4 sm-px-5">
        <div class="butterfly-container">
            <img src="{{ asset('mainweb/img/ornament/kupu-kupu-bawah.png') }}" alt="" srcset="">
        </div>
        <div class="d-flex justify-content-center my-5 fs-1 myTitle">PRIZES</div>
        <div class="prize-container" style="margin-bottom: 50px">
            <div class="row px-2  mx-2 sm-mx-4 justify-content-around">
                <div class="col-md-4 mt-5 py-3 px-3 prize1">
                <div class="d-flex justify-content-center">
                    <span class="dot">
                        <img class= "crown" src="{{ asset('../mainweb/img/icon/juara1.png') }}" alt="Juara 1" width="100" id="juara1">
                    </span>
                </div>
                <div class="d-flex justify-content-center fs-3" style="color: #19376d"><b>Juara 1</b></div>
                <div class="d-flex justify-content-center fw-bolder fs-3 neon">Rp 5.000.000</div>
                <div class="text-center fs-5" style="color: #19376d">
                    Potongan USP sebesar 100%*
                </div>
                </div>
    
                <div class="col-md-4 mt-5 py-3 px-3 prize1">
                    <div class="d-flex justify-content-center">
                        <span class="dot">
                            <img class= "crown" src="{{ asset('../mainweb/img/icon/juara2.png') }}" alt="Juara 2" width="100" id="juara2">
                        </span>
                    </div>
                    <div class="d-flex justify-content-center fs-3" style="color: #19376d"><b>Juara 2</b></div>
                    <div class="d-flex justify-content-center fw-bolder fs-3 neon">Rp 3.500.000</div>
                    <div class="text-center fs-5" style="color: #19376d">
                        Potongan USP sebesar 50%*
                    </div>
                </div>
    
                <div class="col-md-4 mt-5 py-3 px-3 prize1">
                    <div class="d-flex justify-content-center">
                        <span class="dot">
                            <img class= "crown" src="{{ asset('../mainweb/img/icon/juara3.png') }}" alt="Juara 3" width="100" id="juara3">
                        </span>
                    </div>
                    <div class="d-flex justify-content-center fs-3" style="color: #19376d"><b>Juara 3</b></div>
                    <div class="d-flex justify-content-center fw-bolder fs-3 neon">Rp 1.500.000</div>
                    <div class="text-center fs-5" style="color: #19376d">
                        Potongan USP sebesar 25%*
                    </div>
                </div>
    
                {{-- keterangan tambahan --}}
                <div>
                    <div>
                    <p class="my-3 fs-6" style="color: #4f200d">
                        *) Setiap pemenang akan mendapatkan <strong>Piala + Sertifikat</strong>
                    </p>
                </div>
    
                <div class="mb-3 pt-3 px-4 d-flex justify-content-center fs-5 note1" style="color: #FFFFFF">
                    <p>
                        <strong>*) USP berlaku jika </strong> masuk Jurusan Teknik Informatika <strong>Program Multimedia Universitas Surabaya</strong>
                    </p>
                </div>
    
                <div>
                    <p class="mb-5 fs-6" style="color: #4f200d">
                        <strong>1 Tim terdiri atas 3 orang dari SMA/SMK yang sama</strong>
                    </p>
                </div>
                </div>
            </div>
        </div>
    
        <div class="container">
            <div class="d-flex justify-content-center fs-1 myTitle text-center" style="">JOIN US NOW</div>
            <div class="d-flex justify-content-center">
                <div class="video">
                    <iframe width="500" height="350" src="https://www.youtube.com/embed/pQvMYG4wigY" title="After Movie Maniac XI" 
                        class="embed-responsive-item" allowfullscreen>
                    </iframe>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@section('script')
    
@endsection