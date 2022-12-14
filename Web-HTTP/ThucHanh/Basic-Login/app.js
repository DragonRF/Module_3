const http = require('http')
http.createServer(function (req, res){
    let txt = ''
    if (req.url === '/login'){
        txt = 'Login Success'
    } else {
        txt = 'Login Fail'
    }
    res.end(txt)
}).listen(8080,'localhost')