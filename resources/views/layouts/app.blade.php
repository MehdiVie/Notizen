<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
     crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <title>Laravel Notizbuch App</title>
</head>
<body class="container mb-10 mt-30 max-w-lg">

    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
          <a class="navbar-brand" style="margin-top: -30px;" href="/notizbuch">
            <img src="/images/notes.png" width="60" alt="All Notes">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
          data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" 
          aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
              <li class="nav-item btn btn-primary mx-3 mt-3" style="width: 100px;  height:50px;">
                <a class="nav-link text-light fw-bold " style="margin-top: -8px;"
                  href="/notiz/create">Add</a>
              </li>
              <li class="nav-item btn btn-primary mx-3 mt-3" style="width: 100px; height:50px; ">
                <a class="nav-link text-light fw-bold " style="margin-top: -8px;"
                  href="/live_search">Search</a>
              </li>
                @auth
                <li class="nav-item me-1 fw-bold" style=" margin-top: 25px;" >
                  Welcome {{ auth()->user()->name ?? 'Anynomus' }} !
                </li>
                <li class="nav-item ms-1" style="margin-top: 1.20rem;" >
                  <form action="{{ route('auth.destroy') }}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button class="text-light fw-bold btn btn-success" style=" margin-top: 5px;">Logout</button>
                  </form>
                </li>
                  @else
                  <li class="nav-item me-1 fw-bold " style=" margin-top: 25px;"  >
                    Welcome Guest !
                  </li>
                  <li class="nav-item ms-1" style="margin-top: 1.20rem;" >
                    <a  href="{{route('auth.create')}}">
                      <button class="text-light fw-bold btn btn-success" style=" margin-top: 5px;">Login</button>
                    </a>
                  </li>
                @endauth
                
            </ul>
  
          </div>
        </div>
      </nav>
  @if (session()->has('success'))
      <h4 class="text-primary">{{session('success')}}</h4>
  @endif
  @if (session()->has('error'))
      <h4 class="text-danger">{{session('error')}}</h4>
@endif
  <br>
  <div>
    <h2  style="color:rgb(1, 22, 1)">@yield('title')</h2>
    
    
        
        @yield('content')
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script>
      $(document).ready(function(){
      
       fetch_customer_data();
      
       function fetch_customer_data(query = '')
       {
        $.ajax({
         url:"{{ route('live_search.action') }}",
         method:'GET',
         data:{query:query},
         dataType:'json',
         success:function(data)
         {
          $('tbody').html(data.table_data);
          $('#total_records').text(data.total_data);
         }
        })
       }
      
       $(document).on('keyup', '#search', function(){
        var query = $(this).val();
        fetch_customer_data(query);
       });
      });
      </script>
  </body>
</html>