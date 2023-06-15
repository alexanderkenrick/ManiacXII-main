<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        *{
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        table,tr,td{
            border: 0;
            border-spacing: 0;
        }

        table{
            width: 100%;
            color: #ffffff;
        }
        thead{
            background: #19376d;
            margin: 0;
        }
        tbody{
            background: #0b2447;
            margin: 0;
        }

        td{
            padding: 12px 24px;
            height: auto;
        }
        h3{
            margin: 0 !important;
        }
        a{
            color: #ffffff !important;
        }

        li{
           
        }
        ul{
            padding-left:24px;
        }
    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th><h2>Congratulation {{$team}} !</h2></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td width=100%>Haiii <b>{{$team}}</b>, kami dari panitia Maniac XII ingin menginfokan bahwa tim kalian terdaftar menjadi peserta di Maniac XII. Selamat ya <b>{{$team}}</b></td>
            </tr>
            <tr>
                <td width=100%>Untuk informasi lebih lanjut kalian dapat menghubungi CP kami dibawah ini yaaa!</td>
            </tr>
            <tr>
                <td width=100% style="padding-top: 0;">
                    <ul>
                        <li><a href="https://wa.me/+6285730781045" target="_blank" rel="noopener">Paulina - 085730781045</a></li>    
                        <li><a href="https://wa.me/+6281260644333" target="_blank" rel="noopener">Richard - 081260644333</a></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td width=100%>Kalian juga bisa kepoin Instagram Maniac yaa! <br> <a href="https://www.instagram.com/maniac_ubaya/?hl=en" target="_blank" rel="noopener">@mania_cubaya</td>
            </tr>
            <tr>
                <td>
                    <span style="color: #f9ad16">Welcome to Wonderland : Where Anything is Possible</span>
                </td>
            </tr>
        </tbody>
    </table>
</body>
</html>
