//Creating streams
//READING STREAMS
/*
var fs = require('fs');

var myReadStream = fs.createReadStream(__dirname + '/nflteams.JSON', 'utf8')

myReadStream.on('data', function(chunk){
    console.log('chunk received');
});
*/

/*
//WRITING STREAMS
var fs = require('fs');

var myReadStream = fs.createReadStream(__dirname + '/nflteams.JSON', 'utf8');
var myWriteStream = fs.createWriteStream(__dirname + '/newteamfile.JSON');

myReadStream.on('data', function(chunk){
    console.log('chunk received');
    myWriteStream.write(chunk);
});
*/

/*
//Pipes help us take data from a read stream and pipe it into a write stream
var fs = require('fs');

var myReadStream = fs.createReadStream(__dirname + '/nflteams.JSON', 'utf8');
var myWriteStream = fs.createWriteStream(__dirname + '/newteamfile.JSON');

//pipe our readstream into a writeable stream
myReadStream.pipe(myWriteStream);

//USING PIPES to send data to user
var http = require('http');
var server = http.createServer(function(request, response){
    console.log("server was created");
    response.writeHead(200, {'content-type': 'text/plain' })
    var myReadStream = fs.createReadStream(__dirname + '/nflteams.JSON', 'utf8');
    myReadStream.pipe(response);//sends the data straight to the user
});
server.listen(8000);
console.log("listening to localhost 8000");
//http://localhost8000 is filled with the JSON data
*/

/*
//SERVING HTML
var fs = require('fs');

var myReadStream = fs.createReadStream(__dirname + '/nflteams.JSON', 'utf8');
var myWriteStream = fs.createWriteStream(__dirname + '/newteamfile.JSON');

//pipe our readstream into a writeable stream
myReadStream.pipe(myWriteStream);

//using pipes to send data to user
var http = require('http');
var server = http.createServer(function(request, response){
    console.log("server was created");
    response.writeHead(200, {'content-type': 'text/html' })
    var myReadStream = fs.createReadStream(__dirname + '/node.html', 'utf8');
    myReadStream.pipe(response);//sends the data straight to the user
});
server.listen(8000);
console.log("listening to localhost 8000");
*/


/*
//SERVING JSON
var http = require('http');
var server = http.createServer(function(req, res){
    res.writeHead(200, {'content-type': 'application/json'});
var dolphins = {
      name: "Miami Dolphins",
      conference: "AFC",
      division: "East",
      city: "Miami Gardens",
      state: "FL",
      stadium: "Sun Life Stadium"
    };
    res.end(JSON.stringify(dolphins));
});
server.listen(8000);
console.log("serving JSON to port 8000");
*/


/*
//Basic Routing
var http = require('http');
var fs = require('fs');
var server = http.createServer(function(request, response){
    console.log("server was created" + request.url);
    if(request.url === '/home' || request.url === '/'){
    response.writeHead(200, {'content-type': 'text/html' });
    fs.createReadStream(__dirname + '/node.html').pipe(response);
    } else if(request.url === '/dec'){
    response.writeHead(200, {'content-type': 'text/html' });
    fs.createReadStream(__dirname + '/node-december.html').pipe(response);
    } else if(request.url === '/api/nfl'){
        var dolphins = [{name: "Miami Dolphins", conference: "AFC", division: "East", city: "Miami Gardens"}];
        response.writeHead(200, {'content-type': 'application/json'});
        response.end(JSON.stringify(dolphins));
    }
    else {
    response.writeHead(200, {'content-type': 'text/html' });
    fs.createReadStream(__dirname + '/node-404.html').pipe(response);
    }
});

server.listen(8000);
console.log("listening to localhost 8000");
*/

//Using Express to do the same thing
var express = require('express');

var app = express();

app.set('view engine', 'ejs');

//using the GET http method
app.get('/', function(request, response){
    response.send('this is the homepage');
});

app.get('/contact', function(request, response){
    response.send('this is the contact page');
});

app.get('/dec', function(request, response){
    response.sendFile(__dirname + '/node-december.html');
});
//for a profile page
app.get('/profile/:name', function(request, response){
    response.render('profile', {person: request.params.name});
});


app.listen(8000);

