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
    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th><h2>Pendaftaran Maniac XII</h2></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td width=100%><h3>Selamat datang {{$nama}} di Maniac XII!!!</h3></td>
            </tr>
            <tr>
                <td width=100%>Anda terdaftar dalam tim <b>{{$team}}</b></td>
            </tr>
            <tr>
                <td width=100%>Untuk ketua tim dimohon untuk menghubungi nomor WA berikut: <a href="https://wa.me/+6285730781045" target="_blank" rel="noopener">085730781045 (Paulina)</a></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
