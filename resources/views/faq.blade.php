@extends('layouts.mainweb')

@section('title')
    FAQ
@endsection

@section('style')
    <link rel="stylesheet" href="{{ asset('/mainweb/css/faq.css') }}">
@endsection

@section('content')
    <div class="background">
        <h2 class="d-flex justify-content-center fs-1 mb-4 myTitle text-align-center padding-title" style="margin-top:86px">
            FREQUENTLY ASKED
            QUESTIONS</h2>
        <div class="container mt-5" style="padding-bottom: 60px">
            <div class="accordion" id="accordionPanelsStayOpenExample">
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true"
                            aria-controls="collapseOne">
                            Apa itu Maniac XII?
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            <p>
                                <strong>MANIAC (Multimedia and Interactive Art Competition)</strong> adalah lomba berbasis
                                multimedia untuk anak SMA/K sederajat yang mencakup <i>rally games, game concept design</i>,
                                dan
                                <i>game asset design</i>, yang diselenggarakan oleh jurusan Teknik Informatika Program
                                Multimedia Universitas Surabaya.
                            </p>
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                            aria-controls="collapseTwo">
                            <p style="margin-bottom: 0;">Apakah Maniac XII akan diadakan secara <i>offline</i> atau
                                <i>online</i>?
                            </p>
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Seluruh rangkaian acara MANIAC XII akan diadakan secara offline di Universitas Surabaya.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false"
                            aria-controls="collapseThree">
                            Apa saja tahap dalam Maniac XII?
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            <ul>
                                <li><i>Workshop & Technical Meeting</i> Babak Penyisihan</li>
                                <li>Babak Penyisihan & <i> Technical Meeting </i> Babak Final</li>
                                <li>Pengerjaan dan <i>Submission</i> Final</li>
                                <li>Babak Final</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="headingFour">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false"
                            aria-controls="collapseFour">
                            Apakah Maniac XII bersifat akademis (seperti mengerjakan soal-soal pelajaran)?
                        </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Tidak, Maniac XII berfokus pada bidang multimedia. Bidang akademis hanya akan diuji di beberapa
                            pos
                            pada <i>rally games</i>.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="headingFive">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false"
                            aria-controls="collapseFive">
                            Apakah bidang lomba yang diujikan hanya tentang Multimedia?
                        </button>
                    </h2>
                    <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            MANIAC hanya berfokus pada 2 bidang Multimedia, yaitu <i>Game Concept Design</i> dan <i>Game
                                Asset
                                Design</i>.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="headingSix">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false"
                            aria-controls="collapseSix">
                            Apakah akan ada pelatihan sebelum pelaksanaan acara?
                        </button>
                    </h2>
                    <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Ya, akan ada <i>Workshop Game Concept & Asset Design</i> pada tanggal 7 Agustus 2023 untuk
                            membekali
                            peserta dengan pengetahuan yang dapat digunakan dalam tahap pengerjaan final.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="headingSeven">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false"
                            aria-controls="collapseSeven">
                            Software apa yang digunakan selama lomba?
                        </button>
                    </h2>
                    <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Untuk pengerjaan final, software yang digunakan adalah bebas.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading8">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse8" aria-expanded="false"
                            aria-controls="collapse8">
                            Bagaimana cara mendaftar menjadi peserta Maniac XII?
                        </button>
                    </h2>
                    <div id="collapse8" class="accordion-collapse collapse" aria-labelledby="heading8"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Pendaftaran dilakukan secara online dengan mengisi form pendaftaran yang tersedia di
                            <i>website</i> <a href="https://maniacubaya.com">maniacubaya.com</a>
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading9">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse9" aria-expanded="false"
                            aria-controls="collapse9">
                            Bagaimana timeline lomba Maniac XII?
                        </button>
                    </h2>
                    <div id="collapse9" class="accordion-collapse collapse" aria-labelledby="heading9"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            <ul>
                                <li><i>Workshop & Technical Meeting</i> Babak Penyisihan (7 Agustus 2023)</li>
                                <li>Babak Penyisihan & <i> Technical Meeting </i> Babak Final (9 Agustus 2023)</li>
                                <li>Pengerjaan dan <i>Submission</i> Final (10-11 Agustus 2023)</li>
                                <li>Babak Final (12 Agustus 2023)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading10">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse10" aria-expanded="false"
                            aria-controls="collapse10">
                            <p style="margin-bottom:0;">
                                Apakah <i> workshop </i>diwajibkan bagi semua peserta lomba Maniac XII?
                            </p>
                        </button>
                    </h2>
                    <div id="collapse10" class="accordion-collapse collapse" aria-labelledby="heading10"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Ya, diwajibkan agar peserta memiliki pembekalan yang cukup untuk pengerjaan final serta setelah
                            <i>workshop</i> akan diadakan <i>technical meetingx</i> untuk babak penyisihan. Selain itu
                            <i>Workshop</i> juga akan
                            terbuka untuk umum secara berbayar.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading11">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse11" aria-expanded="false"
                            aria-controls="collapse11">
                            Berapakah biaya pendaftaran untuk Maniac XII?
                        </button>
                    </h2>
                    <div id="collapse11" class="accordion-collapse collapse" aria-labelledby="heading11"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Pendaftaran untuk mengikuti lomba tidak dikenakan biaya (GRATIS)<br>
                            Pendaftaran <i>workshop</i> untuk peserta tidak dikenakan biaya (GRATIS)<br>
                            Pendaftaran <i>workshop</i> untuk umum dikenakan biaya sebesar Rp. 25.000
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading12">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse12" aria-expanded="false"
                            aria-controls="collapse12">
                            Apakah terdapat batasan jumlah tim yang mendaftar (dari tiap sekolah)?
                        </button>
                    </h2>
                    <div id="collapse12" class="accordion-collapse collapse" aria-labelledby="heading12"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Tidak ada.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading13">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse13" aria-expanded="false"
                            aria-controls="collapse13">
                            Berapa jumlah orang dalam satu tim ?
                        </button>
                    </h2>
                    <div id="collapse13" class="accordion-collapse collapse" aria-labelledby="heading13"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            3 orang dari sekolah yang sama.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading14">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse14" aria-expanded="false"
                            aria-controls="collapse14">
                            Dimana saya dapat memperoleh informasi terkait Maniac XII?
                        </button>
                    </h2>
                    <div id="collapse14" class="accordion-collapse collapse" aria-labelledby="heading14"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            <ul>
                                <li>Website: maniacubaya.com </li>
                                <li>IG: maniac_ubaya</li>
                                <li>OA Line: @994nxsfr</li>
                                <li>Email: maniac.ubayaa@gmail.com</li>
                                <li>Richard N W (081260644333), Paulin (085730781045)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading15">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse15" aria-expanded="false"
                            aria-controls="collapse15">
                            Dimana saya dapat melihat kisi-kisi perlombaan?
                        </button>
                    </h2>
                    <div id="collapse15" class="accordion-collapse collapse" aria-labelledby="heading15"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Semua informasi mengenai lomba akan diinfokan melalui Instagram Maniac XII.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading16">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse16" aria-expanded="false"
                            aria-controls="collapse16">
                            <p style="margin-bottom: 0;">Apakah wajib mengikuti <i>Technical Meeting</i>?</p>
                        </button>
                    </h2>
                    <div id="collapse16" class="accordion-collapse collapse" aria-labelledby="heading16"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Setiap anggota tim wajib mengikuti <i>Technical Meeting</i>.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading17">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse17" aria-expanded="false"
                            aria-controls="collapse17">
                            Batas pendaftaran Maniac XII hingga kapan?
                        </button>
                    </h2>
                    <div id="collapse17" class="accordion-collapse collapse" aria-labelledby="heading17"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            22 Mei - 29 Juli 2023.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading18">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse18" aria-expanded="false"
                            aria-controls="collapse18">
                            Apa saja yang dilombakan pada babak utama penyisihan dan final?
                        </button>
                    </h2>
                    <div id="collapse18" class="accordion-collapse collapse" aria-labelledby="heading18"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            <ul>
                                <li>Penyisihan: <i>Rally games</i> dan Game Besar </li>
                                <li>Final: <i>Game Concept Design</i> dan <i>Game Asset Design</i></li>
                            </ul>
                            Selengkapnya dapat dilihat <a href="https://maniacubaya.com/competition">di sini</a>
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading19">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse19" aria-expanded="false"
                            aria-controls="collapse19">
                            Apakah kelas 12 boleh mengikuti Maniac XII?
                        </button>
                    </h2>
                    <div id="collapse19" class="accordion-collapse collapse" aria-labelledby="heading19"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Untuk kelas 12 angkatan lulus Tahun Ajaran 2022/2023 tidak diperbolehkan,
                            sedangkan untuk angkatan yang naik ke kelas 12 pada Tahun Ajaran 2023/2024 diperbolehkan,
                            asalkan mendapat izin dari sekolah dan memiliki bukti status kesiswaan.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading20">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse20" aria-expanded="false"
                            aria-controls="collapse20">
                            Apakah diperbolehkan jika teman satu berbeda angkatan?
                        </button>
                    </h2>
                    <div id="collapse20" class="accordion-collapse collapse" aria-labelledby="heading20"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Diperbolehkan, dengan syarat tetap berada di jenjang yang sama (SMA/K sederajat), dan untuk
                            kelas 12
                            mengikuti ketentuan pada pertanyaan sebelumnya.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading21">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse21" aria-expanded="false"
                            aria-controls="collapse21">
                            Apakah diperbolehkan jika ingin menggantikan rekan satu tim jika mendadak tidak bisa mengikuti
                            Maniac XII?
                        </button>
                    </h2>
                    <div id="collapse21" class="accordion-collapse collapse" aria-labelledby="heading21"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Diperbolehkan, namun ada batasan waktu, yaitu 2 minggu sebelum diadakannya <i>Technical
                                Meeting</i>
                            Babak Penyisihan.
                        </div>
                    </div>
                </div>
                <br>
                <div class="accordion-item faq-radialGradient">
                    <h2 class="accordion-header" id="heading22">
                        <button class="accordion-button collapsed color-title-faq faq-radialGradient-title" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse22" aria-expanded="false"
                            aria-controls="collapse22">
                            Apa yang akan terjadi apabila rekan satu tim ada yang mendadak tidak dapat mengikuti MANIAC XII?
                            Apakah mengurangi penilaian?
                        </button>
                    </h2>
                    <div id="collapse22" class="accordion-collapse collapse" aria-labelledby="heading22"
                        data-bs-parent="#accordionExample">
                        <div class="accordion-body color-inside-faq faq-radialGradient-inside">
                            Tidak ada pengurangan nilai, anggota tim yang tersisa dapat tetap mengikuti rangakaian acara
                            MANIAC XII
                            dengan catatan ada beberapa <i>rally games</i> yang tidak dapat dimainkan dan anggota tim yang
                            tidak
                            hadir tidak dapat
                            memperoleh sertifikat.
                        </div>
                    </div>
                </div>
                <br>
            </div>
        </div>
    </div>
@endsection
