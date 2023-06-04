@extends('layouts.mainweb')

@section('title')
    Dashboard
@endsection

@section('style')
    <link rel="stylesheet" href="{{ asset('../mainweb/css/dashboard.css') }}">
@endsection

@section('content')

<style>
    .cloud1{
        width: 9rem;
        position: relative;
        left: 35rem;
        z-index: -1;
        top: 5rem;
        transform: scaleX(-1);
        filter: drop-shadow(0 0 2px #a36948);
    }
    .cloud2{
        width: 20rem;
        position: absolute;
        left: -5rem;
        bottom: -3rem;
        transform: scaleX(-1);
        filter: drop-shadow(0 0 5px #f6f1e9);    }
    .cloud3{
        width: 20rem;
        position: absolute;
        right: 1rem;
        bottom: 5rem;
        animation: cloudAnimation 4s ease-in-out 1s infinite;
        filter: drop-shadow(0 0 3px #f6f1e9);
    }
    .cloud-dashboard{
        width: 18.75rem;
        position: absolute;
        left: -13rem;
        top: -5rem;
        filter: drop-shadow(0 0 5px #a36948);
        z-index: -1;
        transform: scaleX(-1);        
    }
    .moon{
        position: absolute; 
        bottom: -17rem; 
        left: 7rem; 
        width: 7rem;
        z-index: -2;
    }
    .star1{
        position: absolute;
        right: 5rem;
        top: 7rem;
    }
    .star2{
        position: absolute;
        left: 7rem;
        top: 31.25rem;
    }
    .star3{
        position: absolute;
        right: 30rem;
        bottom: -10rem;
    }
    .star{
        animation: starAnimation 5s ease-in-out 1s infinite;
    }
    .fairytale1{
        width: 2rem;
        position: absolute; 
        top: 25rem;
        right: 5rem;
    }
    .fairytale2{
        position: absolute;
        bottom: -20rem;
        transform: scaleX(-1);
        left: 11rem;
        width: 2rem;
        rotate: -30deg;
        z-index: -1;
    }
    .branch{
        display: block; 
        margin-left: auto; 
        margin-right: -200px;
        margin-top: 5rem;
    }
    /* animation */
    @keyframes starAnimation {
        0%,100%{
            filter: drop-shadow(0 0 8px #ffd93d);
        }
        50%{
            filter: drop-shadow(0 0 1px #ffd93d);
        }
    }
    @keyframes cloudAnimation {
        0%,100%{
            transform: translate(0,0);
        }
        50%{
            transform: translate(3px,0);
        }
    }
    /* Media Query */
    @media screen and (max-width: 920px)  {
        .star1{
            right: 2rem;
        }
        .star2{
            left: 2rem;
            top: 40rem;
        }
        .star3{
            bottom: -45rem;
            z-index: 2;
            right: 15rem;
        }
        .fairytale1{
            right: 1.5rem;
        }
        .fairytale2{
            bottom: -51rem;
            left: 9rem;
            z-index: 1;
        }
        .cloud2{
            bottom: -40rem;
            width: 14rem;
            left: -2rem;
        }
        .cloud3{
            right: 0;
            top: 50rem;
            width: 10rem;
        }
        .cloud-dashboard{
            width: 15rem;
            left: -9rem;
            top: 1rem;
        }
        .moon{
            bottom: -10rem;
            width: 5rem;
        }
    }
    @media screen and (max-width: 768px){
        .fairytale1{
            right: 1rem;
        }
        .star1{
            width: 1.5rem;
            top: 6rem;
        }
        .star2{
            left: 0.5rem;
            width: 1.5rem;
        }
        .star3{
            width: 1.5rem;
            bottom: -15rem;
        }
        .fairytale2{
            bottom: -19rem;
            left: 9rem;
        }
        .cloud2{
            bottom: -8rem;
        }
    }
    @media screen and (max-width: 511px){
        .cloud-dashboard{
            top: -3rem;
        }
        .fairytale1{
            right: 0;
        }
        .star1{
            width: 1rem;
            top: 6rem;
            right: 1rem;
        }
        .star2{
            left: 0.5rem;
            width: 1rem;
        }
        .star3{
            width: 1rem;
            right: 4rem;
            bottom: -50rem;
        }
        .fairytale2{
            bottom: -52rem;
            left: 8rem;
        }
        .cloud2{
            bottom: -42rem;
        }
        .cloud3{
            right: 0;
            bottom: -10rem;
            width: 9rem;
        }
    }
    @media screen and (max-width : 400px) {
        .star2{
            right: -1rem;
        }
        .cloud2{
            bottom:-42rem;
        }
        .cloud3{
            width: 7rem;
            bottom: -10rem;
        }
        .fairytale2{
            bottom: -51rem;
        }
    }

</style>

    <section id="dashboard" class="overflow-hidden">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="" class="star1 star">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="" class="star2 star">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 5.png') }}" alt="" class="star3 star">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 4.png') }}" alt="" class="fairytale1">
    <div style="width: 90%; margin: 0 auto;">
    <div class="position-relative">
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 12.png') }}" alt="" class="cloud-dashboard">
        <div class="container dashboard-container">
            <div class="row">
                <h3 class="mt-5"><strong>Selamat Datang, Tim {{ $team->team_name }}</strong></h3>
            </div>
            <div class="row mt-3">
                <div class="col-lg-12 text-center mb-3">
                    <h3 class="mt-3">Anggota</h3>
                </div>
            </div>
            <div>
                @if(session()->has("success"))
                  <div class="alert alert-success alert-dismissible fade show" role="alert">
                     <strong>{{ session()->get("success") }}</strong>
                     <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  </div>
               @endif
               @if(session()->has("error"))
                  <div class="alert alert-danger alert-dismissible fade show" role="alert">
                     <strong>{{ session()->get("error") }}</strong>
                     <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  </div>
               @endif
            </div>
            <form action={{ url('updateteam/'.$team->id) }} method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                    <div class="row mt-2 justify-content-evenly">
                    @foreach ($team->teamDetail as $item)
                    <input type="hidden" name="{{ 'idAnggota'.$loop->index }}" value="{{ $item->id }}">
                    <div class="col-lg-4 mb-3 daftar-anggota">
                        <div class="row mb-3">
                            <a href="{{ asset('files/'.$item->image) }}" class="btn myBtn" target="_blank" style="width: 80%; margin: 0 auto;">Check Me</a>
                        </div>
                        <div class="row justify-content-between">
                            <div class="col-5">Nama</div>
                            <div class="col-7">{{ $item->name }}</div>
                        </div>
                        <div class="row justify-content-between">
                            <div class="col-5">No HP</div>
                            <div class="col-7">{{ $item->phone_number }}</div>
                        </div>
                        <div class="row justify-content-between">
                            <div class="col-5">Email</div>
                            <div class="col-7">{{ $item->email }}</div>
                        </div>
                        @if ($team->status != 'accepted')
                        <div class="row mt-3">
                            <label class="text-center label-ganti-kp">Ganti Kartu Pelajar</label>
                            <input type="file" class="myInputFile @error('imgAnggota'.$loop->index) is-invalid @enderror" accept="application/pdf,image/*" name="{{ 'imgAnggota'.$loop->index }}" id="imgAnggota2">
                        </div>
                        @error('imgAnggota'.$loop->index)
                        <div class="invalid-feedback text-center">
                           {{ $message }}
                        </div>
                      @enderror
                        @endif
                    </div>
                    @endforeach
                </div>
               
                <div class="row mt-3">
                    <div class="col-lg-12 text-center d-flex flex-column justify-content-center align-items-center">
                        <h3>Status</h3>
                        @if ($team->status != 'accepted')
                        <h4 class="status ditolak p-2 mt-3" style="font-weight: 700; text-transform: uppercase;">{{ $team->status }}</h4>
                        <p class="keterangan">{{ $team->message }}</p>
                        <button type="submit" class="btn myBtn dark">Simpan Perubahan</button>
                        @else
                        <h4 class="status diterima" style="font-weight: 700; text-transform: uppercase;">{{ $team->status }}</h4>
                        @endif
                    </div>
                </div>
            </form>
        </div>
        <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 3.png') }}" alt="" class="moon">
    </div>
    </div>
    <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 16.png') }}" alt="" class="cloud2">
    <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 7.png') }}" alt="" class="cloud3">
    <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 4.png') }}" alt="" class="fairytale2">
    <img src="{{ asset('../mainweb/img/maniacxii-asset/Asset 10.png') }}" alt="" class="branch">
    </section>

@endsection