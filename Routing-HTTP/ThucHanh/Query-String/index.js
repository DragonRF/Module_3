var http = require('http')
var url = require('url')
var StringDecoder = require('string_decoder').StringDecoder;

var server = http.createServer(function (req, res){
    var parseUrl = url.parse(req.url,true);
    var queryStringObject = parseUrl.query

    res.end('Hello Node Js');
    console.log(queryStringObject)
})
server.listen(3000,function (){
    console.log('The server is listening on port 3000 now.')
})