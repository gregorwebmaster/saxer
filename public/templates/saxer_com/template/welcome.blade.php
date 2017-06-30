<!doctype html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="http://saxer.com/templates/saxer_com/template/">



    <title>Saxer Webservices project</title>

    <script>
        window.appCustom = {
            mysite: {{config('custom.project.id')}},
            server: '{{config('app.url')}}'
        }
    </script>

    <!-- include css -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
    <link href="assets/main.css" rel="stylesheet" type="text/css">
    <script src="assets/main.js" type="text/javascript" async></script>
    <script src="assets/openApi.js" type="text/javascript" async></script>
</head>
<body>

<div class="flex-center position-ref full-height">
    <div class="content">
        <div class="title m-b-md">
            Saxer Webservices project
        </div>

        <div class="links">
            <a href="https://www.grzegorzjaworski.de">Über Autor</a>
            <a href="https://www.grzegorzjaworski.de">Mehr über die Project</a>
        </div>
    </div>
</div>
</body>
</html>
