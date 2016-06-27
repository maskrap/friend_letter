require('sinatra')
require('sinatra/reloader')

get('/hello') do
  "<!DOCTYPE html>
  <html>
  <head>
    <title>Sup Broski!</title>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
  </head>
  <body>
    <h1>Sup, Broski!</h1>
    <p>Dear Friend,</p>
    <p>Hello, it's me. I was wondering if after all these years you'd like to meet. To go over everything. They say that time's supposed to heal ya. But I ain't done much healing.
    Hello, can you hear me?. I'm in California dreaming about who we used to be. When we were younger and free. I've forgotten how it felt before the world fell at our feet</p>
    <p>Looking forward to seeing you soon. I'll bring you back a happy. </p>
    <p>Cheers,</p>
    <p>Sam</p>
    <p><a href='/favorite_photos' >P.S. Check out my favorite travel photos here.</a></p>

  </body>
  </html>"
end

get('/favorite_photos') do
 "<!DOCTYPE html>
  <html>
  <head>
    <title>Hello Friend!</title>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
  </head>
  <body>
    <h1>Favorite Traveling Photos</h1>
      <ul>
        <li><img src='/img/canyon.jpg' alt='A photo of a canyon.'/></li>
        <li><img src='/img/city.jpg' alt='A photo of a bridge.'/></li>
        <li><img src='/img/mountains.jpg' alt='A photo of a mountain.'/></li>
      </ul>
  </body>
  </html>"
end

get('/') do
  @friend = "Jessica"
  erb(:letter)
end

get('/australia') do
  @sender = "Jane"
  @recipient = "Jessica"
  erb(:australia)
end

get('/greeting_form') do
  erb(:form)
end

get('/greeting_card') do
  @sender = params.fetch('sender')
  @recipient = params.fetch('recipient')
  erb(:greeting_card)
end
