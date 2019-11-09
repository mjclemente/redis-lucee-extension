<!doctype html>
<html lang="en" class="h-100">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <title>Redis Lucee Extension Example</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>

<body class="d-flex flex-column h-100">
  <!-- Begin page content -->
  <div class="jumbotron">
    <div class="container">
      <h1 class="display-3">Redis Lucee Extension Example</h1>
      <p>This is an example of using the Lucee CFML with an external session and object cache, stored in Redis. It's built using the CommandBox Docker image, along with the Ortus Redis Extension for Lucee.</p>
      <p><a class="btn btn-primary btn-lg" href="#" role="button">Docs and code on Github &raquo;</a></p>
    </div>
  </div>
  <main role="main" class="flex-shrink-0">
    <div class="container">
      <h1 class="mt-5">Session</h1>
      <p class="lead">Below is a dump of the session data. It is stored in a Redis cache.</p>
      <cfdump var="#session#">
    </div>
    <div class="container">
      <h1 class="mt-5">Object Cache</h1>
      <p class="lead">Below is an array of the keys stored in the object cache, also stored in a Redis cache.</p>
      <cfdump var="#cacheGetAllIds( cacheName = "object" )#">
    </div>
  </main>

</body>

</html>