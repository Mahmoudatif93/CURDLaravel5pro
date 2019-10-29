<h1>Hello {{ $user['name'] }} </h1>
<p>Please click Link below verification your email {{ $user['email'] }}</p>
<a href="{{ url('/verification',$user->verification->token ) }}">Verify Email</a>